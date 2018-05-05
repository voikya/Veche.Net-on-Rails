require_relative 'regular'

module Morphology
  module Tunisian
    module Nouns
      module Feminine
        module Unmarked
          include Feminine::Regular

          def subtype
            "Unmarked"
          end

          private

          def singular
            strong
          end
        end
      end
    end
  end
end
