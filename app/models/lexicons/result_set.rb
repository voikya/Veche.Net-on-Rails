module Lexicons
  class ResultSet
    attr_reader :results, :excluded
    attr_accessor :include_partial_matches

    def initialize(base_class)
      @base_class = base_class
      @results = base_class.order(base_class.indexed_column)
      @filters = []
      @scopes = {}
      @include_partial_matches = false
    end

    # Define a new filter for the result set. It is not applied until
    # actually trying to retrieve information.
    def add_filter(operation, value)
      @filters << operation if value
    end

    # Define a new scope for the result set and apply it immediately.
    def add_scope(fields, value)
      if fields == @base_class.indexed_column && value[-1] == "*" && @base_class.character?(value[0...-1])
        # Special case: if searching for the base indexed column for just a single character,
        # the query needs to account for language-specific collation rules. That is, the result
        # set should consist of all words beginning with characters with the same `primary_order`
        # value, optionally preceded by a zero-weight character.
        all_characters = @base_class.lexicon.characters
        first_character = all_characters.select { |c| c.character == value[0...-1] }.first
        equivalent_characters = all_characters.select { |c| c.primary_order == first_character.primary_order }.map(&:character)
        unweighted_characters = all_characters.select(&:unweighted?).map(&:character)
        excluded_characters = all_characters.select { |c| !equivalent_characters.include?(c.character) && c.character.start_with?(*equivalent_characters) }.map(&:character)

        query_string = "^(#{unweighted_characters.join("|")})*(#{equivalent_characters.join("|")})"
        @results = @results.where("#{fields} ~ ?", query_string)

        unless excluded_characters.empty?
          query_string = "^(#{excluded_characters.join("|")})"
          @results = @results.where("#{fields} !~ ?", query_string)
        end
      else
        # General case
        fields = [*fields]
        # If no explicit wildcards are present, treat it as a CONTAINS
        # search and add wildcards to both ends.
        value = "*#{value}*" unless value.index('*')
        fields.each {|f| @scopes[f] = value}
        query_string = fields.map {|f| "#{f} ~~* ?"}.join(" OR ")
        value_set = [value.gsub('*', '%')] * fields.length
        @results = @results.where(query_string, *value_set)
      end
    end

    # Override #each to perform any preprocessing on each record
    # before yielding it.
    def each(&block)
      apply_filters!
      @results.each {|r| yield(r)}
    end

    # Return the number of entries in the result set
    def count
      apply_filters!
      @results.count
    end

    # True if any scoping/filters have been applied
    def scoped?
      !(@scopes.keys.length.zero? && @filters.length.zero?)
    end

    def to_json(opts={})
      apply_filters!
      {
        :total_matches => count,
        :partial_matches => (@include_partial_matches ? @excluded.count : 0),
        :results => sorted_results.map(&:slug),
        :partial_results => (@include_partial_matches ? @excluded.map(&:slug) : 0)
      }.to_json
    end

    def sorted_results
      col = @base_class.indexed_column.to_sym

      # Sort results by tokenizing, then mapping to weights, and transpose so that the
      # result is a single flattened array consisting first of all primary weights, then
      # secondary, then tertiary. For instance, if a two-character word tokenizes to weights
      # of (1,2,3) and (4,5,6) (in the format (primary, secondary, tertiary)), the sort value
      # will be an array of the form [1, 4, 2, 5, 3, 6].
      @results.sort_by do |entry|
        @base_class.tokenize(entry.send(col).serialize).map do |character|
          unless character.unweighted?
            [character.primary_order, character.secondary_order, character.tertiary_order]
          end
        end.compact.transpose.flatten
      end
    end

    private

    def apply_filters!
      unless @filtered
        @results.each {|r| r.annotate(@scopes)}
        @results, @excluded = @results.partition {|r| filtered?(r)}
        @filtered = true
      end
    end

    # Apply filters. Returns true if the record passes all filter tests,
    # false otherwise.
    def filtered?(record)
      @filters.each do |filter|
        case filter
          when :exact
            return false unless record.matches.any?(&:exact?)
          when :whole_word
            return false unless record.matches.any?(&:whole_word?)
        end
      end
      true
    end
  end
end
