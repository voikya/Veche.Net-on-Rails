require_relative 'regular'

module Morphology
  module Tunisian
    module Verbs
      module SecondConjugation
        module FinalVelar
          include SecondConjugation::Regular

          def subtype
            "Final C/G"
          end

          def _infinitive_singular
            palatalized_weak + "é"
          end

          def _present_participle_masculine
            palatalized_weak + "èn"
          end

          def _present_participle_feminine
            palatalized_weak + "ène"
          end

          def _present_participle_plural
            palatalized_weak + "eis"
          end

          def _present_first_plural
            palatalized_weak + "èms"
          end

          def _present_second_plural
            palatalized_weak + "èts"
          end

          def _present_third_plural
            strong + strong[-1] + "é"
          end

          def _imperfect_first_singular
            palatalized_weak + "ève"
          end

          def _imperfect_second_singular
            palatalized_weak + "èvs"
          end

          def _imperfect_third_singular
            palatalized_weak + "ève"
          end

          def _imperfect_first_plural
            palatalized_weak + "ivams"
          end

          def _imperfect_second_plural
            palatalized_weak + "ivats"
          end

          def _imperfect_third_plural
            palatalized_weak + "èvé"
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
            palatalized_weak + "ams"
          end

          def _subjunctive_second_plural
            palatalized_weak + "ats"
          end

          def _subjunctive_third_plural
            ablaut + ablaut[-1] + "é"
          end

          def _imperative_second_plural
            strong + strong[-1] + "it"
          end

          private

          def palatalized_weak
            weak[0...-1] + (weak[-1] == "c" ? "ç" : "j")
          end
        end
      end
    end
  end
end
