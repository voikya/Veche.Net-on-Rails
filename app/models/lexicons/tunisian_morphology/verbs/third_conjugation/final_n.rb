require_relative 'regular'

module Morphology
  module Tunisian
    module Verbs
      module ThirdConjugation
        module FinalN
          include ThirdConjugation::Regular

          def subtype
            "Final N"
          end

          def _present_second_singular
            strong[0..-2] + "is"
          end

          def _subjunctive_second_singular
            ablaut[0..-2] + "is"
          end

          def _future_simple_first_singular
            strong + "dray"
          end

          def _future_simple_second_singular
            strong + "drais"
          end

          def _future_simple_third_singular
            strong + "dray"
          end

          def _future_simple_first_plural
            strong + "drems"
          end

          def _future_simple_second_plural
            strong + "drets"
          end

          def _future_simple_third_plural
            strong + "dré"
          end
        end
      end
    end
  end
end
