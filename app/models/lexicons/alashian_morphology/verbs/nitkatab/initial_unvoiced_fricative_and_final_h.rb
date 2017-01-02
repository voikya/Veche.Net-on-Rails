require_relative 'biconsonantal_with_initial_unvoiced_fricative'

module Morphology
  module Alashian
    module Verbs
      module Nitkatab
        module InitialUnvoicedFricativeAndFinalH
          include Nitkatab::BiconsonantalWithInitialUnvoicedFricative

          def subtype
            "C1 = F/Ṯ/S/Š/X, C3 = H"
          end
        end
      end
    end
  end
end
