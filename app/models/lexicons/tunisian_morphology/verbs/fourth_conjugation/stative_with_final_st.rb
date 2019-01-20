require_relative 'stative'

module Morphology
  module Tunisian
    module Verbs
      module FourthConjugation
        module StativeWithFinalSt
          include FourthConjugation::Stative

          def subtype
            "Stative with Final -st"
          end

          def _preterite_third_singular
            strong[0..-3] + "çs"
          end

          def _preterite_third_plural
            strong[0..-3] + "çs"
          end
        end
      end
    end
  end
end
