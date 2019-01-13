require_relative 'regular'

module Morphology
  module Tunisian
    module Nouns
      module Masculine
        module PluralInRes
          include Masculine::Regular

          def subtype
            "Plural in -res"
          end

          private

          def plural
            strong.sub(/á$/, "ares")
                  .sub(/ó$/, "ores")
          end
        end
      end
    end
  end
end
