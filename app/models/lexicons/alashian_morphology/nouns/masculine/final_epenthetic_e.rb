require_relative 'regular'

module Morphology
  module Alashian
    module Nouns
      module Masculine
        module FinalEpentheticE
          include Masculine::Regular

          def subtype
            "Final Epenthetic -e"
          end

          def _absolute_singular
            [stem + "ε", stem_transliterated + "e"]
          end
        end
      end
    end
  end
end
