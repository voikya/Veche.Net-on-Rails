require_relative 'formatter'

module Lexicons
  class Novegradian < ActiveRecord::Base
    include LexiconEntry

    self.table_name = 'novegradian'

    field :word, :formatter => CanonicalFormFormatter
    field :transliteration, :formatter => TransliterationFormatter
    field :pronunciation, :formatter => PronunciationFormatter
    field :part_of_speech, :formatter => PartOfSpeechFormatter
    field :root, :formatter => RootFormatter
    field :definition, :formatter => DefinitionFormatter
    field :important_forms, :formatter => MorphologyFormatter
    field :idioms, :formatter => IdiomFormatter
    field :notes, :formatter => NoteFormatter
    field :etymology, :formatter => EtymologyFormatter
    field :cognates, :formatter => CognateFormatter

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
  end
end
