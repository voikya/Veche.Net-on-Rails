require_relative 'initial_y'
require_relative 'final_velar'

module Morphology
  module Tunisian
    module Verbs
      module SecondConjugation
        module InitialYAndFinalVelar
          include SecondConjugation::InitialY
          include SecondConjugation::FinalVelar

          def subtype
            "Initial Y and Final C/G"
          end
        end
      end
    end
  end
end
