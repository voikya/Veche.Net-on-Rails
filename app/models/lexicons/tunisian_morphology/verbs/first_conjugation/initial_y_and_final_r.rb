require_relative 'final_r'
require_relative 'initial_y'

module Morphology
  module Tunisian
    module Verbs
      module FirstConjugation
        module InitialYAndFinalR
          include FirstConjugation::InitialY
          include FirstConjugation::FinalR

          def subtype
            "Initial Y and Final R"
          end
        end
      end
    end
  end
end
