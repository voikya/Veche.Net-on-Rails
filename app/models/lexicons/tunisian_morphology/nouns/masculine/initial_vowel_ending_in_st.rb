require_relative 'initial_vowel'
require_relative 'ending_in_st'

module Morphology
  module Tunisian
    module Nouns
      module Masculine
        module InitialVowelEndingInSt
          include Masculine::InitialVowel
          include Masculine::EndingInSt

          def subtype
            "Initial Vowel Ending in -st"
          end
        end
      end
    end
  end
end
