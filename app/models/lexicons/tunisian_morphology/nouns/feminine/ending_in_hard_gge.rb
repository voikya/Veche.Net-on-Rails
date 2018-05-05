require_relative 'regular'

module Morphology
  module Tunisian
    module Nouns
      module Feminine
        module EndingInHardGge
          include Feminine::Regular

          def subtype
            "Ending in Hard -gge"
          end

          private

          def singular
            strong + "ge"
          end
        end
      end
    end
  end
end
