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
      def field(name, opts)
        @formatters ||= {}
        @formatters[name] = opts[:formatter]
        attr_accessible name
      end
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
      self.class.formatters[field].new(field, send(field))
    end
  end
end
