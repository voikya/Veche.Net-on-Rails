require_relative 'initial_r'
require_relative 'palatalizing_n'

module Morphology
  module Tunisian
    module Nouns
      module Masculine
        module InitialRAndPalatalizingN
          include Masculine::InitialR
          include Masculine::PalatalizingN

          def subtype
            "Initial R and Palatalizing N"
          end
        end
      end
    end
  end
end
