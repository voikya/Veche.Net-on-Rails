require_relative 'vowelless_stem'
require_relative 'final_r'

module Morphology
  module Tunisian
    module Verbs
      module FourthConjugation
        module VowellessStemWithFinalR
          include FourthConjugation::VowellessStem
          include FourthConjugation::FinalR

          def subtype
            "Vowelless Stem with Final R"
          end
        end
      end
    end
  end
end
