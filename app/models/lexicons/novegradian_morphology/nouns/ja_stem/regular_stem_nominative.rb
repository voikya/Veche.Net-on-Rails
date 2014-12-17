module Morphology
  module Novegradian
    module Nouns
      module JaStem
        module RegularStemNominative
          def declension
            "Ja (Second) Declension"
          end

          def subtype
            "Regular Stem-Nominative"
          end

          def _nominative_singular
            [stem + "я", stem_transliterated + "ia"]
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
            animate? ? _genitive_singular : [stem + "ю", stem_transliterated + "iu"]
          end

          def _accusative_plural
            animate? ? _genitive_plural : [stem + "ѣ", stem_transliterated + "ě"]
          end

          def _dative_singular
            [desinence + "ей", desinence_transliterated + "éi"]
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
            [desinence + "и", desinence_transliterated + "í"]
          end

          def _locative_plural
            [desinence + "ях", desinence_transliterated + "iáh"]
          end

          def _lative_singular
            [desinence + "юн", desinence_transliterated + "iún"]
          end

          def _lative_plural
            [stem + "ѣ", stem_transliterated + "ě"]
          end
        end
      end
    end
  end
end
