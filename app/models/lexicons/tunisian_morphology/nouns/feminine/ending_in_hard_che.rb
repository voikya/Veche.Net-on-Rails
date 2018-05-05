require_relative 'regular'

module Morphology
  module Tunisian
    module Nouns
      module Feminine
        module EndingInHardChe
          include Feminine::Regular

          def subtype
            "Ending in Hard -che"
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
