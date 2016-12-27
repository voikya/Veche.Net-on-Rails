require_relative 'biconsonantal_with_initial_voiced_fricative'

module Morphology
  module Alashian
    module Verbs
      module Takteb
        module InitialVoicedFricativeAndFinalH
          include Takteb::BiconsonantalWithInitialVoicedFricative

          def subtype
            "C1 = V/Ḏ/Z/Ǧ, C3 = H"
          end
        end
      end
    end
  end
end
