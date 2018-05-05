require_relative 'regular'

module Morphology
  module Tunisian
    module Nouns
      module Feminine
        module PalatalGn
          include Feminine::Regular

          def subtype
            "Palatal -gn-"
          end

          private

          def plural
            strong.sub(/gn$/, 'nis')
          end
        end
      end
    end
  end
end
