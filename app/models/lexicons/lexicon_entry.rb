module Lexicons
  module LexiconEntry
    def self.included(base)
      base.extend(ClassMethods)
    end

    module ClassMethods
      attr_reader :formatters, :fields

      # Array of fields that are included when doing a search over "any" field
      def scopable_fields
        raise NotImplementedError
      end

      # Register a field and assign it a formatter class, while creating a serializer
      # for that field on the lexicon entry class. Call this method for all
      # presentable fields.
      def field(name, opts)
        @formatters ||= []
        @formatters << {:field => name, :opts => opts}
        @fields ||= []
        @fields << name

        if opts[:reader] && opts[:writer] && opts[:class]
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
        else
          # Use Rails serializer
          serialize name, opts[:formatter]
        end
      end
    end

    # Mark up the instance with ephemeral annotations for display purposes.
    # For now this is used to indicate where search terms found a match.
    def annotate(scopes)
      @matches ||= []
      # Iterate over each provided field and condition
      scopes.each do |field, condition|
        text = send(field).for_reading.to_s
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

    # Generate a hash suitable for conversion to JSON for viewing
    def to_read_hash
      {
        slug: slug,
        fields: self.class.formatters.map do |formatter|
          if value = send(formatter[:field]).for_reading
            {
              name: formatter[:field].to_s.dasherize,
              value: value,
              type: formatter[:opts][:formatter].name.split('::').last.gsub('Formatter', '')
            }
          end
        end.compact
      }
    end

    # Generate a hash suitable for conversion to JSON, including metadata
    # needed for editing
    def to_edit_hash
      {
        slug: slug,
        fields: self.class.formatters.map do |formatter|
          {
            name: formatter[:field].to_s.dasherize,
            value: send(formatter[:field]).for_editing,
            type: formatter[:opts][:formatter].name.split('::').last.gsub('Formatter', '')
          }
        end
      }
    end

    # Generate a new slug
    def generate_slug
      unless self.slug.present?
        if self.class.where(:slug => self.word).length.zero?
          self.slug = self.word
        else
          idx = 2
          loop do
            break if self.class.where(:slug => "#{self.word}#{idx}").length.zero?
            idx += 1
          end
          self.slug = "#{self.word}#{idx}"
        end
      end
    end
  end
end
