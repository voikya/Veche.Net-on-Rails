require_relative 'initial_vowel'
require_relative 'final_i'

module Morphology
  module Tunisian
    module Verbs
      module FirstConjugation
        module InitialVowelAndFinalI
          include FirstConjugation::InitialVowel
          include FirstConjugation::FinalI

          def subtype
            "Initial Vowel and Final I"
          end
        end
      end
    end
  end
end
