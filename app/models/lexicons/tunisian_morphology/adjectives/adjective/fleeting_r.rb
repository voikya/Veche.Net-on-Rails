require_relative 'regular'

module Morphology
  module Tunisian
    module Adjectives
      module Adjective
        module FleetingR
          include Adjective::Regular

          def subtype
            "Fleeting R"
          end

          def _masculine_singular
            strong.sub(/ar$/, 'á')
                  .sub(/èr$/, 'é')
                  .sub(/or$/, 'ó')
                  .sub(/ur$/, 'ú')
          end

          def _plural
            strong + "es"
          end
        end
      end
    end
  end
end
