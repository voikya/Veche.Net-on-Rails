require_relative 'regular'

module Morphology
  module Tunisian
    module Nouns
      module Masculine
        module CompoundWithMezi
          include Masculine::Regular

          def subtype
            "Compound with Mèźí"
          end

          private

          def singular
            "med-" + strong
          end

          def plural
            "mids-" + strong + "s"
          end
        end
      end
    end
  end
end
