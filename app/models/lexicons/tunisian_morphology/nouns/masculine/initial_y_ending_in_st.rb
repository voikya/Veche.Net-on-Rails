require_relative 'initial_y'
require_relative 'ending_in_st'

module Morphology
  module Tunisian
    module Nouns
      module Masculine
        module InitialYEndingInSt
          include Masculine::InitialY
          include Masculine::EndingInSt

          def subtype
            "Initial Y Ending in -st"
          end
        end
      end
    end
  end
end
