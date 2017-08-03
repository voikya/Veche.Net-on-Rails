module Lexicons
  module LexiconEntry
    def self.included(base)
      base.extend(ClassMethods)
    end

    module ClassMethods
      attr_reader :formatters, :fields

      def lexicon
        Lexicon.find_by_language(table_name)
      end

      # Array of fields that are included when doing a search over "any" field
      def scopable_fields
        raise NotImplementedError
      end

      # Default dataset to be used when searching. Should join in any values needed
      # for other tables (e.g., part of speech)
      def search_dataset
        self.order(indexed_column)
      end

      # Hash structure defining the type and ordering of all fields, used by the front end
      # for defining views
      def structure_definition
        formatters.map do |formatter|
          {
            name: formatter[:name].to_s.dasherize,
            type: formatter[:opts][:formatter].name.split('::').last.gsub('Formatter', ''),
            meta: json_metadata_for(formatter[:field])
          }
        end
      end

      # Register a field and assign it a formatter class, while creating a serializer
      # for that field on the lexicon entry class. Call this method for all
      # presentable fields.
      def field(name, opts)
        @formatters ||= []
        @formatters << {:field => name, :name => opts[:name] || name, :opts => opts}
        @fields ||= []
        @fields << (opts[:name] || name)

        if opts[:reader] && opts[:writer]
          # Need to handle serialization/deserialization manually
          reader = instance_method(opts[:reader])
          writer = instance_method(opts[:writer])

          define_method name.to_sym do
            formatter = opts[:formatter].new(reader.bind(self).call, :class => opts[:class])
            instance_variable_set :"@#{name}", formatter
          end

          define_method :"#{name}=" do |value|
            formatter = opts[:formatter].new(reader.bind(self).call, :class => opts[:class])
            formatter.set(value)
            instance_variable_set :"@#{name}", formatter
          end

          after_save do
            formatter = instance_variable_get :"@#{name}"
            if formatter
              data = formatter.dump
            end
            writer.bind(self).call(data)
          end
        elsif opts[:name]
          # Simple aliases suffice
          define_method :"#{opts[:name]}=" do |value|
            send(:"#{name}=", value)
          end

          define_method :"#{opts[:name]}" do
            send(name.to_sym)
          end

          serialize name, opts[:formatter]
        else
          # Use Rails serializer
          serialize name, opts[:formatter]
        end
      end

      def json_metadata_for(field)
        nil
      end

      # Split a word into individual characters
      def tokenize(word)
        characters = lexicon.characters
        tokens = []

        loop do
          # Greedily tokenize by finding the longest prefix, removing the matching prefix, and
          # repeating until there are no characters left. Unknown characters (e.g., undefined
          # punctuation) will be ignored.
          character = characters.select { |c| word.start_with?(c.character) }
                                .max { |a, b| a.character.length <=> b.character.length }

          if character
            tokens << character
            word = word[character.character.length..word.length]
          else
            # Unknown glyph
            word = word[1..word.length]
          end
          break if word.empty?
        end

        tokens
      end

      # Returns true if the character is defined for the lexicon
      def character?(character_string)
        lexicon.characters.any? { |c| c.character == character_string }
      end
    end

    # Mark up the instance with ephemeral annotations for display purposes.
    # For now this is used to indicate where search terms found a match.
    def annotate(scopes)
      @matches ||= []
      # Iterate over each provided field and condition
      scopes.each do |field, condition|
        text = send(field).as_json.to_s
        plaintext_condition = condition.gsub('*', '')
        local_matches = []
        # Loop until all matching instances are found
        loop do
          search_start = (local_matches.empty?) ? 0 : local_matches.last.end
          start_index = text.index(plaintext_condition, search_start)
          break unless start_index
          end_index = start_index + plaintext_condition.length
          is_match = true
          if condition[0] == '*' && start_index != 0 && text[start_index - 1] =~ /\p{Word}/
            is_match = false
          elsif condition[-1] == '*' && end_index != text.length && text[end_index + 1] =~ /\{Word}/
            is_match = false
          end
          range = (start_index...end_index)
          local_matches << range
          @matches << ConditionMatch.new(formatter: send(field), text: text, range: range)
        end
      end
    end

    # Retrieve an array of all search matches
    def matches
      @matches
    end

    def as_json(opts = {})
      self.class.formatters.reduce({}) do |hash, formatter|
        hash[formatter[:name].to_s.dasherize] = send(formatter[:field]).as_json
        hash
      end.merge(slug: slug)
    end

    # Generate a new slug
    def generate_slug
      unless self.slug.present?
        if self.class.where(:slug => self.word.serialize).length.zero?
          self.slug = self.word.serialize
        else
          idx = 2
          loop do
            break if self.class.where(:slug => "#{self.word.serialize}#{idx}").length.zero?
            idx += 1
          end
          self.slug = "#{self.word.serialize}#{idx}"
        end
      end
    end
  end
end
