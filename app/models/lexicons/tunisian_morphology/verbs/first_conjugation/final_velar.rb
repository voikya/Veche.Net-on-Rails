require_relative 'regular'

module Morphology
  module Tunisian
    module Verbs
      module FirstConjugation
        module FinalVelar
          include FirstConjugation::Regular

          def subtype
            "Final C/G"
          end

          def _present_participle_masculine
            weak + hard_velar_marker(weak) + "èn"
          end

          def _present_participle_feminine
            weak + hard_velar_marker(weak) + "ène"
          end

          def _present_participle_plural
            weak + hard_velar_marker(weak) + "eis"
          end

          def _present_third_plural
            strong + hard_velar_marker(strong) + "é"
          end

          def _imperfect_first_plural
            weak + hard_velar_marker(weak) + "ivams"
          end

          def _imperfect_second_plural
            weak + hard_velar_marker(weak) + "ivats"
          end

          def _preterite_first_singular
            palatalized_weak + "ís"
          end

          def _preterite_second_singular
            palatalized_weak + "ís"
          end

          def _preterite_third_singular
            palatalized_weak + "ís"
          end

          def _preterite_first_plural
            palatalized_weak + "írims"
          end

          def _preterite_second_plural
            palatalized_weak + "írisç"
          end

          def _preterite_third_plural
            palatalized_weak + "íré"
          end

          def _subjunctive_first_plural
            weak + hard_velar_marker(weak) + "èms"
          end

          def _subjunctive_second_plural
            weak + hard_velar_marker(weak) + "èts"
          end

          def _subjunctive_third_plural
            ablaut + hard_velar_marker(weak) + "é"
          end

          def _imperative_second_plural
            strong + hard_velar_marker(weak) + "it"
          end

          private

          def palatalized_weak
            weak[0...-1] + (weak[-1] == "c" ? "ç" : "j")
          end

          def hard_velar_marker(base)
            # cc/gg after a vowel, ch/gh otherwise
            vowel?(base[-2]) ? base[-1] : "h"
          end
        end
      end
    end
  end
end
