require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Nuktab
        module MedialR
          include Nuktab::Regular

          def subtype
            "C2 = Ř"
          end

          def _passive_participle
            [template("να", :c1, :c2, "ε", :c3), template("na", :tc1, :tc2, "e", :tc3)]
          end
        end
      end
    end
  end
end
