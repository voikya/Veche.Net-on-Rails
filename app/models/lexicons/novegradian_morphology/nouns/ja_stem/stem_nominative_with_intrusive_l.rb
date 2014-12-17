module Morphology
  module Novegradian
    module Nouns
      module JaStem
        module StemNominativeWithIntrusiveL
          def declension
            "Ja (Second) Declension"
          end

          def subtype
            "Stem-Nominative with Intrusive *-l-"
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
            animate? ? _genitive_singular : [stem + "лу", stem_transliterated + "lu"]
          end

          def _accusative_plural
            animate? ? _genitive_plural : [stem + "ѣ", stem_transliterated + "ě"]
          end

          def _dative_singular
            [desinence + "ей", desinence_transliterated + "éi"]
          end

          def _dative_plural
            [stem + "лам", remove_stress(stem_transliterated) + "lám"]
          end

          def _partitive_singular
            [stem + "лок", remove_stress(stem_transliterated) + "lók"]
          end

          def _partitive_plural
            [stem + "лоу", remove_stress(stem_transliterated) + "lóu"]
          end

          def _locative_singular
            [desinence + "и", desinence_transliterated + "í"]
          end

          def _locative_plural
            [stem + "лах", remove_stress(stem_transliterated) + "láh"]
          end

          def _lative_singular
            [stem + "лун", remove_stress(stem_transliterated) + "lún"]
          end

          def _lative_plural
            [stem + "ѣ", stem_transliterated + "ě"]
          end
        end
      end
    end
  end
end
