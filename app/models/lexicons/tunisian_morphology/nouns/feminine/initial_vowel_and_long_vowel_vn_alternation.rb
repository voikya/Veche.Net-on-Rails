require_relative 'initial_vowel'
require_relative 'long_vowel_vn_alternation'

module Morphology
  module Tunisian
    module Nouns
      module Feminine
        module InitialVowelAndLongVowelVnAlternation
          include Feminine::InitialVowel
          include Feminine::LongVowelVnAlternation

          def subtype
            "Initial Vowel and Long Vowel ~ Vn Alternation"
          end
        end
      end
    end
  end
end
