module Lexicons
  class Lexicon < ActiveRecord::Base
    attr_accessible :name, :lexicon_table, :alphabet
    attr_accessor :lexicon_class
    after_initialize :load_entries_table

    def self.find_by_language(language)
      find_by_slug(language)
    end

    # Retrieve the result set for the given lexicon as an ActiveRecord::Relation.
    # By default this will be the entire lexicon (i.e., [LexiconClass].all).
    # If the lexicon has been scoped by search queries, so will the result set.
    def entries
      @entries
    end

    # Apply search parameters/filters to the lexicon result set.
    def scope_entries(opts = {})
      # Clone opts (this method is destructive)
      opts = opts.dup
      # Split search terms and search flags.
      operations = opts.slice!(:exact, :whole_word)
      # For all flags, apply a filter to the ResultSet.
      opts.each do |k, v|
        @entries.add_filter(k, v.to_bool)
      end
      # For all terms, apply a scope operation to the ResultSet.
      operations.each do |k, v|
        send "scope_#{k}".to_sym, v
      end
      self
    end

    # Look up a specific entry by its slug
    def entry(slug)
      @lexicon_class.where(:slug => slug).first
    end

    # True if any scoping/filters have been applied.
    def scoped?
      @entries.scoped?
    end

    # Reset the lexicon object and clear any scopes
    def reset
      load_entries_table
    end

    # Total number of records in the lexicon
    def record_count
      @lexicon_class.count
    end

    private

    # Initialize the lexicon object by fetching the corresponding lexicon
    # entry class. For organizational purposes and human readability each
    # lexicon is kept in a separate database.
    def load_entries_table
      @lexicon_class = "Lexicons::#{lexicon_table.camelize}".constantize
      @entries = ResultSet.new(@lexicon_class)
    end

    # Scope by matching a string against any scopable field, as defined
    # by the lexicon entry class.
    def scope_any(value)
      fields = @lexicon_class.scopable_fields
      @entries.add_scopes(fields, value)
    end

    # Scope by matching a string against the primary fields, as defined
    # by the lexicon entry class. This is used for the generic,
    # non-advanced search option.
    def scope_search(value)
      fields = @lexicon_class.primary_fields
      @entries.add_scope(fields, value)
      @entries.add_filter(:whole_word, true)
    end

    # Scope by following links to create a network of all related terms.
    def scope_related_to(value)

    end

    # Generic scoper for other fields
    def method_missing(method, *args, &block)
      if method.to_s =~ /^scope_(.*)$/
        scopes = @lexicon_class.map_search_params($1.to_sym)
        @entries.add_scope(scopes, *args)
      end
    end
  end
end
