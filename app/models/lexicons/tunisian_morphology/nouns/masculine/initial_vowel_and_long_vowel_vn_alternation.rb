require_relative 'initial_vowel'
require_relative 'long_vowel_vn_alternation'

module Morphology
  module Tunisian
    module Nouns
      module Masculine
        module InitialVowelAndLongVowelVnAlternation
          include Masculine::InitialVowel
          include Masculine::LongVowelVnAlternation

          def subtype
            "Initial Vowel and Long Vowel ~ Vn Alternation"
          end
        end
      end
    end
  end
end
