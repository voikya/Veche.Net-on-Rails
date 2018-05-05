require_relative 'regular'

module Morphology
  module Tunisian
    module Nouns
      module Masculine
        module EndingInZt
          include Masculine::Regular

          def subtype
            "Ending in -zt"
          end

          private

          def plural
            strong[0...-2] + "ćs"
          end
        end
      end
    end
  end
end
