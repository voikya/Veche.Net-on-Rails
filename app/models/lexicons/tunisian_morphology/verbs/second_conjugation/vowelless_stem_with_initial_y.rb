require_relative 'vowelless_stem'
require_relative 'initial_y'

module Morphology
  module Tunisian
    module Verbs
      module SecondConjugation
        module VowellessStemWithInitialY
          include SecondConjugation::VowellessStem
          include SecondConjugation::InitialY

          def subtype
            "Vowelless Stem with Initial Y"
          end
        end
      end
    end
  end
end
