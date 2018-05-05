require_relative 'regular'

module Morphology
  module Tunisian
    module Nouns
      module Feminine
        module EndingInRe
          include Feminine::Regular

          def subtype
            "Ending in -(C)re"
          end

          private

          def plural
            strong.sub(/r$/, "ores")
          end
        end
      end
    end
  end
end
