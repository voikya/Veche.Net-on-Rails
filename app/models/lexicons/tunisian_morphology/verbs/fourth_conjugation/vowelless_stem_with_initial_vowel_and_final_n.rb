require_relative 'vowelless_stem'
require_relative 'initial_vowel'
require_relative 'final_n'

module Morphology
  module Tunisian
    module Verbs
      module FourthConjugation
        module VowellessStemWithInitialVowelAndFinalN
          include FourthConjugation::VowellessStem
          include FourthConjugation::InitialVowel
          include FourthConjugation::FinalN

          def subtype
            "Vowelless Stem with Initial Vowel and Final N"
          end
        end
      end
    end
  end
end
