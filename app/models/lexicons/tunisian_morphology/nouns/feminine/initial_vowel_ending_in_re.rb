require_relative 'ending_in_re'
require_relative 'initial_vowel'

module Morphology
  module Tunisian
    module Nouns
      module Feminine
        module InitialVowelEndingInRe
          include Feminine::EndingInRe
          include Feminine::InitialVowel

          def subtype
            "Initial Vowel Ending in -re"
          end
        end
      end
    end
  end
end
