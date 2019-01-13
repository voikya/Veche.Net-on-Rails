require_relative 'short_infinitive'
require_relative 'initial_vowel'

module Morphology
  module Tunisian
    module Verbs
      module ThirdConjugation
        module ShortInfinitiveWithInitialVowel
          include ThirdConjugation::ShortInfinitive
          include ThirdConjugation::InitialVowel

          def subtype
            "Short Infinitive with Initial Vowel"
          end
        end
      end
    end
  end
end
