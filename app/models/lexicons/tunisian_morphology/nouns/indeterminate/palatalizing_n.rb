require_relative 'regular'

module Morphology
  module Tunisian
    module Nouns
      module Indeterminate
        module PalatalizingN
          include Indeterminate::Regular

          def subtype
            "Palatalizing N"
          end

          private

          def plural
            strong.sub(/n$/, 'is')
          end
        end
      end
    end
  end
end
