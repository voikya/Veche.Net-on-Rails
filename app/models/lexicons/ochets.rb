module Lexicons
  class Ochets < ActiveRecord::Base
    include LexiconEntry

    # Table for lexicon entries
    self.table_name = 'ochets'

    # Lexicon entry associations
    has_and_belongs_to_many :cross_references,
      :class_name => Ochets,
      :join_table => :ochets_crossrefs,
      :foreign_key => :from,
      :association_foreign_key => :to
    has_and_belongs_to_many :inverse_cross_references,
      :class_name => Ochets,
      :join_table => :ochets_crossrefs,
      :foreign_key => :to,
      :association_foreign_key => :from

    # Entry fields and formatter definitions
    field :root_word,                :formatter => Formatters::PlainTextFormatter
    field :ext_root,                 :formatter => Formatters::PlainTextFormatter
    field :root_transliteration,     :formatter => Formatters::PlainTextFormatter
    field :ext_root_transliteration, :formatter => Formatters::PlainTextFormatter
    field :definition,               :formatter => Formatters::DefinitionFormatter
    field :derivatives,              :formatter => Formatters::DerivativeFormatter
    field :idioms,                   :formatter => Formatters::ExampleFormatter
    field :etymology,                :formatter => Formatters::RichTextFormatter
    field :cross_references,         :formatter => Formatters::CrossReferenceFormatter,
                                     :reader    => :cross_references,
                                     :writer    => :cross_reference_ids=,
                                     :class     => Ochets

    alias_attribute :word, :root_word

    # Hooks
    before_create :generate_slug

    # Array of fields that are included when doing a search over "any" field.
    def self.scopable_fields
      [
        :root_word,
        :root_transliteration,
        :definition,
        :derivatives,
        :idioms
      ]
    end

    # Array of fields that are included when doing a generic (non-advanced) search.
    def self.primary_fields
      [
        :root_word,
        :root_transliteration,
        :definition,
        :derivatives,
        :idioms
      ]
    end

    # The name of the column that lexicon entries are listed under
    def self.indexed_column
      :root_word
    end

    # Convert a search parameter into one or more corresponding columns
    # in this table to search through
    # TODO: For Ochets this really needs to be cleaned up once the database
    # schema is upgraded.
    def self.map_search_params(field)
      {
        :word => :derivatives,
        :part_of_speech => :derivatives,
        :transliteration => :derivatives,
        :root => [:root_word, :root_transliteration],
        :definition => [:definition, :derivatives],
        :root_word => :root_word
      }[field]
    end
  end
end
