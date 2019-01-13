require_relative 'strong_preterite'
require_relative 'final_n'

module Morphology
  module Tunisian
    module Verbs
      module ThirdConjugation
        module StrongPreteriteWithFinalN
          include ThirdConjugation::StrongPreterite
          include ThirdConjugation::FinalN

          def subtype
            "Strong Preterite with Final N"
          end
        end
      end
    end
  end
end
