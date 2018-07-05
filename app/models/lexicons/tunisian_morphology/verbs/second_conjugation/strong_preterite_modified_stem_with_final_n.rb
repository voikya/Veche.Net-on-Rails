require_relative 'strong_preterite_modified_stem'
require_relative 'final_n'

module Morphology
  module Tunisian
    module Verbs
      module SecondConjugation
        module StrongPreteriteModifiedStemWithFinalN
          include SecondConjugation::StrongPreteriteModifiedStem
          include SecondConjugation::FinalN

          def subtype
            "Strong Preterite (Modified Stem) with Final N"
          end
        end
      end
    end
  end
end
