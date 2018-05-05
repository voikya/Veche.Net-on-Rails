require_relative 'initial_vowel'
require_relative 'long_vowel_vi_alternation'

module Morphology
  module Tunisian
    module Nouns
      module Masculine
        module InitialVowelAndLongVowelViAlternation
          include Masculine::InitialVowel
          include Masculine::LongVowelViAlternation

          def subtype
            "Initial Vowel and Long Vowel ~ Vi Alternation"
          end
        end
      end
    end
  end
end
