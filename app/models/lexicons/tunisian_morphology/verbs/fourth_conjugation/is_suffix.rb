require_relative 'regular'

module Morphology
  module Tunisian
    module Verbs
      module FourthConjugation
        module IsSuffix
          include FourthConjugation::Regular

          def subtype
            "-is- Suffix"
          end

          def _present_participle_masculine
            strong + "èn"
          end

          def _present_participle_feminine
            strong + "ène"
          end

          def _present_participle_plural
            strong + "eis"
          end

          def _past_participle_masculine
            strong[0..-3] + "it"
          end

          def _past_participle_feminine
            strong[0..-3] + "ite"
          end

          def _past_participle_plural
            strong[0..-3] + "its"
          end
        end
      end
    end
  end
end
