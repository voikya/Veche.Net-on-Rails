require_relative 'final_y'

module Morphology
  module Alashian
    module Verbs
      module Kethab
        module FinalW
          include Kethab::FinalY

          def subtype
            "C3 = W"
          end

          def _imperfect_first_singular
            if root.medial_aspiratable?
              [
                "#{template(:c1, "α", :c2_geminated_or_aspirated, "ω")} (#{template(:c1, "α", :c2_geminated_or_aspirated, "ου")})",
                "#{template(:tc1, "ə", :tc2_geminated_or_aspirated, "ā")} (#{template(:tc1, "ə", :tc2_geminated_or_aspirated, "ū")})"
              ]
            else
              [
                "#{template(:c1, "υ", :c2_geminated_or_aspirated, "ω")} (#{template(:c1, "υ", :c2_geminated_or_aspirated, "ου")})",
                "#{template(:tc1, "u", :tc2_geminated_or_aspirated, "ā")} (#{template(:tc1, "u", :tc2_geminated_or_aspirated, "ū")})"
              ]
            end
          end

          def _imperfect_second_singular_masculine
            if root.medial_aspiratable?
              [
                "#{template(:c1, "α", :c2_geminated_or_aspirated, "ωτ")} (#{template(:c1, "α", :c2_geminated_or_aspirated, "ουτ")})",
                "#{template(:tc1, "ə", :tc2_geminated_or_aspirated, "āt")} (#{template(:tc1, "ə", :tc2_geminated_or_aspirated, "ūt")})"
              ]
            else
              [
                "#{template(:c1, "υ", :c2_geminated_or_aspirated, "ωτ")} (#{template(:c1, "υ", :c2_geminated_or_aspirated, "ουτ")})",
                "#{template(:tc1, "u", :tc2_geminated_or_aspirated, "āt")} (#{template(:tc1, "u", :tc2_geminated_or_aspirated, "ūt")})"
              ]
            end
          end

          def _imperfect_second_singular_feminine
            if root.medial_aspiratable?
              [
                "#{template(:c1, "α", :c2_geminated_or_aspirated, "ως̄")} (#{template(:c1, "α", :c2_geminated_or_aspirated, "ους̄")})",
                "#{template(:tc1, "ə", :tc2_geminated_or_aspirated, "āš")} (#{template(:tc1, "ə", :tc2_geminated_or_aspirated, "ūš")})"
              ]
            else
              [
                "#{template(:c1, "υ", :c2_geminated_or_aspirated, "ως̄")} (#{template(:c1, "υ", :c2_geminated_or_aspirated, "ους̄")})",
                "#{template(:tc1, "u", :tc2_geminated_or_aspirated, "āš")} (#{template(:tc1, "u", :tc2_geminated_or_aspirated, "ūš")})"
              ]
            end

          end

          def _imperfect_third_singular_masculine
            if root.medial_aspiratable?
              [
                "#{template(:c1, "α", :c2_geminated_or_aspirated, "ω")} (#{template(:c1, "α", :c2_geminated_or_aspirated, "ου")})",
                "#{template(:tc1, "ə", :tc2_geminated_or_aspirated, "ā")} (#{template(:tc1, "ə", :tc2_geminated_or_aspirated, "ū")})"
              ]
            else
              [
                "#{template(:c1, "υ", :c2_geminated_or_aspirated, "ω")} (#{template(:c1, "υ", :c2_geminated_or_aspirated, "ου")})",
                "#{template(:tc1, "u", :tc2_geminated_or_aspirated, "ā")} (#{template(:tc1, "u", :tc2_geminated_or_aspirated, "ū")})"
              ]
            end
          end

          def _imperfect_first_plural
            if root.medial_aspiratable?
              [
                "#{template(:c1, "α", :c2_geminated_or_aspirated, "ων")} (#{template(:c1, "α", :c2_geminated_or_aspirated, "ουν")})",
                "#{template(:tc1, "ə", :tc2_geminated_or_aspirated, "ān")} (#{template(:tc1, "ə", :tc2_geminated_or_aspirated, "ūn")})"
              ]
            else
              [
                "#{template(:c1, "υ", :c2_geminated_or_aspirated, "ων")} (#{template(:c1, "υ", :c2_geminated_or_aspirated, "ουν")})",
                "#{template(:tc1, "u", :tc2_geminated_or_aspirated, "ān")} (#{template(:tc1, "u", :tc2_geminated_or_aspirated, "ūn")})"
              ]
            end
          end

          def _imperfect_second_plural_masculine
            if root.medial_aspiratable?
              [
                "#{template(:c1, "α", :c2_geminated_or_aspirated, "ωτυν")} (#{template(:c1, "α", :c2_geminated_or_aspirated, "ουτυν")})",
                "#{template(:tc1, "ə", :tc2_geminated_or_aspirated, "ātun")} (#{template(:tc1, "ə", :tc2_geminated_or_aspirated, "ūtun")})"
              ]
            else
              [
                "#{template(:c1, "υ", :c2_geminated_or_aspirated, "ωτυν")} (#{template(:c1, "υ", :c2_geminated_or_aspirated, "ουτυν")})",
                "#{template(:tc1, "u", :tc2_geminated_or_aspirated, "ātun")} (#{template(:tc1, "u", :tc2_geminated_or_aspirated, "ūtun")})"
              ]
            end
          end

          def _imperfect_second_plural_feminine
            if root.medial_aspiratable?
              [
                "#{template(:c1, "α", :c2_geminated_or_aspirated, "ωσ̄ιν")} (#{template(:c1, "α", :c2_geminated_or_aspirated, "ουσ̄ιν")})",
                "#{template(:tc1, "ə", :tc2_geminated_or_aspirated, "āšin")} (#{template(:tc1, "ə", :tc2_geminated_or_aspirated, "ūšin")})"
              ]
            else
              [
                "#{template(:c1, "υ", :c2_geminated_or_aspirated, "ωσ̄ιν")} (#{template(:c1, "υ", :c2_geminated_or_aspirated, "ουσ̄ιν")})",
                "#{template(:tc1, "u", :tc2_geminated_or_aspirated, "āšin")} (#{template(:tc1, "u", :tc2_geminated_or_aspirated, "ūšin")})"
              ]
            end
          end

          def _passive_participle
            [template("μυ", :c1, "α", :c2_geminated_or_aspirated, "ου"), template("mu", :tc1, "ə", :tc2_geminated_or_aspirated, "ū")]
          end
        end
      end
    end
  end
end
