require_relative 'regular'

module Morphology
  module Tunisian
    module Nouns
      module Feminine
        module PalatalizingN
          include Feminine::Regular

          def subtype
            "Palatalizing N"
          end

          private

          def plural
            strong.sub(/in$/, 'ís')
                  .sub(/[éè]n$/, 'eis')
                  .sub(/ún$/, 'uis')
                  .sub(/n$/, 'is')
          end
        end
      end
    end
  end
end
