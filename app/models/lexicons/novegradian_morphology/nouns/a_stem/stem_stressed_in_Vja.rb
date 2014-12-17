module Morphology
  module Novegradian
    module Nouns
      module AStem
        module StemStressedInVja
          def declension
            "A (First) Declension"
          end

          def subtype
            "Stem-Stressed in *-Vja"
          end

          def _nominative_singular
            [stem + "я", stem_transliterated + "ia"]
          end

          def _nominative_plural
            [stem + "и", stem_transliterated + "ji"]
          end

          def _genitive_singular
            [stem + "ѣ", stem_transliterated + "iě"]
          end

          def _genitive_plural
            [tertiary, tertiary_transliterated]
          end

          def _accusative_singular
            animate? ? _genitive_singular : [stem + "ю", stem_transliterated + "iu"]
          end

          def _accusative_plural
            animate? ? _genitive_plural : [stem + "и", stem_transliterated + "ji"]
          end

          def _dative_singular
            [stem + "ёй", stem_transliterated + "ioi"]
          end

          def _dative_plural
            [stem + "ям", stem_transliterated + "iam"]
          end

          def _partitive_singular
            [stem + "ёк", stem_transliterated + "iok"]
          end

          def _partitive_plural
            [desinence + "ёу", desinence_transliterated + "ióu"]
          end

          def _locative_singular
            [stem + "ѣ", stem_transliterated + "iě"]
          end

          def _locative_plural
            [stem + "ѣх", stem_transliterated + "iěh"]
          end

          def _lative_singular
            [stem + "юн", stem_transliterated + "iun"]
          end

          def _lative_plural
            [stem + "и", stem_transliterated + "ji"]
          end
        end
      end
    end
  end
end
