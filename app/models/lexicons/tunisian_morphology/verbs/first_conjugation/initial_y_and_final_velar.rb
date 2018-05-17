require_relative 'final_velar'
require_relative 'initial_y'

module Morphology
  module Tunisian
    module Verbs
      module FirstConjugation
        module InitialYAndFinalVelar
          include FirstConjugation::InitialY
          include FirstConjugation::FinalVelar

          def subtype
            "Initial Y and Final C/G"
          end
        end
      end
    end
  end
end
