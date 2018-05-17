require_relative 'regular'

module Morphology
  module Tunisian
    module Verbs
      module FirstConjugation
        module FinalI
          include FirstConjugation::Regular

          def subtype
            "Final I"
          end

          def _present_first_singular
            ablaut[0...-1] + "e"
          end

          def _present_second_singular
            strong + "s"
          end

          def _present_third_singular
            strong[0...-1] + "e"
          end

          def _imperfect_first_plural
            weak + "vams"
          end

          def _imperfect_second_plural
            weak + "vats"
          end

          def _preterite_first_singular
            weak[0...-1] + "ís"
          end

          def _preterite_second_singular
            weak[0...-1] + "ís"
          end

          def _preterite_third_singular
            weak[0...-1] + "ís"
          end

          def _preterite_first_plural
            weak[0...-1] + "írims"
          end

          def _preterite_second_plural
            weak[0...-1] + "írisç"
          end

          def _preterite_third_plural
            weak[0...-1] + "íré"
          end

          def _subjunctive_first_singular
            ablaut[0...-1] + "e"
          end

          def _subjunctive_third_singular
            ablaut[0...-1] + "e"
          end

          def _imperative_second_singular
            strong[0...-1] + "e"
          end

          def _imperative_second_plural
            strong[0...-1] + "ít"
          end
        end
      end
    end
  end
end
