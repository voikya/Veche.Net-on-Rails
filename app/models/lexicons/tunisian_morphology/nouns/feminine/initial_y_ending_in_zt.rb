require_relative 'initial_y'
require_relative 'ending_in_zt'

module Morphology
  module Tunisian
    module Nouns
      module Feminine
        module InitialYEndingInZt
          include Feminine::InitialY
          include Feminine::EndingInZt

          def subtype
            "Initial Y Ending in -zte"
          end
        end
      end
    end
  end
end
