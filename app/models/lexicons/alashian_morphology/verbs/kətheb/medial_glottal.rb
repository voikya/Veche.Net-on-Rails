require_relative 'medial_ř'

module Morphology
  module Alashian
    module Verbs
      module Ketheb
        module MedialGlottal
          include Ketheb::MedialR

          def subtype
            "C2 = '/H"
          end

          def _present_second_singular_feminine
            [template("τι", :c1, "α", :c2, "α", :c3, "ει"), template("ti", :tc1, "ə", :tc2, "a", :tc3, "ī")]
          end

          def _present_third_singular_feminine
            [template("ι", :c1, "α", :c2, "α", :c3, "ει"), template("yi", :tc1, "ə", :tc2, "a", :tc3, "ī")]
          end

          def _present_first_plural
            [template("νι", :c1, "α", :c2, "α", :c3, "ου"), template("ni", :tc1, "ə", :tc2, "a", :tc3, "ū")]
          end

          def _present_second_plural
            [template("τι", :c1, "α", :c2, "α", :c3, "ου"), template("ti", :tc1, "ə", :tc2, "a", :tc3, "ū")]
          end

          def _present_third_plural
            [template("ι", :c1, "α", :c2, :c3, "ου"), template("yi", :tc1, "ə", :tc2, "a", :tc3, "ū")]
          end
        end
      end
    end
  end
end
