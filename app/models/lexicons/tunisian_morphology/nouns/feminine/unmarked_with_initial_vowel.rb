require_relative 'initial_vowel'
require_relative 'unmarked'

module Morphology
  module Tunisian
    module Nouns
      module Feminine
        module UnmarkedWithInitialVowel
          include Feminine::InitialVowel
          include Feminine::Unmarked

          def subtype
            "Unmarked with Initial Vowel"
          end
        end
      end
    end
  end
end
