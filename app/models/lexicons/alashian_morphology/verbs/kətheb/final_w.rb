require_relative 'final_y'

module Morphology
  module Alashian
    module Verbs
      module Ketheb
        module FinalW
          include Ketheb::FinalY

          def subtype
            "C3 = W"
          end

          def _present_first_singular
            [template("α", :c1, "α", :c2_geminated_or_aspirated, "οὐ"), template("'a", :tc1, "ə", :tc2_geminated_or_aspirated, "ū")]
          end

          def _present_second_singular_masculine
            [template("τι", :c1, "α", :c2_geminated_or_aspirated, "οὐ"), template("ti", :tc1, "ə", :tc2_geminated_or_aspirated, "ū")]
          end

          def _present_third_singular_masculine
            [template("ι", :c1, "α", :c2_geminated_or_aspirated, "οὐ"), template("yi", :tc1, "ə", :tc2_geminated_or_aspirated, "ū")]
          end

          def _imperfect_first_singular
            if root.medial_aspiratable?
              [
                "#{template(:c1, "α", :c2_geminated_or_aspirated, "η")} (#{template(:c1, "α", :c2_geminated_or_aspirated, "ου")})",
                "#{template(:tc1, "ə", :tc2_geminated_or_aspirated, "ē")} (#{template(:tc1, "ə", :tc2_geminated_or_aspirated, "ū")})"
              ]
            else
              [
                "#{template(:c1, "ε", :c2_geminated_or_aspirated, "η")} (#{template(:c1, "ε", :c2_geminated_or_aspirated, "ου")})",
                "#{template(:tc1, "e", :tc2_geminated_or_aspirated, "ē")} (#{template(:tc1, "e", :tc2_geminated_or_aspirated, "ū")})"
              ]
            end
          end

          def _imperfect_second_singular_masculine
            if root.medial_aspiratable?
              [
                "#{template(:c1, "α", :c2_geminated_or_aspirated, "ητ")} (#{template(:c1, "α", :c2_geminated_or_aspirated, "ουτ")})",
                "#{template(:tc1, "ə", :tc2_geminated_or_aspirated, "ēt")} (#{template(:tc1, "ə", :tc2_geminated_or_aspirated, "ūt")})"
              ]
            else
              [
                "#{template(:c1, "ε", :c2_geminated_or_aspirated, "ητ")} (#{template(:c1, "ε", :c2_geminated_or_aspirated, "ουτ")})",
                "#{template(:tc1, "e", :tc2_geminated_or_aspirated, "ēt")} (#{template(:tc1, "e", :tc2_geminated_or_aspirated, "ūt")})"
              ]
            end
          end

          def _imperfect_second_singular_feminine
            if root.medial_aspiratable?
              [
                "#{template(:c1, "α", :c2_geminated_or_aspirated, "ης̄")} (#{template(:c1, "α", :c2_geminated_or_aspirated, "ους̄")})",
                "#{template(:tc1, "ə", :tc2_geminated_or_aspirated, "ēš")} (#{template(:tc1, "ə", :tc2_geminated_or_aspirated, "ūš")})"
              ]
            else
              [
                "#{template(:c1, "ε", :c2_geminated_or_aspirated, "ης̄")} (#{template(:c1, "ε", :c2_geminated_or_aspirated, "ους̄")})",
                "#{template(:tc1, "e", :tc2_geminated_or_aspirated, "ēš")} (#{template(:tc1, "e", :tc2_geminated_or_aspirated, "ūš")})"
              ]
            end
          end

          def _imperfect_third_singular_masculine
            if root.medial_aspiratable?
              [
                "#{template(:c1, "α", :c2_geminated_or_aspirated, "η")} (#{template(:c1, "α", :c2_geminated_or_aspirated, "ου")})",
                "#{template(:tc1, "ə", :tc2_geminated_or_aspirated, "ē")} (#{template(:tc1, "ə", :tc2_geminated_or_aspirated, "ū")})"
              ]
            else
              [
                "#{template(:c1, "ε", :c2_geminated_or_aspirated, "η")} (#{template(:c1, "ε", :c2_geminated_or_aspirated, "ου")})",
                "#{template(:tc1, "e", :tc2_geminated_or_aspirated, "ē")} (#{template(:tc1, "e", :tc2_geminated_or_aspirated, "ū")})"
              ]
            end
          end

          def _imperfect_first_plural
            if root.medial_aspiratable?
              [
                "#{template(:c1, "α", :c2_geminated_or_aspirated, "ην")} (#{template(:c1, "α", :c2_geminated_or_aspirated, "ουν")})",
                "#{template(:tc1, "ə", :tc2_geminated_or_aspirated, "ēn")} (#{template(:tc1, "ə", :tc2_geminated_or_aspirated, "ūn")})"
              ]
            else
              [
                "#{template(:c1, "ε", :c2_geminated_or_aspirated, "ην")} (#{template(:c1, "ε", :c2_geminated_or_aspirated, "ουν")})",
                "#{template(:tc1, "e", :tc2_geminated_or_aspirated, "ēn")} (#{template(:tc1, "e", :tc2_geminated_or_aspirated, "ūn")})"
              ]
            end
          end

          def _imperfect_second_plural_masculine
            if root.medial_aspiratable?
              [
                "#{template(:c1, "α", :c2_geminated_or_aspirated, "ητυν")} (#{template(:c1, "α", :c2_geminated_or_aspirated, "ουτυν")})",
                "#{template(:tc1, "ə", :tc2_geminated_or_aspirated, "ētun")} (#{template(:tc1, "ə", :tc2_geminated_or_aspirated, "ūtun")})"
              ]
            else
              [
                "#{template(:c1, "ε", :c2_geminated_or_aspirated, "ητυν")} (#{template(:c1, "ε", :c2_geminated_or_aspirated, "ουτυν")})",
                "#{template(:tc1, "e", :tc2_geminated_or_aspirated, "ētun")} (#{template(:tc1, "e", :tc2_geminated_or_aspirated, "ūtun")})"
              ]
            end
          end

          def _imperfect_second_plural_feminine
            if root.medial_aspiratable?
              [
                "#{template(:c1, "α", :c2_geminated_or_aspirated, "ησ̄ιν")} (#{template(:c1, "α", :c2_geminated_or_aspirated, "ουσ̄ιν")})",
                "#{template(:tc1, "ə", :tc2_geminated_or_aspirated, "ēšin")} (#{template(:tc1, "ə", :tc2_geminated_or_aspirated, "ūšin")})"
              ]
            else
              [
                "#{template(:c1, "ε", :c2_geminated_or_aspirated, "ησ̄ιν")} (#{template(:c1, "ε", :c2_geminated_or_aspirated, "ουσ̄ιν")})",
                "#{template(:tc1, "e", :tc2_geminated_or_aspirated, "ēšin")} (#{template(:tc1, "e", :tc2_geminated_or_aspirated, "ūšin")})"
              ]
            end
          end
        end
      end
    end
  end
end
