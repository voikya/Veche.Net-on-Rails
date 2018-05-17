require_relative 'initial_vowel'
require_relative 'ending_in_soft_ce'

module Morphology
  module Tunisian
    module Nouns
      module Feminine
        module InitialVowelEndingInSoftCe
          include Feminine::InitialVowel
          include Feminine::EndingInSoftCe

          def subtype
            "Initial Vowel Ending in Soft -ce"
          end
        end
      end
    end
  end
end
