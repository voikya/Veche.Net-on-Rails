module Morphology
  module Novegradian
    module Nouns
      module AStem
        module StemStressedInIja
          def declension
            "A (First) Declension"
          end

          def subtype
            "Stem-Stressed in *-ija"
          end

          def _nominative_singular
            [stem + "я", stem_transliterated + "ja"]
          end

          def _nominative_plural
            [stem + "и", stem_transliterated + "ji"]
          end

          def _genitive_singular
            [stem + "ѣ", stem_transliterated + "jě"]
          end

          def _genitive_plural
            [tertiary, tertiary_transliterated]
          end

          def _accusative_singular
            animate? ? _genitive_singular : [stem + "ю", stem_transliterated + "ju"]
          end

          def _accusative_plural
            animate? ? _genitive_plural : [stem + "и", stem_transliterated + "ji"]
          end

          def _dative_singular
            [stem + "ёй", stem_transliterated + "joi"]
          end

          def _dative_plural
            [stem + "ям", stem_transliterated + "jam"]
          end

          def _partitive_singular
            [stem + "ёк", stem_transliterated + "jok"]
          end

          def _partitive_plural
            [desinence + "ёу", desinence_transliterated + "jóu"]
          end

          def _locative_singular
            [stem + "ѣ", stem_transliterated + "jě"]
          end

          def _locative_plural
            [stem + "ѣх", stem_transliterated + "jěh"]
          end

          def _lative_singular
            [stem + "юн", stem_transliterated + "jun"]
          end

          def _lative_plural
            [stem + "и", stem_transliterated + "ji"]
          end
        end
      end
    end
  end
end
