require_relative '../masculine/regular'

module Morphology
  module Alashian
    module Nouns
      module Irregular
        module Sen
          include Masculine::Regular

          def declension
            "Masculine Noun"
          end

          def subtype
            "Irregular"
          end

          def _absolute_singular
            ["σην", "sēn"]
          end

          def _absolute_plural
            ["εσκιων", "'eskyān"]
          end

          def _construct_singular
            ["σην", "sēn"]
          end

          def _construct_plural
            ["εσκιων", "'eskyān"]
          end
        end
      end
    end
  end
end
