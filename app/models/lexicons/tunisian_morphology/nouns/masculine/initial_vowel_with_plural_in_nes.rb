require_relative 'initial_vowel'
require_relative 'plural_in_nes'

module Morphology
  module Tunisian
    module Nouns
      module Masculine
        module InitialVowelWithPluralInNes
          include Masculine::InitialVowel
          include Masculine::PluralInNes

          def subtype
            "Initial Vowel with Plural in -nes"
          end
        end
      end
    end
  end
end
