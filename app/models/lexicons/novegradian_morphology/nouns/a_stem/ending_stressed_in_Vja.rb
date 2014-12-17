module Morphology
  module Novegradian
    module Nouns
      module AStem
        module EndingStressedInVja
          def declension
            "A (First) Declension"
          end

          def subtype
            "Ending Stressed in *-Vja"
          end

          def _nominative_singular
            [desinence + "я", desinence_transliterated + "iá"]
          end

          def _nominative_plural
            [desinence + "и", desinence_transliterated + "jí"]
          end

          def _genitive_singular
            [desinence + "ѣ", desinence_transliterated + "iě́"]
          end

          def _genitive_plural
            [tertiary, tertiary_transliterated]
          end

          def _accusative_singular
            animate? ? _genitive_singular : [desinence + "ю", desinence_transliterated + "iú"]
          end

          def _accusative_plural
            animate? ? _genitive_plural : [desinence + "и", desinence_transliterated + "jí"]
          end

          def _dative_singular
            [desinence + "ёй", desinence_transliterated + "iói"]
          end

          def _dative_plural
            [desinence + "ям", desinence_transliterated + "iám"]
          end

          def _partitive_singular
            [desinence + "ёк", desinence_transliterated + "iók"]
          end

          def _partitive_plural
            [desinence + "ёу", desinence_transliterated + "ióu"]
          end

          def _locative_singular
            [desinence + "ѣ", desinence_transliterated + "iě́"]
          end

          def _locative_plural
            [desinence + "ѣх", desinence_transliterated + "iě́h"]
          end

          def _lative_singular
            [desinence + "юн", desinence_transliterated + "iún"]
          end

          def _lative_plural
            [desinence + "и", desinence_transliterated + "jí"]
          end
        end
      end
    end
  end
end
