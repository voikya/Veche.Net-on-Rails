require_relative 'initial_y'
require_relative 'long_vowel_vn_alternation'

module Morphology
  module Tunisian
    module Nouns
      module Feminine
        module InitialYAndLongVowelVnAlternation
          include Feminine::InitialY
          include Feminine::LongVowelVnAlternation

          def subtype
            "Initial Y and Long Vowel ~ Vn Alternation"
          end
        end
      end
    end
  end
end
