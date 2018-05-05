require_relative 'initial_vowel'
require_relative 'ending_in_st'

module Morphology
  module Tunisian
    module Nouns
      module Feminine
        module InitialVowelEndingInSt
          include Feminine::InitialVowel
          include Feminine::EndingInSt

          def subtype
            "Initial Vowel Ending in -ste"
          end
        end
      end
    end
  end
end
