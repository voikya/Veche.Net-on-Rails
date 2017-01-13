require_relative 'final_y'

module Morphology
  module Alashian
    module Verbs
      module Ketheb
        module MedialAspirateAndFinalY
          include Ketheb::FinalY

          def subtype
            "C2 = PH/TH/KH/TSH/ČH, C3 = Y"
          end

          def _present_second_singular_feminine
            [template("τι", :c1, "α", :c2, :c3, "ει"), template("ti", :tc1, "ə", :tc2, :tc3, "ī")]
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
            [template(:c1, "α", :c2, "η", :c3, "ω"), template(:tc1, "ə", :tc2, "ē", :tc3, "ā")]
          end

          def _preterite_third_plural
            [template(:c1, "α", :c2, "η", :c3, "ου"), template(:tc1, "ə", :tc2, "ē", :tc3, "ū")]
          end

          def _imperfect_first_singular
            [template(:c1, "α", :c2, "η"), template(:tc1, "ə", :tc2, "ē")]
          end

          def _imperfect_second_singular_masculine
            [template(:c1, "α", :c2, "ητ"), template(:tc1, "ə", :tc2, "ēt")]
          end

          def _imperfect_second_singular_feminine
            [template(:c1, "α", :c2, "ης̄"), template(:tc1, "ə", :tc2, "ēš")]
          end

          def _imperfect_third_singular_masculine
            [template(:c1, "α", :c2, "η"), template(:tc1, "ə", :tc2, "ē")]
          end

          def _imperfect_third_singular_feminine
            [template(:c1, "α", :c2, "ε", :c3, "ω"), template(:tc1, "ə", :tc2, "e", :tc3, "ā")]
          end

          def _imperfect_first_plural
            [template(:c1, "α", :c2, "ην"), template(:tc1, "ə", :tc2, "ēn")]
          end

          def _imperfect_second_plural_masculine
            [template(:c1, "α", :c2, "ητυν"), template(:tc1, "ə", :tc2, "ētun")]
          end

          def _imperfect_second_plural_feminine
            [template(:c1, "α", :c2, "ησ̄ιν"), template(:tc1, "ə", :tc2, "ēšin")]
          end

          def _imperfect_third_plural
            [template(:c1, "α", :c2, "ε", :c3, "ου"), template(:tc1, "ə", :tc2, "e", :tc3, "ū")]
          end
        end
      end
    end
  end
end
