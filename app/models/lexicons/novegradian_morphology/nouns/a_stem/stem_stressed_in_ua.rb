module Morphology
  module Novegradian
    module Nouns
      module AStem
        module StemStressedInUa
          def declension
            "A (First) Declension"
          end

          def subtype
            "Stem-Stressed in *-ua"
          end

          def _nominative_singular
            [stem + "а", stem_transliterated + "a"]
          end

          def _nominative_singular_topicalized
            [desinence[0..-2] + "ў-от", desinence_transliterated[0..-2] + "w-ót"]
          end

          def _nominative_plural
            [stem[0..-2] + "ўи", stem_transliterated[0..-2] + "wi"]
          end

          def _genitive_singular
            [stem[0..-2] + "ўѣ", stem_transliterated[0..-2] + "wě"]
          end

          def _genitive_plural
            [tertiary, tertiary_transliterated]
          end

          def _accusative_singular
            animate? ? _genitive_singular : [stem[0..-2] + "ўу", stem_transliterated[0..-2] + "wu"]
          end

          def _accusative_plural
            animate? ? _genitive_plural : [stem[0..-2] + "ўи", stem_transliterated[0..-2] + "wi"]
          end

          def _dative_singular
            [stem + "ой", stem_transliterated + "oi"]
          end

          def _dative_plural
            [stem + "ам", stem_transliterated + "am"]
          end

          def _partitive_singular
            [stem + "ок", stem_transliterated + "ok"]
          end

          def _partitive_plural
            [desinence + "оу", desinence_transliterated + "óu"]
          end

          def _locative_singular
            [stem[0..-2] + "ўѣ", stem_transliterated[0..-2] + "wě"]
          end

          def _locative_plural
            [stem[0..-2] + "ўѣх", stem_transliterated[0..-2] + "wěh"]
          end

          def _lative_singular
            [stem[0..-2] + "ўун", stem_transliterated[0..-2] + "wun"]
          end

          def _lative_plural
            [stem[0..-2] + "ўи", stem_transliterated[0..-2] + "ji"]
          end
        end
      end
    end
  end
end
