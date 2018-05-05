require_relative 'regular'

module Morphology
  module Tunisian
    module Nouns
      module Feminine
        module EndingInHardCce
          include Feminine::Regular

          def subtype
            "Ending in Hard -cce"
          end

          private

          def singular
            strong + "ce"
          end
        end
      end
    end
  end
end
