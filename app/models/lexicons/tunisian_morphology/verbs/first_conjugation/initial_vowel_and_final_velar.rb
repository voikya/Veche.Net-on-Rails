require_relative 'final_velar'
require_relative 'initial_vowel'

module Morphology
  module Tunisian
    module Verbs
      module FirstConjugation
        module InitialVowelAndFinalVelar
          include FirstConjugation::InitialVowel
          include FirstConjugation::FinalVelar

          def subtype
            "Initial Vowel and Final C/G"
          end
        end
      end
    end
  end
end
