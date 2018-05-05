require_relative 'regular'

module Morphology
  module Tunisian
    module Nouns
      module Masculine
        module PluralInEs
          include Masculine::Regular

          def subtype
            "Plural in -es"
          end

          private

          def plural
            strong + "es"
          end
        end
      end
    end
  end
end
