require_relative 'regular'

module Morphology
  module Tunisian
    module Adjectives
      module Adjective
        module PossessiveAdjective
          include Adjective::Regular

          def subtype
            "Possessive Adjective"
          end

          def _feminine_singular
            if strong == "túv"
              "tuve"
            elsif strong == "lóv"
              "love"
            else
              strong + "e"
            end
          end

          def _plural
            if strong == "túv"
              "tuvs"
            elsif strong == "lóv"
              "lovs"
            elsif strong == "mí"
              "mis"
            else
              strong + "s"
            end
          end
        end
      end
    end
  end
end
