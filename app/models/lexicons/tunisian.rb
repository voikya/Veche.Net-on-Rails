module Lexicons
  class Tunisian < ActiveRecord::Base
    include LexiconEntry

    # Table for lexicon entries
    self.table_name = 'tunisian'

    # Lexicon entry associations
    has_one :morphology,
      :foreign_key => :entry_id,
      :class_name => TunisianMorphology

    # Entry fields and formatter definitions
    field :word,              :formatter => Formatters::PlainTextFormatter
    field :pronunciation,     :formatter => Formatters::PlainTextFormatter
    field :part_of_speech_id, :formatter => Formatters::PartOfSpeechFormatter,
                              :name      => :part_of_speech
    field :definition,        :formatter => Formatters::DefinitionFormatter
    field :important_forms,   :formatter => Formatters::ImportantFormsFormatter
    field :idioms,            :formatter => Formatters::ExampleFormatterWithoutTransliteration
    field :notes,             :formatter => Formatters::NoteFormatter
    field :etymology,         :formatter => Formatters::RichTextFormatter
    field :cognates,          :formatter => Formatters::RichTextFormatter
    field :morphology_table,  :formatter => Formatters::MorphologyFormatter,
                              :reader    => :morphology,
                              :writer    => :morphology=,
                              :class     => TunisianMorphology

    # Hooks
    before_create :generate_slug

    def self.search_dataset
      super.joins("LEFT OUTER JOIN (SELECT id, CONCAT_WS(' ', type, class_membership, form) AS part_of_speech FROM parts_of_speech) ps ON tunisian.part_of_speech_id = ps.id")
    end

    # Array of fields that are included when doing a search over "any" field.
    def self.scopable_fields
      [
        :word,
        :definition,
        :idioms,
        :notes
      ]
    end

    # Array of fields that are included when doing a generic (non-advanced) search.
    def self.primary_fields
      [
        :word,
        :definition
      ]
    end

    # The name of the column that lexicon entries are listed under
    def self.indexed_column
      :word
    end

    # The class of the morphology object
    def self.morphology_class
      TunisianMorphology
    end

    # Convert a search parameter into one or more corresponding columns
    # in this table to search through
    def self.map_search_params(field)
      {
        :word            => :word,
        :part_of_speech  => :part_of_speech,
        :definition      => :definition
      }[field]
    end

    def self.json_metadata_for(field)
      case field
        when :part_of_speech_id
          PartOfSpeech.for(lexicon)
        when :morphology_table
          morphology_class.structure
        else
          super
      end
    end

    def morphology_formatter
      morphology_table
    end
  end
end
