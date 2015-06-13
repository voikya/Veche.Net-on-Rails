require_relative './regular_ending_stressed'

module Morphology
  module Novegradian
    module Verbs
      module IConjugation
        module RegularDynamic2
          include IConjugation::RegularEndingStressed

          def conjugation
            "I Conjugation"
          end

          def subtype
            "Regular Dynamic-Stressed Type 2"
          end

          def _present_first_singular
            if neoacute?
              [neoacute(stem_mutated) + "ун", neoacute_transliterated(stem_transliterated_mutated) + "un"]
            else
              [stem_mutated + "ун", stem_transliterated_mutated + "un"]
            end
          end

          def _present_first_dual
            if neoacute?
              [neoacute(stem) + "ива", neoacute_transliterated(stem_transliterated) + "iva"]
            else
              [stem + "ива", stem_transliterated + "iva"]
            end
          end

          def _present_first_plural
            if neoacute?
              [neoacute(stem) + "им", neoacute_transliterated(stem_transliterated) + "im"]
            else
              [stem + "им", stem_transliterated + "im"]
            end
          end

          def _present_second_singular
            if neoacute?
              [neoacute(stem) + "иш", neoacute_transliterated(stem_transliterated) + "iś"]
            else
              [stem + "иш", stem_transliterated + "iś"]
            end
          end

          def _present_second_dual
            if neoacute?
              [neoacute(stem) + "ита", neoacute_transliterated(stem_transliterated) + "ita"]
            else
              [stem + "ита", stem_transliterated + "ita"]
            end
          end

          def _present_second_plural
            if neoacute?
              [neoacute(stem) + "ите", neoacute_transliterated(stem_transliterated) + "ite"]
            else
              [stem + "ите", stem_transliterated + "ite"]
            end
          end

          def _present_third_singular
            if neoacute?
              [neoacute(stem) + "ит", neoacute_transliterated(stem_transliterated) + "it"]
            else
              [stem + "ит", stem_transliterated + "it"]
            end
          end

          def _present_third_dual
            _present_second_dual
          end

          def _present_third_plural
            if neoacute?
              [neoacute(stem) + "ат", neoacute_transliterated(stem_transliterated) + "at"]
            else
              [stem + "ат", stem_transliterated + "at"]
            end
          end
        end
      end
    end
  end
end
