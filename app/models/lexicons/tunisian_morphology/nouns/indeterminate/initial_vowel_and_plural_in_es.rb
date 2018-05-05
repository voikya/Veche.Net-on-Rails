require_relative 'initial_vowel'
require_relative 'plural_in_es'

module Morphology
  module Tunisian
    module Nouns
      module Indeterminate
        module InitialVowelAndPluralInEs
          include Indeterminate::InitialVowel
          include Indeterminate::PluralInEs

          def subtype
            "Initial Vowel and Plural in -es"
          end
        end
      end
    end
  end
end
