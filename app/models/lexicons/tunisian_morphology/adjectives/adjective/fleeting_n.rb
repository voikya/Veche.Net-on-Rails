require_relative 'regular'

module Morphology
  module Tunisian
    module Adjectives
      module Adjective
        module FleetingN
          include Adjective::Regular

          def subtype
            "Fleeting N"
          end

          def _masculine_singular
            strong.sub(/an$/, 'á')
                  .sub(/èn$/, 'é')
                  .sub(/on$/, 'ó')
                  .sub(/un$/, 'ú')
          end

          def _plural
            strong[0...-1] + "is"
          end
        end
      end
    end
  end
end
