require_relative '../masculine/regular'

module Morphology
  module Alashian
    module Nouns
      module Irregular
        module Is
          include Masculine::Regular

          def declension
            "Masculine Noun"
          end

          def subtype
            "Irregular"
          end

          def _absolute_singular
            ["εις", "'īs"]
          end

          def _absolute_plural
            ["ινεις", "'inīs"]
          end

          def _construct_singular
            _absolute_singular
          end

          def _construct_plural
            _absolute_plural
          end
        end
      end
    end
  end
end
