require_relative 'biconsonantal_with_initial_aspirate'

module Morphology
  module Alashian
    module Verbs
      module Nitkatab
        module InitialAspirateAndFinalH
          include Nitkatab::BiconsonantalWithInitialAspirate

          def subtype
            "C1 = PH/TH/KH/TSH/ČH, C3 = H"
          end
        end
      end
    end
  end
end
