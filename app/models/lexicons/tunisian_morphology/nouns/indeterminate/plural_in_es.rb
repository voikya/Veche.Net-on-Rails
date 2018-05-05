require_relative 'regular'

module Morphology
  module Tunisian
    module Nouns
      module Indeterminate
        module PluralInEs
          include Indeterminate::Regular

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
