require_relative 'initial_vowel'

module Morphology
  module Tunisian
    module Nouns
      module Masculine
        module InitialY
          include Masculine::InitialVowel

          def subtype
            "Initial Y"
          end

          def _definite_singular_absolute
            "l-" + singular.sub(/^[Yy]/, { 'Y' => 'U', 'y' => 'u' })
          end

          def _definite_plural_absolute
            "l-" + plural.sub(/^[Yy]/, { 'Y' => 'U', 'y' => 'u' })
          end
        end
      end
    end
  end
end
