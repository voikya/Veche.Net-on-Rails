require_relative 'regular'

module Morphology
  module Tunisian
    module Verbs
      module SecondConjugation
        module VowellessStem
          include SecondConjugation::Regular

          def subtype
            "Vowelless Stem"
          end
        end
      end
    end
  end
end
