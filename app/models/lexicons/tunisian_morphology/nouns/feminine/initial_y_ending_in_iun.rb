require_relative 'initial_y'
require_relative 'ending_in_iun'

module Morphology
  module Tunisian
    module Nouns
      module Feminine
        module InitialYEndingInIun
          include Feminine::InitialY
          include Feminine::EndingInIun

          def subtype
            "Initial Y Ending in -iun"
          end
        end
      end
    end
  end
end
