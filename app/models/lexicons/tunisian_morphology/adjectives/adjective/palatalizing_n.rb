require_relative 'regular'

module Morphology
  module Tunisian
    module Adjectives
      module Adjective
        module PalatalizingN
          include Adjective::Regular

          def subtype
            "Palatalizing N"
          end

          def _plural
            strong[0...-1] + "is"
          end
        end
      end
    end
  end
end
