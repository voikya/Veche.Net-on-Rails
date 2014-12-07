module Lexicons
  class ResultSet
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
      fields.each {|f| @scopes[f] = value}
      query_string = fields.map {|f| "#{f} LIKE ?"}.join(" OR ")
      @results = @results.where(query_string, value.gsub('*', '%'))
    end

    # Override #each to perform any preprocessing on each record
    # before yielding it.
    def each(&block)
      @results.each   {|r| r.annotate(@scopes)}
              .select {|r| filtered?(r)}
              .each   {|r| yield(r)}
    end

    # Return the number of entries in the result set
    def count
      @results.count
    end

    private

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
