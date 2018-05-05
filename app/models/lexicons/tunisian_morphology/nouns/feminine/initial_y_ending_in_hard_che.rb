require_relative 'initial_y'
require_relative 'ending_in_hard_che'

module Morphology
  module Tunisian
    module Nouns
      module Feminine
        module InitialYEndingInHardChe
          include Feminine::InitialY
          include Feminine::EndingInHardChe

          def subtype
            "Initial Y Ending in Hard -che"
          end
        end
      end
    end
  end
end
