require_relative 'regular'

module Morphology
  module Tunisian
    module Nouns
      module Feminine
        module EndingInZt
          include Feminine::Regular

          def subtype
            "Ending in -zte"
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
