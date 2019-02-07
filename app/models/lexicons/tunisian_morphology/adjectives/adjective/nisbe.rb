require_relative 'regular'

module Morphology
  module Tunisian
    module Adjectives
      module Adjective
        module Nisbe
          include Adjective::Regular

          def subtype
            "Nisbe"
          end

          def _masculine_singular
            strong + "í"
          end

          def _feminine_singular
            strong + "ie"
          end

          def _plural
            strong + "is"
          end
        end
      end
    end
  end
end
