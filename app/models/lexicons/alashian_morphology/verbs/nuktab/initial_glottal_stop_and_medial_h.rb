require_relative 'initial_glottal'

module Morphology
  module Alashian
    module Verbs
      module Nuktab
        module InitialGlottalStopAndMedialH
          include Nuktab::InitialGlottal

          def subtype
            "C1 = ', C2 = H"
          end

          def _imperfect_third_singular_feminine
            [template("νου", :c2, "α", :c3, "ω"), template("nū", :tc2, "a", :tc3, "ā")]
          end

          def _imperfect_third_plural
            [template("νου", :c2, "α", :c3, "ου"), template("nū", :tc2, "a", :tc3, "ū")]
          end

          def _passive_participle
            [template("νω", :c2, "ι", :c3), template("nā", :tc2, "i", :tc3)]
          end
        end
      end
    end
  end
end
