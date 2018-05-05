require_relative 'initial_vowel'
require_relative 'palatalizing_n'

module Morphology
  module Tunisian
    module Nouns
      module Masculine
        module InitialVowelAndPalatalizingN
          include Masculine::InitialVowel
          include Masculine::PalatalizingN

          def subtype
            "Initial Vowel and Palatalizing N"
          end
        end
      end
    end
  end
end
