require_relative 'regular'

module Morphology
  module Tunisian
    module Adjectives
      module Adjective
        module FinalSt
          include Adjective::Regular

          def subtype
            "Final St"
          end

          def _plural
            strong[0..-3] + "çs"
          end
        end
      end
    end
  end
end
