require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Katab
        module MedialR
          include Katab::Regular

          def subtype
            "C2 = Ř"
          end

          def _active_participle
            [template(:c1, "ου", :c2, "ε", :c3), template(:tc1, "ū", :tc2, "e", :tc3)]
          end
        end
      end
    end
  end
end
