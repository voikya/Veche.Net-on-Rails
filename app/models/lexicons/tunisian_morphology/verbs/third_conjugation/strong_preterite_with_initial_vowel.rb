require_relative 'strong_preterite'
require_relative 'initial_vowel'

module Morphology
  module Tunisian
    module Verbs
      module ThirdConjugation
        module StrongPreteriteWithInitialVowel
          include ThirdConjugation::StrongPreterite
          include ThirdConjugation::InitialVowel

          def subtype
            "Strong Preterite with Initial Vowel"
          end
        end
      end
    end
  end
end
