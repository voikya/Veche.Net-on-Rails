require_relative '../masculine/regular'

module Morphology
  module Alashian
    module Nouns
      module Irregular
        module Hulan
          include Masculine::Regular

          def declension
            "Masculine Noun"
          end

          def subtype
            "Irregular"

          def _absolute_singular
            ["ηυλαν", "hulan"]
          end

          def _absolute_plural
            ["ηυννιην", "hunnien"]
          end

          def _construct_singular
            _absolute_singular
          end

          def _construct_plural
            ["ηυννη", "hunnē"]
          end
          end
        end
      end
    end
  end
end
