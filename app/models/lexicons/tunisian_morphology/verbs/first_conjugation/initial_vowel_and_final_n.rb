require_relative 'initial_vowel'
require_relative 'final_n'

module Morphology
  module Tunisian
    module Verbs
      module FirstConjugation
        module InitialVowelAndFinalN
          include FirstConjugation::InitialVowel
          include FirstConjugation::FinalN

          def subtype
            "Initial Vowel and Final N"
          end
        end
      end
    end
  end
end
