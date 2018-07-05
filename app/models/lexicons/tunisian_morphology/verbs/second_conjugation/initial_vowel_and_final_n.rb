require_relative 'initial_vowel'
require_relative 'final_n'

module Morphology
  module Tunisian
    module Verbs
      module SecondConjugation
        module InitialVowelAndFinalN
          include SecondConjugation::InitialVowel
          include SecondConjugation::FinalN

          def subtype
            "Initial Vowel and Final N"
          end
        end
      end
    end
  end
end
