require_relative 'ending_in_re'
require_relative 'initial_y'

module Morphology
  module Tunisian
    module Nouns
      module Feminine
        module InitialYEndingInRe
          include Feminine::EndingInRe
          include Feminine::InitialY

          def subtype
            "Initial Y Ending in -re"
          end
        end
      end
    end
  end
end
