require_relative 'initial_aspirate'

module Morphology
  module Alashian
    module Verbs
      module Ketheb
        module GeminateWithInitialAspirate
          include Ketheb::InitialAspirate

          def subtype
            "Geminated Root with C1 = PH/TH/KH/TSH/ČH"
          end
        end
      end
    end
  end
end
