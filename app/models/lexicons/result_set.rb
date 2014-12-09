module Lexicons
  class ResultSet
    attr_reader :results, :excluded

    def initialize(base_class)
      @base_class = base_class
      @results = base_class
      @filters = []
      @scopes = {}
    end

    # Define a new filter for the result set. It is not applied until
    # actually trying to retrieve information.
    def add_filter(operation, value)
      @filters << operation if value
    end

    # Define a new scope for the result set and apply it immediately.
    def add_scope(fields, value)
      fields = [*fields]
      # If no explicit wildcards are present, treat it as a CONTAINS
      # search and add wildcards to both ends.
      value = "*#{value}*" unless value.index('*')
      fields.each {|f| @scopes[f] = value}
      query_string = fields.map {|f| "#{f} LIKE ?"}.join(" OR ")
      value_set = [value.gsub('*', '%')] * fields.length
      @results = @results.where(query_string, *value_set)
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
        :partial_matches => @excluded.count,
        :results => @results.map(&:word),
        :partial_results => @excluded.map(&:word)
      }.to_json
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
