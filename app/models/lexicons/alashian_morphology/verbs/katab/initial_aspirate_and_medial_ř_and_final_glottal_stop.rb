require_relative 'initial_aspirate_and_final_glottal_stop'

module Morphology
  module Alashian
    module Verbs
      module Katab
        module InitialAspirateAndMedialRAndFinalGlottalStop
          include Katab::InitialAspirateAndFinalGlottalStop

          def subtype
            "C1 = PH/TH/KH/TSH/ČH, C2 = Ř, C3 = '"
          end

          def _active_participle
            [template(:c1, "ου", :c2, "ε"), template(:tc1, "ū", :tc2, "e")]
          end
        end
      end
    end
  end
end
