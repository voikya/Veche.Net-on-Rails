require_relative 'final_n'

module Morphology
  module Alashian
    module Verbs
      module Ketheb
        module GeminateWithFinalN
          include Ketheb::FinalN

          def subtype
            "Geminated Root with C3 = N"
          end
        end
      end
    end
  end
end
