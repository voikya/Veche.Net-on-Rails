module Lexicons
  class Lexicon < ActiveRecord::Base
    attr_accessible :name, :lexicon_table, :alphabet
    after_initialize :load_entries_table

    # Retrieve the result set for the given lexicon as an ActiveRecord::Relation.
    # By default this will be the entire lexicon (i.e., [LexiconClass].all).
    # If the lexicon has been scoped by search queries, so will the result set.
    def entries
      @entries
    end

    # Apply search parameters/filters to the lexicon result set.
    def scope_entries(opts = {})
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
    end

    # Look up a specific entry by its canonical native form.
    def entry(word)
      @lexicon_class.find_by_word(word)
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
      @entries.add_scope(fields, value)
    end

    # Scope by matching a string against the canonical form.
    def scope_word(value)
      @entries.add_scope(:word, value)
    end

    # Scope by matching a string against the transliteration.
    def scope_transliteration(value)
      @entries.add_scope(:transliteration, value)
    end

    # Scope by matching a string against the definition.
    def scope_definition(value)
      @entries.add_scope(:definition, value)
    end

    # Scope by matching a string against the part of speech.
    def scope_part_of_speech(value)
      @entries.add_scope(:part_of_speech, value)
    end

    # Scope by matching a string against the root (exact matching only).
    def scope_root(value)
      @entries.add_scope(:root, value)
    end

    # Scope by following links to create a network of all related terms.
    def scope_related_to(value)

    end
  end
end
