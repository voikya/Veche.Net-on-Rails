require_relative 'palatal_stem'
require_relative 'initial_y'

module Morphology
  module Tunisian
    module Nouns
      module Feminine
        module InitialYAndPalatalStem
          include Feminine::PalatalStem
          include Feminine::InitialY

          def subtype
            "Initial Y and Palatal Stem"
          end
        end
      end
    end
  end
end
