require_relative 'strong_preterite_with_palatalizing_n'
require_relative 'initial_vowel'

module Morphology
  module Tunisian
    module Verbs
      module ThirdConjugation
        module StrongPreteriteWithPalatalizingNAndInitialVowel
          include ThirdConjugation::StrongPreteriteWithPalatalizingN
          include ThirdConjugation::InitialVowel

          def subtype
            "Strong Preterite With Palatalizing N and Initial Vowel"
          end
        end
      end
    end
  end
end
