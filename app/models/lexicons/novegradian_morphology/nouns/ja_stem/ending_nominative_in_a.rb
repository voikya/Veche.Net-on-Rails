module Morphology
  module Novegradian
    module Nouns
      module JaStem
        module EndingNominativeInA
          def declension
            "Ja (Second) Declension"
          end

          def subtype
            "Ending Nominative in *-a"
          end

          def _nominative_singular
            [desinence + "а", desinence_transliterated + "á"]
          end

          def _nominative_plural
            [desinence + "ѣ", desinence_transliterated + "ě́"]
          end

          def _genitive_singular
            [desinence + "ин", desinence_transliterated + "ín"]
          end

          def _genitive_plural
            [tertiary, tertiary_transliterated]
          end

          def _accusative_singular
            animate? ? _genitive_singular : [desinence + "у", desinence_transliterated + "ú"]
          end

          def _accusative_plural
            animate? ? _genitive_plural : [desinence + "ѣ", desinence_transliterated + "ě́"]
          end

          def _dative_singular
            [desinence + "ей", desinence_transliterated + "éi"]
          end

          def _dative_plural
            [stem + "ам", stem_transliterated + "am"]
          end

          def _partitive_singular
            [desinence + "ок", desinence_transliterated + "ók"]
          end

          def _partitive_plural
            [desinence + "оу", desinence_transliterated + "óu"]
          end

          def _locative_singular
            [stem + "и", stem_transliterated + "i"]
          end

          def _locative_plural
            [stem + "ах", stem_transliterated + "ah"]
          end

          def _lative_singular
            [desinence + "ун", desinence_transliterated + "ún"]
          end

          def _lative_plural
            [desinence + "ѣ", desinence_transliterated + "ě́"]
          end
        end
      end
    end
  end
end
