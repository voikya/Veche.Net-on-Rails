require_relative 'vowelless_stem'
require_relative 'initial_y'

module Morphology
  module Tunisian
    module Verbs
      module FirstConjugation
        module VowellessStemWithInitialY
          include FirstConjugation::VowellessStem
          include FirstConjugation::InitialY

          def subtype
            "Vowelless Stem with Initial Y"
          end
        end
      end
    end
  end
end
