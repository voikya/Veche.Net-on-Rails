require_relative 'regular'

module Morphology
  module Tunisian
    module Nouns
      module Feminine
        module EndingInSoftCe
          include Feminine::Regular

          def subtype
            "Ending in Soft -ce"
          end

          private

          def plural
            strong[0...-1] + "çs"
          end
        end
      end
    end
  end
end
