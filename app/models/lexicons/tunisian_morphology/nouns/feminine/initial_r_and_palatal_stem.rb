require_relative 'initial_r'
require_relative 'palatal_stem'

module Morphology
  module Tunisian
    module Nouns
      module Feminine
        module InitialRAndPalatalStem
          include Feminine::InitialR
          include Feminine::PalatalStem

          def subtype
            "Initial R and Palatal Stem"
          end
        end
      end
    end
  end
end
