require_relative 'external_plural_in_ien'

module Morphology
  module Alashian
    module Nouns
      module Feminine
        module UnmarkedSingularWithFinalEpentheticEAndExternalPluralInIen
          include Feminine::ExternalPluralInIen

          def subtype
            "Unmarked Singular with Final Epenthetic -e and External Plural in -ien"
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
