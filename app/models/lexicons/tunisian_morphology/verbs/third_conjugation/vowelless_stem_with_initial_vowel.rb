require_relative 'vowelless_stem'
require_relative 'initial_vowel'

module Morphology
  module Tunisian
    module Verbs
      module ThirdConjugation
        module VowellessStemWithInitialVowel
          include ThirdConjugation::VowellessStem
          include ThirdConjugation::InitialVowel

          def subtype
            "Vowelless Stem Initial Vowel"
          end
        end
      end
    end
  end
end
