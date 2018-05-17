require_relative 'regular'

module Morphology
  module Tunisian
    module Verbs
      module FirstConjugation
        module FinalCluster
          include FirstConjugation::Regular

          def subtype
            "Final Consonant Cluster"
          end

          def _present_first_singular
            ablaut + "e"
          end

          def _present_third_singular
            strong + "e"
          end

          def _subjunctive_first_singular
            ablaut + "e"
          end

          def _subjunctive_third_singular
            ablaut + "e"
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
