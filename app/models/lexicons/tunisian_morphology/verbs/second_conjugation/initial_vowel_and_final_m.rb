require_relative 'initial_vowel'
require_relative 'final_m'

module Morphology
  module Tunisian
    module Verbs
      module SecondConjugation
        module InitialVowelAndFinalM
          include SecondConjugation::InitialVowel
          include SecondConjugation::FinalM

          def subtype
            "Initial Vowel and Final M"
          end
        end
      end
    end
  end
end
