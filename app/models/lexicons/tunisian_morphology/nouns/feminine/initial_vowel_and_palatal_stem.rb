require_relative 'initial_vowel'
require_relative 'palatal_stem'

module Morphology
  module Tunisian
    module Nouns
      module Feminine
        module InitialVowelAndPalatalStem
          include Feminine::InitialVowel
          include Feminine::PalatalStem

          def subtype
            "Initial Vowel and Palatal Stem"
          end
        end
      end
    end
  end
end
