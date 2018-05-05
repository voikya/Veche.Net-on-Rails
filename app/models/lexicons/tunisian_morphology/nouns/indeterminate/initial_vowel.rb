require_relative 'regular'

module Morphology
  module Tunisian
    module Nouns
      module Indeterminate
        module InitialVowel
          include Indeterminate::Regular

          def subtype
            "Initial Vowel"
          end

          def _definite_plural_absolute
            "l-" + plural
          end
        end
      end
    end
  end
end
