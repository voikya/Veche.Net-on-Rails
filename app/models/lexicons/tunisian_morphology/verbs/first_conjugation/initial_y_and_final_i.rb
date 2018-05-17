require_relative 'initial_y'
require_relative 'final_i'

module Morphology
  module Tunisian
    module Verbs
      module FirstConjugation
        module InitialYAndFinalI
          include FirstConjugation::InitialY
          include FirstConjugation::FinalI

          def subtype
            "Initial Y and Final I"
          end
        end
      end
    end
  end
end
