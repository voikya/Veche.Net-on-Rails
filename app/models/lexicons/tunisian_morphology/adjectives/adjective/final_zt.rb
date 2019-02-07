require_relative 'regular'

module Morphology
  module Tunisian
    module Adjectives
      module Adjective
        module FinalZt
          include Adjective::Regular

          def subtype
            "Final Zt"
          end

          def _plural
            strong[0..-3] + "ćs"
          end
        end
      end
    end
  end
end
