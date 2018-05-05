Dir["#{File.dirname(__FILE__)}/tunisian_morphology/**/*.rb"].each {|f| require f}

module Lexicons
  class TunisianMorphology < ActiveRecord::Base
    self.table_name = 'tunisian_morphology'

    belongs_to :tunisian, :foreign_key => :entry_id

    ATTRIBUTES = [
      :entry_id, :category, :strong, :weak, :ablaut, :group, :subgroup, :flags
    ]

    VOWELS = %w[A E I O U Y Á É È Í Ó Ú a e i o u y á é è í ó ú]

    def self.structure
      lexicon = Lexicon.find_by_slug(:tunisian)
      [
        { :key => "category",
          :options => MorphologyDefinition.categories_for_lexicon(lexicon) },
        { :key => "group",
          :options => MorphologyDefinition.groups_for_lexicon(lexicon) },
        { :key => "subgroup",
          :options => MorphologyDefinition.subgroups_for_lexicon(lexicon) },
        { :key => "strong" },
        { :key => "weak" },
        { :key => "ablaut" },
        { :key => "flags",
          :options => MorphologyDefinition.flags_for_lexicon(lexicon) }
      ]
    end

    def as_json(options={})
      {
        :category => category,
        :group => group,
        :subgroup => subgroup,
        :strong => strong,
        :weak => weak,
        :ablaut => ablaut,
        :flags => flags
      }
    end

    def generate!
      # Import category-specific methods
      module_name = [
        "Morphology",
        "Tunisian",
        category.classify.pluralize
      ].join("::")
      extend module_name.constantize
      # Import specific morphology methods
      module_name = [
        module_name,
        group.titleize.gsub(/[^A-Za-z0-9]/, ''),
        subgroup.titleize.gsub(/[^A-Za-z0-9]/, '')
      ].join("::")
      extend module_name.constantize
      self
    end

    private

    def method_missing(method, *args, &block)
      if method.to_s[-1] == '?'
        @flags ||= (flags || "").split(' ').map(&:strip).map(&:to_sym)
        @flags.include? method[0..-2].to_sym
      else
        method = "_#{method}".to_sym
        if respond_to? method
          postprocess send(method)
        end
      end
    end

    def postprocess(string)
      remove_grave_accents(string)
    end

    def remove_grave_accents(string)
      # Convert è > e if it is the only vowel and not directly adjacent to another vowel
      string.split(' ').map do |word|
        vowel_sequences = word.scan(/[#{VOWELS.join}]+/)
        if vowel_sequences.length == 1 && vowel_sequences.first["è"]
          word.sub('è', 'e')
        else
          word
        end
      end.join(' ')
    end
  end
end
