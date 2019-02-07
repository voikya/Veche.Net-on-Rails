require_relative 'regular'

module Morphology
  module Tunisian
    module Adjectives
      module Adjective
        module DemonstrativeAdjective
          include Adjective::Regular

          def subtype
            "Adjective Adjective"
          end

          def _feminine_singular
            if strong == "iccest"
              "icste"
            elsif strong == "icceo"
              "icle"
            end
          end

          def _plural
            if strong == "iccest"
              "icceçs"
            elsif strong == "icceo"
              "iccels"
            end
          end
        end
      end
    end
  end
end
