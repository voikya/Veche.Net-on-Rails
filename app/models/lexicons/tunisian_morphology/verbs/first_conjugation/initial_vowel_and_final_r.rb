require_relative 'final_r'
require_relative 'initial_vowel'

module Morphology
  module Tunisian
    module Verbs
      module FirstConjugation
        module InitialVowelAndFinalR
          include FirstConjugation::InitialVowel
          include FirstConjugation::FinalR

          def subtype
            "Initial Vowel and Final R"
          end
        end
      end
    end
  end
end
