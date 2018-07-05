require_relative 'regular'

module Morphology
  module Tunisian
    module Verbs
      module SecondConjugation
        module FinalN
          include SecondConjugation::Regular

          def subtype
            "Final N"
          end

          def _present_second_singular
            if strong =~ /[ií]n$/
              strong[0...-2] + "ís"
            else
              strong[0...-1] + "is"
            end
          end

          def _subjunctive_second_singular
            if ablaut =~ /[ií]n$/
              ablaut[0...-2] + "ís"
            else
              ablaut[0...-1] + "is"
            end
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
