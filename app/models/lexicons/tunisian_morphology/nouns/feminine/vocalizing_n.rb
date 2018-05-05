require_relative 'regular'

module Morphology
  module Tunisian
    module Nouns
      module Feminine
        module VocalizingN
          include Feminine::Regular

          def subtype
            "Vocalizing N"
          end

          private

          def plural
            strong[0...-1] + "is"
          end
        end
      end
    end
  end
end
