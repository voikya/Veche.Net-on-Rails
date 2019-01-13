require_relative 'initial_vowel'
require_relative 'final_velar'

module Morphology
  module Tunisian
    module Verbs
      module ThirdConjugation
        module InitialVowelAndFinalVelar
          include ThirdConjugation::InitialVowel
          include ThirdConjugation::FinalVelar

          def subtype
            "Initial Vowel and Final C/G"
          end
        end
      end
    end
  end
end
