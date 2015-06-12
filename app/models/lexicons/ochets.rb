require_relative 'formatter'

module Lexicons
  class Ochets < ActiveRecord::Base
    include LexiconEntry

    self.table_name = 'ochets'

    has_many :cross_reference_links, :foreign_key => :from, :class_name => OchetsCrossReference, :inverse_of => :referencing
    has_many :cross_references, :through => :cross_reference_links, :source => :referenced
    has_many :inverse_cross_reference_links, :foreign_key => :to, :class_name => OchetsCrossReference, :inverse_of => :referenced
    has_many :inverse_cross_references, :through => :inverse_cross_reference_links, :source => :referencing

    field :root_word, :formatter => PlainTextFormatter
    field :ext_root, :formatter => PlainTextFormatter
    field :root_transliteration, :formatter => PlainTextFormatter
    field :ext_root_transliteration, :formatter => PlainTextFormatter
    field :definition, :formatter => DefinitionFormatter
    field :derivatives, :formatter => DerivativeFormatter
    field :idioms, :formatter => ExampleFormatter
    field :etymology, :formatter => RichTextFormatter

    alias_attribute :word, :root_word

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
