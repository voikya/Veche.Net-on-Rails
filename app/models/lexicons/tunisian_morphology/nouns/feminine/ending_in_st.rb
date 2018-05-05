require_relative 'regular'

module Morphology
  module Tunisian
    module Nouns
      module Feminine
        module EndingInSt
          include Feminine::Regular

          def subtype
            "Ending in -ste"
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
