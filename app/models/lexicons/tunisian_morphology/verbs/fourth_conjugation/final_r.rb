require_relative 'regular'

module Morphology
  module Tunisian
    module Verbs
      module FourthConjugation
        module FinalR
          include FourthConjugation::Regular

          def subtype
            "Final R"
          end

          def _present_second_singular
            strong + "es"
          end

          def _subjunctive_second_singular
            ablaut + "es"
          end

          def _future_simple_first_singular
            strong + "eray"
          end

          def _future_simple_second_singular
            strong + "erais"
          end

          def _future_simple_third_singular
            strong + "eray"
          end

          def _future_simple_first_plural
            strong + "erems"
          end

          def _future_simple_second_plural
            strong + "erets"
          end

          def _future_simple_third_plural
            strong + "eré"
          end
        end
      end
    end
  end
end
