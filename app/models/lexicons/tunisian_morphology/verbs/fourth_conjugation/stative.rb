require_relative 'regular'

module Morphology
  module Tunisian
    module Verbs
      module FourthConjugation
        module Stative
          include FourthConjugation::Regular

          def subtype
            "Stative"
          end

          def _present_first_singular
            "som #{weak}èn(e)"
          end

          def _present_second_singular
            "es #{weak}èn(e)"
          end

          def _present_third_singular
            "#{weak}èn(e)"
          end

          def _present_first_plural
            "sums #{weak}eis"
          end

          def _present_second_plural
            "esç #{weak}eis"
          end

          def _present_third_plural
            "#{weak}eis"
          end

          def _preterite_third_singular
            strong + "s"
          end

          def _preterite_third_plural
            strong + "s"
          end

          def _subjunctive_first_singular
            "sí #{weak}èn(e)"
          end

          def _subjunctive_second_singular
            "sis #{weak}èn(e)"
          end

          def _subjunctive_third_singular
            "sí #{weak}èn(e)"
          end

          def _subjunctive_first_plural
            "sims #{weak}eis"
          end

          def _subjunctive_second_plural
            "sits #{weak}eis"
          end

          def _subjunctive_third_plural
            "sé #{weak}eis"
          end

          def _perfect_complex_first_singular
            "yst-sem #{_past_participle_masculine}(e)"
          end

          def _perfect_complex_second_singular
            "s-es #{_past_participle_masculine}(e)"
          end

          def _perfect_complex_third_singular
            "s-e #{_past_participle_masculine}(e)"
          end

          def _perfect_complex_first_plural
            "yst-sems #{_past_participle_masculine}s"
          end

          def _perfect_complex_second_plural
            "s-esç #{_past_participle_masculine}s"
          end

          def _perfect_complex_third_plural
            "yst-só #{_past_participle_masculine}s"
          end

          def _perfect_simple_first_singular
            add_mediopassive_clitic("#{_past_participle_masculine}-em", :_perfect_simple_first_singular)
          end

          def _perfect_simple_second_singular
            add_mediopassive_clitic("#{_past_participle_masculine}-es", :_perfect_simple_second_singular)
          end

          def _perfect_simple_third_singular
            add_mediopassive_clitic("#{_past_participle_masculine}-e", :_perfect_simple_third_singular)
          end

          def _perfect_simple_first_plural
            add_mediopassive_clitic("#{_past_participle_masculine}-esms", :_perfect_simple_first_plural)
          end

          def _perfect_simple_second_plural
            add_mediopassive_clitic("#{_past_participle_masculine}-esç", :_perfect_simple_second_plural)
          end

          def _perfect_simple_third_plural
            add_mediopassive_clitic("#{_past_participle_masculine}-çu", :_perfect_simple_third_plural)
          end
        end
      end
    end
  end
end
