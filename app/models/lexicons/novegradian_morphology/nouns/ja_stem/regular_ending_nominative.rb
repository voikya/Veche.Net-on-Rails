module Morphology
  module Novegradian
    module Nouns
      module JaStem
        module RegularEndingNominative
          def declension
            "Ja (Second) Declension"
          end

          def subtype
            "Regular Ending-Nominative"
          end

          def _nominative_singular
            [desinence + "я", desinence_transliterated + "iá"]
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
            animate? ? _genitive_singular : [desinence + "ю", desinence_transliterated + "iú"]
          end

          def _accusative_plural
            animate? ? _genitive_plural : [desinence + "ѣ", desinence_transliterated + "ě́"]
          end

          def _dative_singular
            [desinence + "ей", desinence_transliterated + "éi"]
          end

          def _dative_plural
            [stem + "ям", stem_transliterated + "iam"]
          end

          def _partitive_singular
            [desinence + "ёк", desinence_transliterated + "iók"]
          end

          def _partitive_plural
            [desinence + "ёу", desinence_transliterated + "ióu"]
          end

          def _locative_singular
            [stem + "и", stem_transliterated + "i"]
          end

          def _locative_plural
            [stem + "ях", stem_transliterated + "iah"]
          end

          def _lative_singular
            [desinence + "юн", desinence_transliterated + "iún"]
          end

          def _lative_plural
            [desinence + "ѣ", desinence_transliterated + "ě́"]
          end
        end
      end
    end
  end
end
