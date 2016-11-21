require_relative 'fleeting_vowel'

module Morphology
  module Alashian
    module Nouns
      module Masculine
        module FleetingVowelAndExternalPluralInI
          include Masculine::FleetingVowel

          def subtype
            "Fleeting Vowel and External Plural in -ī"
          end

          def _absolute_plural
            [plural_stem + "ει", plural_stem_transliterated + "ī"]
          end

          def _construct_plural
            _absolute_plural
          end
        end
      end
    end
  end
end
