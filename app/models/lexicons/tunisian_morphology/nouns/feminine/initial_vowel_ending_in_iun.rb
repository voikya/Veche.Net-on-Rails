require_relative 'ending_in_iun'
require_relative 'initial_vowel'

module Morphology
  module Tunisian
    module Nouns
      module Feminine
        module InitialVowelEndingInIun
          include Feminine::EndingInIun
          include Feminine::InitialVowel

          def subtype
            "Initial Vowel Ending in -iun"
          end
        end
      end
    end
  end
end
