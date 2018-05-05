require_relative 'initial_r'
require_relative 'ending_in_hard_cce'

module Morphology
  module Tunisian
    module Nouns
      module Feminine
        module InitialREndingInHardCce
          include Feminine::InitialR
          include Feminine::EndingInHardCce

          def subtype
            "Initial R Ending in Hard -cce"
          end
        end
      end
    end
  end
end
