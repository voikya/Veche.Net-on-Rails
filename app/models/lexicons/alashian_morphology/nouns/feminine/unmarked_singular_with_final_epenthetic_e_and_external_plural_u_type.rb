require_relative 'unmarked_singular_with_final_epenthetic_e'

module Morphology
  module Alashian
    module Nouns
      module Feminine
        module UnmarkedSingularWithFinalEpentheticEAndExternalPluralUType
          include Feminine::UnmarkedSingularWithFinalEpentheticE

          def subtype
            "Unmarked Singular with Final Epenthetic -e and Ū-Type External Plural"
          end

          def _absolute_plural
            [stem + "ους̄", stem_transliterated + "ūš"]
          end
        end
      end
    end
  end
end
