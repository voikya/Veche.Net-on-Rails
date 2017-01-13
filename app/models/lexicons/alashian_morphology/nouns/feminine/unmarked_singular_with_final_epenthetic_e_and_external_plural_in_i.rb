require_relative 'external_plural_in_i'

module Morphology
  module Alashian
    module Nouns
      module Feminine
        module UnmarkedSingularWithFinalEpentheticEAndExternalPluralInI
          include Feminine::ExternalPluralInI

          def subtype
            "Unmarked Singular with Final Epenthetic -e and External Plural in -ī"
          end

          def _absolute_singular
            [stem + "ε", stem_transliterated + "e"]
          end

          def _construct_singular
            [stem + "ε", stem_transliterated + "e"]
          end
        end
      end
    end
  end
end
