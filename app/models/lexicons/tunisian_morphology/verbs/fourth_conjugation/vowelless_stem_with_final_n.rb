require_relative 'vowelless_stem'
require_relative 'final_n'

module Morphology
  module Tunisian
    module Verbs
      module FourthConjugation
        module VowellessStemWithFinalN
          include FourthConjugation::VowellessStem
          include FourthConjugation::FinalN

          def subtype
            "Vowelless Stem with Final N"
          end
        end
      end
    end
  end
end
