require_relative 'unmarked_singular'

module Morphology
  module Alashian
    module Nouns
      module Feminine
        module UnmarkedSingularWithFinalEpentheticE
          include Feminine::UnmarkedSingular

          def subtype
            "Unmarked Singular with Final Epenthetic -e"
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
