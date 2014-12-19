module Morphology
  module Novegradian
    module Nouns
      module EStem
        module EndingStressedCollective
          def declension
            "E (Fourth) Declension"
          end

          def subtype
            "Ending-Stressed Collective"
          end

          def _nominative_plural
            [desinence + "ия", desinence_transliterated + "ijá"]
          end

          def _genitive_plural
            [tertiary, tertiary_transliterated]
          end

          def _accusative_plural
            animate? ? _genitive_plural : _nominative_plural
          end

          def _dative_plural
            [desinence + "иям", desinence_transliterated + "ijám"]
          end

          def _partitive_plural
            [desinence + "иеу", desinence_transliterated + "ijéu"]
          end

          def _locative_plural
            [desinence + "иях", desinence_transliterated + "ijáh"]
          end

          def _lative_plural
            [desinence + "ии", desinence_transliterated + "ijí"]
          end
        end
      end
    end
  end
end
