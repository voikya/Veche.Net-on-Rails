require_relative 'regular'

module Morphology
  module Tunisian
    module Adjectives
      module Adjective
        module MetathesizingL
          include Adjective::Regular

          def subtype
            "Metathesizing L"
          end

          def _masculine_singular
            strong[0...-2] + "lu"
          end

          def _plural
            strong[0...-2] + "lus"
          end
        end
      end
    end
  end
end
