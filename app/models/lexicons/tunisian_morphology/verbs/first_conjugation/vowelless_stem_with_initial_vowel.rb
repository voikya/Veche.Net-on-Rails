require_relative 'vowelless_stem'
require_relative 'initial_vowel'

module Morphology
  module Tunisian
    module Verbs
      module FirstConjugation
        module VowellessStemWithInitialVowel
          include FirstConjugation::VowellessStem
          include FirstConjugation::InitialVowel

          def subtype
            "Vowelless Stem with Initial Vowel"
          end
        end
      end
    end
  end
end
