require_relative 'initial_y'
require_relative 'ending_in_st'

module Morphology
  module Tunisian
    module Nouns
      module Feminine
        module InitialYEndingInSt
          include Feminine::InitialY
          include Feminine::EndingInSt

          def subtype
            "Initial Y Ending in -ste"
          end
        end
      end
    end
  end
end
