require_relative 'regular'

module Morphology
  module Tunisian
    module Nouns
      module Masculine
        module Nisbe
          include Masculine::Regular

          def subtype
            "Nisbe"
          end

          private

          def plural
            strong[0...-1] + "is"
          end
        end
      end
    end
  end
end
