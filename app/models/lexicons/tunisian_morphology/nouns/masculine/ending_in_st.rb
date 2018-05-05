require_relative 'regular'

module Morphology
  module Tunisian
    module Nouns
      module Masculine
        module EndingInSt
          include Masculine::Regular

          def subtype
            "Ending in -st"
          end

          private

          def plural
            strong[0...-2] + "çs"
          end
        end
      end
    end
  end
end
