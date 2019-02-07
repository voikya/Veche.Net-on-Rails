require_relative 'regular'

module Morphology
  module Tunisian
    module Adjectives
      module Adjective
        module FinalR
          include Adjective::Regular

          def subtype
            "Final R"
          end

          def _plural
            strong + "es"
          end
        end
      end
    end
  end
end
