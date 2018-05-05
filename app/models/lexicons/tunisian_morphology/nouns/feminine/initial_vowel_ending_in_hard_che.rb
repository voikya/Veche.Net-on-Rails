require_relative 'initial_vowel'
require_relative 'ending_in_hard_che'

module Morphology
  module Tunisian
    module Nouns
      module Feminine
        module InitialVowelEndingInHardChe
          include Feminine::InitialVowel
          include Feminine::EndingInHardChe

          def subtype
            "Initial Vowel Ending in Hard -che"
          end
        end
      end
    end
  end
end
