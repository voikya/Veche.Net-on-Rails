require_relative 'regular'

module Morphology
  module Alashian
    module Nouns
      module Masculine
        module FinalLongVowel
          include Masculine::Regular

          def subtype
            "Final Long Vowel"
          end

          def _absolute_plural
            [plural_stem + "ους̄", plural_stem_transliterated + "ūš"]
          end

          def _construct_plural
            [plural_stem + "ουτ", plural_stem_transliterated + "ūt"]
          end

          private

          def plural_stem
            stem + (stem[-1] == "η" ? "ι" : "")
          end

          def plural_stem_transliterated
            stem_transliterated + (stem_transliterated[-1] == "ū" ? "w" : "y")
          end
        end
      end
    end
  end
end
