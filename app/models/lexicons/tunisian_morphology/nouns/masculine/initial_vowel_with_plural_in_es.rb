require_relative 'initial_vowel'
require_relative 'plural_in_es'

module Morphology
  module Tunisian
    module Nouns
      module Masculine
        module InitialVowelWithPluralInEs
          include Masculine::InitialVowel
          include Masculine::PluralInEs

          def subtype
            "Initial Vowel with Plural in -es"
          end
        end
      end
    end
  end
end
