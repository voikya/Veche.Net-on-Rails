require_relative 'formatter'

module Lexicons
  class Alashian < ActiveRecord::Base
    include LexiconEntry

    self.table_name = 'alashian'

    has_many :cross_reference_links, :foreign_key => :from, :class_name => AlashianCrossReference
    has_many :cross_references, :through => :cross_reference_links, :source => :alashian

    field :word, :formatter => CanonicalFormFormatter
    field :transliteration, :formatter => TransliterationFormatter
    field :pronunciation, :formatter => PronunciationFormatter
    field :part_of_speech, :formatter => PartOfSpeechFormatter
    field :root, :formatter => RootFormatter
    field :definition, :formatter => DefinitionFormatter
    field :idioms, :formatter => IdiomFormatter
    field :notes, :formatter => NoteFormatter
    field :etymology, :formatter => EtymologyFormatter

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

    def to_json(opts={})
      formatters.reduce({}) do |hash, formatter|
        hash[formatter.name] = formatter.to_html
        hash
      end.to_json
    end
  end
end
