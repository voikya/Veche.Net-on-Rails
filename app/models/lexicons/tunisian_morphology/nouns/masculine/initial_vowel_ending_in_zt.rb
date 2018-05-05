require_relative 'initial_vowel'
require_relative 'ending_in_zt'

module Morphology
  module Tunisian
    module Nouns
      module Masculine
        module InitialVowelEndingInZt
          include Masculine::InitialVowel
          include Masculine::EndingInZt

          def subtype
            "Initial Vowel Ending in -zt"
          end
        end
      end
    end
  end
end
