module Lexicons
  module LexiconEntry
    def self.included(base)
      base.extend(ClassMethods)
    end

    module ClassMethods
      attr_reader :formatters

      # Delegate calls to Entry::each to Entry#all, an ActiveRecord::Relation.
      # This ensures the class object is iterable as well.
      def each(&block)
        all.each(&block)
      end

      # Array of fields that are included when doing a search over "any" field.
      def scopable_fields
        [
          :transliteration,
          :definition,
          :idioms,
          :notes
        ]
      end

      private

      # Register a field and assign it a formatter class. Creates attribute
      # accessors as a side-effect. Call this method for all presentable fields.
      # Pass in custom:true if the field does not correspond to a DB column and
      # should not have accessors created.
      def field(name, opts)
        @formatters ||= {}
        @formatters[name] = opts[:formatter]
        attr_accessible(name) unless opts[:custom]
      end
    end

    # Return a summary (equivalent to the first line of the definition)
    def definition_summary
      formatter(:definition).summary
    end

    # Return array of instantiated formatters
    def formatters
      self.class.formatters.map do |k, _|
        formatter(k)
      end.compact
    end

    # Mark up the instance with ephemeral annotations for display purposes.
    # For now this is used to indicate where search terms found a match.
    def annotate(scopes)
      @matches ||= []
      # Iterate over each provided field and condition.
      scopes.each do |field, condition|
        text = send(field)
        plaintext_condition = condition.gsub('*', '')
        local_matches = []
        # Loop until all matching instances are found.
        loop do
          search_start = (local_matches.empty?) ? 0 : local_matches.last.end
          start_index = text.index(plaintext_condition, search_start)
          break unless start_index
          end_index = start_index + plaintext_condition.length
          is_match = true
          if condition[0] == '*' && start_index != 0 && text[start_index - 1] =~ /\p{Word}/
            is_match = false
          elsif condition[-1] == '*' && end_index != text.length && text[end_index + 1] =~ /\p{Word}/
            is_match = false
          end
          range = (start_index...end_index)
          local_matches << range
          @matches << ConditionMatch.new(formatter: formatter(field), text: text, range: range)
        end
      end
    end

    # Retrieve an array of all search matches.
    def matches
      @matches
    end

    private

    # Create an initialized formatter for a given field.
    def formatter(field)
      text = send(field)
      if text && text.present?
        self.class.formatters[field].new(field, send(field))
      else
        nil
      end
    end
  end
end
