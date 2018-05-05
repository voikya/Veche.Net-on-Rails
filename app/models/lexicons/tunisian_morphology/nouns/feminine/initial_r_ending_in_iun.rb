require_relative 'initial_r'
require_relative 'ending_in_iun'

module Morphology
  module Tunisian
    module Nouns
      module Feminine
        module InitialREndingInIun
          include Feminine::InitialR
          include Feminine::EndingInIun

          def subtype
            "Initial R Ending in -iun"
          end
        end
      end
    end
  end
end
