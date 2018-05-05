require_relative 'initial_vowel'
require_relative 'palatalizing_n'

module Morphology
  module Tunisian
    module Nouns
      module Feminine
        module InitialVowelAndPalatalizingN
          include Feminine::InitialVowel
          include Feminine::PalatalizingN

          def subtype
            "Initial Vowel and Palatalizing N"
          end
        end
      end
    end
  end
end
