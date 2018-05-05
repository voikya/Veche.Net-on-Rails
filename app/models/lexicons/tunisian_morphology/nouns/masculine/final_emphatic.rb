require_relative 'regular'

module Morphology
  module Tunisian
    module Nouns
      module Masculine
        module FinalEmphatic
          include Masculine::Regular

          def subtype
            "Final Emphatic"
          end

          private

          def plural
            strong[0...-1] + "es"
          end
        end
      end
    end
  end
end
