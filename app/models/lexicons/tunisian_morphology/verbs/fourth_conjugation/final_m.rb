require_relative 'regular'

module Morphology
  module Tunisian
    module Verbs
      module FourthConjugation
        module FinalM
          include FourthConjugation::Regular

          def subtype
            "Final M"
          end

          def _future_simple_first_singular
            strong + "bray"
          end

          def _future_simple_second_singular
            strong + "brais"
          end

          def _future_simple_third_singular
            strong + "bray"
          end

          def _future_simple_first_plural
            strong + "brems"
          end

          def _future_simple_second_plural
            strong + "brets"
          end

          def _future_simple_third_plural
            strong + "bré"
          end
        end
      end
    end
  end
end
