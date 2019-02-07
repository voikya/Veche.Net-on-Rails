require_relative 'nisbe'

module Morphology
  module Tunisian
    module Adjectives
      module Adjective
        module StressedNisbe
          include Adjective::Nisbe

          def subtype
            "Stressed Nisbe"
          end

          def _feminine_singular
            strong + "íe"
          end

          def _plural
            strong + "ís"
          end
        end
      end
    end
  end
end
