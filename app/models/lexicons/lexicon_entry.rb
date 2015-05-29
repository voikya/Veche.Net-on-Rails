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

      def create_from_json(params)
        data = {}
        fields = params.reduce({}) do |memo, (k, v)|
          memo[k.gsub('-', '_').to_sym] = v
          memo
        end
        fields.reject{|k,v| [:cross_references, :morphology_table].include?(k)}.each do |field, value|
          if attribute_method?(field) && @formatters[field]
            data[field] = @formatters[field].new(field, nil).update(value)
          end
        end

        record = new(data)

        (fields[:cross_references] || []).each do |xref|
          record.cross_references << where(:slug => xref[:slug]).first
        end

        record
      end

      def create_from_json!(params)
        record = create_from_json(params)
        record.save!
        record
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
    def formatters(opts = {})
      self.class.formatters.map do |k, _|
        formatter(k, opts)
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

    # JSON representation
    def to_json(opts={})
      {
        :slug => self.slug,
        :fields => formatters(opts).map(&:to_json)
      }.to_json
    end

    def update_from_json(params)
      fields = params.reduce({}) do |memo, (k, v)|
        memo[k.gsub('-', '_').to_sym] = v
        memo
      end
      fields.reject{|k,v| [:cross_references, :morphology_table].include?(k)}.each do |field, value|
        if respond_to?(field) && self.class.formatters[field]
          format = formatter(field, include_empty: true)
          send("#{field}=".to_sym, format.update(value))
        end
      end

      xrefs = (fields[:cross_references] || []).map {|ref| ref[:slug]}
      cross_references.each do |xref|
        if !xrefs.include?(xref.slug)
          cross_references.delete(xref)
        end
      end
      xrefs.each do |xref|
        if !cross_references.map(&:slug).include?(xref)
          cross_references << where(:slug => xref).first
        end
      end
    end

    def update_from_json!(params)
      update_from_json(params)
      save!
    end

    def cross_references=(val)
    end

    def morphology_table=(val)
    end

    private

    # Create an initialized formatter for a given field.
    def formatter(field, opts={})
      text = send(field)
      if (text && text.present?) || opts[:include_empty]
        self.class.formatters[field].new(field, send(field))
      else
        nil
      end
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
