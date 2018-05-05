require_relative 'initial_vowel'
require_relative 'ending_in_hard_cce'

module Morphology
  module Tunisian
    module Nouns
      module Feminine
        module InitialVowelEndingInHardCce
          include Feminine::InitialVowel
          include Feminine::EndingInHardCce

          def subtype
            "Initial Vowel Ending in Hard -cce"
          end
        end
      end
    end
  end
end
