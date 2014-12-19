module Morphology
  module Novegradian
    module Nouns
      module EStem
        module StemStressedCollective
          def declension
            "E (Fourth) Declension"
          end

          def subtype
            "Stem-Stressed Collective"
          end

          def _nominative_plural
            [stem + "ия", stem_transliterated + "ija"]
          end

          def _genitive_plural
            [tertiary, tertiary_transliterated]
          end

          def _accusative_plural
            animate? ? _genitive_plural : _nominative_plural
          end

          def _dative_plural
            [stem + "иям", stem_transliterated + "ijam"]
          end

          def _partitive_plural
            [stem + "иеу", stem_transliterated + "ijeu"]
          end

          def _locative_plural
            [stem + "иях", stem_transliterated + "ijah"]
          end

          def _lative_plural
            [stem + "ии", stem_transliterated + "iji"]
          end
        end
      end
    end
  end
end
