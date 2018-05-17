require_relative 'regular'

module Morphology
  module Tunisian
    module Verbs
      module FirstConjugation
        module VowellessStem
          include FirstConjugation::Regular

          def subtype
            "Vowelless Stem"
          end
        end
      end
    end
  end
end
