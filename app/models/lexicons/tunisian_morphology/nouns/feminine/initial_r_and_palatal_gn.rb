require_relative 'initial_r'
require_relative 'palatal_gn'

module Morphology
  module Tunisian
    module Nouns
      module Feminine
        module InitialRAndPalatalGn
          include Feminine::InitialR
          include Feminine::PalatalGn

          def subtype
            "Initial R and Palatal -gn-"
          end
        end
      end
    end
  end
end
