require_relative 'regular'

module Morphology
  module Tunisian
    module Verbs
      module FirstConjugation
        module FinalO
          include FirstConjugation::Regular

          def subtype
            "Final O"
          end

          def _present_first_singular
            ablaut + "e"
          end

          def _present_third_singular
            strong + "e"
          end

          def _imperfect_first_plural
            weak + "ívams"
          end

          def _imperfect_second_plural
            weak + "ívats"
          end

          def _subjunctive_first_singular
            ablaut + "e"
          end

          def _subjunctive_third_singular
            ablaut + "e"
          end

          def _future_simple_first_singular
            strong[0...-1] + "uray"
          end

          def _future_simple_second_singular
            strong[0...-1] + "urais"
          end

          def _future_simple_third_singular
            strong[0...-1] + "uray"
          end

          def _future_simple_first_plural
            strong[0...-1] + "urems"
          end

          def _future_simple_second_plural
            strong[0...-1] + "urets"
          end

          def _future_simple_third_plural
            strong[0...-1] + "uré"
          end

          def _imperative_second_singular
            strong + "e"
          end

          def _imperative_second_plural
            strong + "ít"
          end
        end
      end
    end
  end
end
