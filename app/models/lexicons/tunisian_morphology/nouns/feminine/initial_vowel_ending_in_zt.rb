require_relative 'initial_vowel'
require_relative 'ending_in_zt'

module Morphology
  module Tunisian
    module Nouns
      module Feminine
        module InitialVowelEndingInZt
          include Feminine::InitialVowel
          include Feminine::EndingInZt

          def subtype
            "Initial Vowel Ending in -zte"
          end
        end
      end
    end
  end
end
