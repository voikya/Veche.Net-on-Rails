require_relative 'regular'

module Morphology
  module Tunisian
    module Nouns
      module Feminine
        module CompoundWithMezi
          include Feminine::Regular

          def subtype
            "Compound with Mèźí"
          end

          private

          def singular
            "mèdi-" + strong + "e"
          end

          def plural
            "mids-" + strong + "s"
          end
        end
      end
    end
  end
end
