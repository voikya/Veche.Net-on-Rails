require_relative 'regular'

module Morphology
  module Tunisian
    module Nouns
      module Feminine
        module EndingInHardGhe
          include Feminine::Regular

          def subtype
            "Ending in Hard -ghe"
          end

          private

          def singular
            strong + "he"
          end
        end
      end
    end
  end
end
