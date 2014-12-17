module Morphology
  module Novegradian
    module Nouns
      module JaStem
        module StemNominativeInA
          def declension
            "Ja (Second) Declension"
          end

          def subtype
            "Stem-Nominative in *-a"
          end

          def _nominative_singular
            [stem + "а", stem_transliterated + "a"]
          end

          def _nominative_plural
            [stem + "ѣ", stem_transliterated + "ě"]
          end

          def _genitive_singular
            [stem + "ин", stem_transliterated + "in"]
          end

          def _genitive_plural
            [tertiary, tertiary_transliterated]
          end

          def _accusative_singular
            animate? ? _genitive_singular : [stem + "у", stem_transliterated + "u"]
          end

          def _accusative_plural
            animate? ? _genitive_plural : [stem + "ѣ", stem_transliterated + "ě"]
          end

          def _dative_singular
            [desinence + "ей", desinence_transliterated + "éi"]
          end

          def _dative_plural
            [desinence + "ам", desinence_transliterated + "ám"]
          end

          def _partitive_singular
            [desinence + "ок", desinence_transliterated + "ók"]
          end

          def _partitive_plural
            [desinence + "оу", desinence_transliterated + "óu"]
          end

          def _locative_singular
            [desinence + "и", desinence_transliterated + "í"]
          end

          def _locative_plural
            [desinence + "ах", desinence_transliterated + "áh"]
          end

          def _lative_singular
            [desinence + "ун", desinence_transliterated + "ún"]
          end

          def _lative_plural
            [stem + "ѣ", stem_transliterated + "ě"]
          end
        end
      end
    end
  end
end
