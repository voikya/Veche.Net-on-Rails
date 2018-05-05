require_relative 'regular'

module Morphology
  module Tunisian
    module Nouns
      module Masculine
        module PalatalizingN
          include Masculine::Regular

          def subtype
            "Palatalizing N"
          end

          private

          def plural
            strong.sub(/[éè]n$/, 'eis')
                  .sub(/n$/, 'is')
          end
        end
      end
    end
  end
end
