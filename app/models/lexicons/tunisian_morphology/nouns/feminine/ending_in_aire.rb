require_relative 'regular'

module Morphology
  module Tunisian
    module Nouns
      module Feminine
        module EndingInAire
          include Feminine::Regular

          def subtype
            "Ending in -aire"
          end

          private

          def plural
            strong.sub(/air$/, "ays")
          end
        end
      end
    end
  end
end
