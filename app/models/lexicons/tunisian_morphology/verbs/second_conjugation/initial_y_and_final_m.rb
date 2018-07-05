require_relative 'initial_y'
require_relative 'final_m'

module Morphology
  module Tunisian
    module Verbs
      module SecondConjugation
        module InitialYAndFinalM
          include SecondConjugation::InitialY
          include SecondConjugation::FinalM

          def subtype
            "Initial Y and Final M"
          end
        end
      end
    end
  end
end
