require_relative '../masculine/regular'

module Morphology
  module Alashian
    module Nouns
      module Irregular
        module Sta
          include Masculine::Regular

          def declension
            "Masculine Noun"
          end

          def subtype
            "Irregular"
          end

          def _absolute_singular
            ["στω", "stā"]
          end

          def _absolute_plural
            ["στουιην", "stūyēn"]
          end

          def _construct_singular
            ["στω", "stā"]
          end

          def _construct_plural
            ["στουιη", "stūyē"]
          end
        end
      end
    end
  end
end
