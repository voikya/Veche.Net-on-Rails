require_relative 'initial_vowel'
require_relative 'final_m'

module Morphology
  module Tunisian
    module Verbs
      module ThirdConjugation
        module InitialVowelAndFinalM
          include ThirdConjugation::InitialVowel
          include ThirdConjugation::FinalM

          def subtype
            "Initial Vowel and Final M"
          end
        end
      end
    end
  end
end
