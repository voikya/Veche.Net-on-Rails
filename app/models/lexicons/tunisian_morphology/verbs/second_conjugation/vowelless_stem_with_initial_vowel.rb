require_relative 'vowelless_stem'
require_relative 'initial_vowel'

module Morphology
  module Tunisian
    module Verbs
      module SecondConjugation
        module VowellessStemWithInitialVowel
          include SecondConjugation::VowellessStem
          include SecondConjugation::InitialVowel

          def subtype
            "Vowelless Stem with Initial Vowel"
          end
        end
      end
    end
  end
end
