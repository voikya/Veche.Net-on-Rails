require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Ketheb
        module InitialWAndMedialAspirate
          include Ketheb::InitialW

          def subtype
            "C1 = W, C2 = PH/TH/KH/TSH/ČH"
          end

          def _present_second_singular_feminine
            [template("τι'", :c1, "α", :c2, :c3, "ει"), template("ti", :tc1, "ə", :tc2, :tc3, "ī")]
          end

          def _present_third_singular_feminine
            [template("ι", :c1, "α", :c2, :c3, "ει"), template("yi", :tc1, "ə", :tc2, :tc3, "ī")]
          end

          def _present_first_plural
            [template("νι", :c1, "α", :c2, :c3, "ου"), template("ni", :tc1, "ə", :tc2, :tc3, "ū")]
          end

          def _present_second_plural
            [template("τι", :c1, "α", :c2, :c3, "ου"), template("ti", :tc1, "ə", :tc2, :tc3, "ū")]
          end

          def _present_third_plural
            [template("ι", :c1, "α", :c2, :c3, "ου"), template("yi", :tc1, "ə", :tc2, :tc3, "ū")]
          end

          def _preterite_third_singular_feminine
            [template("в̄α", :c2, "η", :c3, "ω"), template("və", :tc2, "ē", :tc3, "ā")]
          end

          def _preterite_third_plural
            [template("в̄α", :c2, "η", :c3, "ου"), template("və", :tc2, "ē", :tc3, "ū")]
          end

          def _imperfect_first_singular
            [template("в̄α", :c2, "ε", :c3_lenited), template("və", :tc2, "e", :tc3_lenited)]
          end

          def _imperfect_second_singular_masculine
            [template("в̄α", :c2, "ε", :c3_lenited, "ετ"), template("və", :tc2, "e", :tc3_lenited, "et")]
          end

          def _imperfect_second_singular_feminine
            [template("в̄α", :c2, "ε", :c3_lenited, "ες̄"), template("və", :tc2, "e", :tc3_lenited, "eš")]
          end

          def _imperfect_third_singular_masculine
            [template("в̄α", :c2, "ε", :c3), template("və", :tc2, "e", :tc3)]
          end

          def _imperfect_third_singular_feminine
            [template("в̄α", :c2, "ε", :c3, "ω"), template("və", :tc2, "e", :tc3, "ā")]
          end

          def _imperfect_first_plural
            [template("в̄α", :c2, "ε", :c3_lenited, "εν"), template("və", :tc2, "e", :tc3_lenited, "en")]
          end

          def _imperfect_second_plural_masculine
            [template("в̄α", :c2, "ε", :c3_lenited, "τυν"), template("və", :tc2, "e", :tc3_lenited, "tun")]
          end

          def _imperfect_second_plural_feminine
            [template("в̄α", :c2, "ε", :c3_lenited, "σ̄ιν"), template("və", :tc2, "e", :tc3_lenited, "šin")]
          end

          def _imperfect_third_plural
            [template("в̄α", :c2, "ε", :c3, "ου"), template("və", :tc2, "e", :tc3, "ū")]
          end
        end
      end
    end
  end
end
