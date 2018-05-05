require_relative 'regular'

module Morphology
  module Tunisian
    module Nouns
      module Feminine
        module EndingInSoftGe
          include Feminine::Regular

          def subtype
            "Ending in Soft -ge"
          end

          private

          def plural
            strong[0...-1] + "js"
          end
        end
      end
    end
  end
end
