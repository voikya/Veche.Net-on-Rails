require_relative 'initial_r'
require_relative 'ending_in_zt'

module Morphology
  module Tunisian
    module Nouns
      module Feminine
        module InitialREndingInZt
          include Feminine::InitialR
          include Feminine::EndingInZt

          def subtype
            "Initial R Ending in -zte"
          end
        end
      end
    end
  end
end
