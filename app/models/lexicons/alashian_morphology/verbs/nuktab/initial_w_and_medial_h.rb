require_relative 'initial_w'

module Morphology
  module Alashian
    module Verbs
      module Nuktab
        module InitialWAndMedialH
          include Nuktab::InitialW

          def subtype
            "C1 = W, C2 = H"
          end

          def _imperfect_third_singular_feminine
            [template("νιου", :c2, "α", :c3, "ω"), template("niyu", :tc2, "a", :tc3, "ā")]
          end

          def _imperfect_third_plural
            [template("νιου", :c2, "α", :c3, "ου"), template("niyu", :tc2, "a", :tc3, "ū")]
          end
        end
      end
    end
  end
end
