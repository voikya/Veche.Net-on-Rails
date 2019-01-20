require_relative 'is_suffix'
require_relative 'initial_vowel'

module Morphology
  module Tunisian
    module Verbs
      module FourthConjugation
        module IsSuffixWithInitialVowel
          include FourthConjugation::IsSuffix
          include FourthConjugation::InitialVowel

          def subtype
            "-is- Suffix with Initial Vowel"
          end
        end
      end
    end
  end
end
