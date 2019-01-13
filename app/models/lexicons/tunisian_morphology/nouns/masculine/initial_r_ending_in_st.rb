require_relative 'initial_r'
require_relative 'ending_in_st'

module Morphology
  module Tunisian
    module Nouns
      module Masculine
        module InitialREndingInSt
          include Masculine::InitialR
          include Masculine::EndingInSt

          def subtype
            "Initial R Ending in -st"
          end
        end
      end
    end
  end
end
