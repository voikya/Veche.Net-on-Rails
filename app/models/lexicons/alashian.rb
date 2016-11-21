require_relative 'alashian_morphology/alashian_root'

module Lexicons
  class Alashian < ActiveRecord::Base
    include LexiconEntry

    # Table for lexicon entries
    self.table_name = 'alashian'

    # Lexicon entry associations
    has_and_belongs_to_many :cross_references,
      :class_name => Alashian,
      :join_table => :alashian_crossrefs,
      :foreign_key => :from,
      :association_foreign_key => :to
    has_and_belongs_to_many :inverse_cross_references,
      :class_name => Alashian,
      :join_table => :alashian_crossrefs,
      :foreign_key => :to,
      :association_foreign_key => :from
    has_one :morphology,
      :foreign_key => :entry_id,
      :class_name  => AlashianMorphology

    # Entry fields and formatter definitions
    field :word,             :formatter => Formatters::PlainTextFormatter
    field :transliteration,  :formatter => Formatters::PlainTextFormatter
    field :pronunciation,    :formatter => Formatters::PlainTextFormatter
    field :part_of_speech,   :formatter => Formatters::PlainTextFormatter
    field :root,             :formatter => Formatters::RootFormatter
    field :definition,       :formatter => Formatters::DefinitionFormatter
    field :idioms,           :formatter => Formatters::ExampleFormatter
    field :notes,            :formatter => Formatters::NoteFormatter
    field :etymology,        :formatter => Formatters::RichTextFormatter
    field :cross_references, :formatter => Formatters::CrossReferenceFormatter,
                             :reader    => :cross_references,
                             :writer    => :cross_reference_ids=,
                             :class     => Alashian
    field :morphology_table, :formatter => Formatters::MorphologyFormatter,
                             :reader    => :morphology,
                             :writer    => :morphology=,
                             :class     => AlashianMorphology

    # Hooks
    before_create :generate_slug

    # Array of fields that are included when doing a search over "any" field.
    def self.scopable_fields
      [
        :word,
        :transliteration,
        :definition,
        :idioms,
        :notes
      ]
    end

    # Array of fields that are included when doing a generic (non-advanced) search.
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

    # The class of the morphology oject
    def self.morphology_class
      AlashianMorphology
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

    def parsed_root
      AlashianRoot.new(root_before_type_cast)
    end
  end
end
