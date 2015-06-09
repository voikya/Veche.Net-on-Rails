require_relative './regular_ending_stressed'

module Morphology
  module Novegradian
    module Verbs
      module IConjugation
        module RegularHysterodynamic
          include IConjugation::RegularEndingStressed

          def conjugation
            "I Conjugation"
          end

          def subtype
            "Regular with Hysterodyanmic Stress"
          end

          def _present_first_dual
            [stem + "ива", stem_transliterated + "iva"]
          end

          def _present_first_plural
            [stem + "им", stem_transliterated + "im"]
          end

          def _present_second_singular
            [stem + "иш", stem_transliterated + "iś"]
          end

          def _present_second_dual
            [stem + "ита", stem_transliterated + "ita"]
          end

          def _present_second_plural
            [stem + "ите", stem_transliterated + "ite"]
          end

          def _present_third_singular
            [stem + "ит", stem_transliterated + "it"]
          end

          def _present_third_dual
            _present_second_dual
          end

          def _present_third_plural
            [stem + "ат", stem_transliterated + "at"]
          end
        end
      end
    end
  end
end
