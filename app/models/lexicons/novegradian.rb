module Lexicons
  class Novegradian < ActiveRecord::Base
    include LexiconEntry

    # Table for lexicon entries
    self.table_name = 'novegradian'

    # Lexicon entry associations
    has_and_belongs_to_many :cross_references,
      :class_name => Novegradian,
      :join_table => :novegradian_crossrefs,
      :foreign_key => :from,
      :association_foreign_key => :to
    has_and_belongs_to_many :inverse_cross_references,
      :class_name => Novegradian,
      :join_table => :novegradian_crossrefs,
      :foreign_key => :to,
      :association_foreign_key => :from
    has_one :morphology,
      :foreign_key => :entry_id,
      :class_name  => NovegradianMorphology

    # Entry fields and formatter definitions
    field :word,              :formatter => Formatters::PlainTextFormatter
    field :transliteration,   :formatter => Formatters::PlainTextFormatter
    field :pronunciation,     :formatter => Formatters::PlainTextFormatter
    field :part_of_speech_id, :formatter => Formatters::PartOfSpeechFormatter,
                              :name      => :part_of_speech
    field :root,              :formatter => Formatters::RootFormatter
    field :definition,        :formatter => Formatters::DefinitionFormatter
    field :important_forms,   :formatter => Formatters::ImportantFormsFormatter
    field :idioms,            :formatter => Formatters::ExampleFormatter
    field :notes,             :formatter => Formatters::NoteFormatter
    field :etymology,         :formatter => Formatters::RichTextFormatter
    field :cognates,          :formatter => Formatters::RichTextFormatter
    field :cross_references,  :formatter => Formatters::CrossReferenceFormatter,
                              :reader    => :cross_references,
                              :writer    => :cross_reference_ids=,
                              :class     => Novegradian
    field :morphology_table,  :formatter => Formatters::MorphologyFormatter,
                              :reader    => :morphology,
                              :writer    => :morphology=,
                              :class     => NovegradianMorphology

    # Hooks
    before_create :generate_slug

    def self.search_dataset
      super.joins("LEFT OUTER JOIN (SELECT id, CONCAT_WS(' ', type, class_membership, form) AS part_of_speech FROM parts_of_speech) ps ON novegradian.part_of_speech_id = ps.id")
    end

    # Array of fields that are included when doing a search over "any" field
    def self.scopable_fields
      [
        :word,
        :transliteration,
        :definition,
        :idioms,
        :notes
      ]
    end

    # Array of fields that are included when doing a generic (non-advanced) search
    def self.primary_fields
      [
        :word,
        :transliteration,
        :definition
      ]
    end

    # The name of the column that lexicon entries are listed under
    def self.indexed_column
      :word
    end

    # The class of the morphology object
    def self.morphology_class
      NovegradianMorphology
    end

    # Convert a search parameter into one or more corresponding columns
    # in this table to search through
    def self.map_search_params(field)
      {
        :word            => :word,
        :part_of_speech  => :part_of_speech,
        :transliteration => :transliteration,
        :root            => :root,
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
