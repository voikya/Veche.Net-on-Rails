module Morphology
  module Novegradian
    module Nouns
      module AStem
        module RegularStemStressed
          def declension
            "A (First) Declension"
          end

          def subtype
            "Regular Stem-Stressed"
          end

          def _nominative_singular
            [stem + "а", stem_transliterated + "a"]
          end

          def _nominative_dual
            [stem + "ѣ", stem_transliterated + "ě"]
          end

          def _nominative_plural
            [stem + "и", stem_transliterated + "i"]
          end

          def _genitive_singular
            [stem + "ѣ", stem_transliterated + "ě"]
          end

          def _genitive_dual
            [stem + "у", stem_transliterated + "u"]
          end

          def _genitive_plural
            [tertiary, tertiary_transliterated]
          end

          def _accusative_singular
            animate? ? _genitive_singular : [stem + "у", stem_transliterated + "u"]
          end

          def _accusative_dual
            animate? ? _genitive_dual : [stem + "ѣ", stem_transliterated + "ě"]
          end

          def _accusative_plural
            animate? ? _genitive_plural : [stem + "и", stem_transliterated + "i"]
          end

          def _dative_singular
            [stem + "ой", stem_transliterated + "oi"]
          end

          def _dative_dual
            [desinence + "ома", desinence_transliterated + "óma"]
          end

          def _dative_plural
            [stem + "ам", stem_transliterated + "am"]
          end

          def _partitive_singular
            [stem + "ок", stem_transliterated + "ok"]
          end

          def _partitive_dual
            [stem + "у", stem_transliterated + "u"]
          end

          def _partitive_plural
            [desinence + "оу", desinence_transliterated + "óu"]
          end

          def _locative_singular
            [stem + "ѣ", stem_transliterated + "ě"]
          end

          def _locative_dual
            [stem + "у", stem_transliterated + "u"]
          end

          def _locative_plural
            [stem + "ѣх", stem_transliterated + "ěh"]
          end

          def _lative_singular
            [stem + "ун", stem_transliterated + "un"]
          end

          def _lative_dual
            [stem + "ѣ", stem_transliterated + "ě"]
          end

          def _lative_plural
            [stem + "и", stem_transliterated + "i"]
          end
        end
      end
    end
  end
end
