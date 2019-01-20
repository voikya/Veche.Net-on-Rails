require_relative 'is_suffix'
require_relative 'initial_y'

module Morphology
  module Tunisian
    module Verbs
      module FourthConjugation
        module IsSuffixWithInitialY
          include FourthConjugation::IsSuffix
          include FourthConjugation::InitialY

          def subtype
            "-is- Suffix with Initial Y"
          end
        end
      end
    end
  end
end
