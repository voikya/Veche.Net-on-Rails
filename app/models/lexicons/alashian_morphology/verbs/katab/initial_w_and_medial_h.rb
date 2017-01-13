require_relative 'initial_w'

module Morphology
  module Alashian
    module Verbs
      module Katab
        module InitialWAndMedialH
          include Katab::InitialW

          def subtype
            "C1 = W, C2 = H"
          end

          def _imperfect_third_singular_feminine
            [template("ιη", :c2, "ε", :c3, "ω"), template("yē", :tc2, "e", :tc3, "ā")]
          end

          def _imperfect_third_plural
            [template("ιη", :c2, "ε", :c3, "ου"), template("yē", :tc2, "e", :tc3, "ū")]
          end
        end
      end
    end
  end
end
