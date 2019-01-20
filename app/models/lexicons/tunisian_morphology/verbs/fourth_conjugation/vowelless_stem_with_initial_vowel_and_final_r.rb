require_relative 'vowelless_stem'
require_relative 'initial_vowel'
require_relative 'final_r'

module Morphology
  module Tunisian
    module Verbs
      module FourthConjugation
        module VowellessStemWithInitialVowelAndFinalR
          include FourthConjugation::VowellessStem
          include FourthConjugation::InitialVowel
          include FourthConjugation::FinalR

          def subtype
            "Vowelless Stem with Initial Vowel and Final R"
          end
        end
      end
    end
  end
end
