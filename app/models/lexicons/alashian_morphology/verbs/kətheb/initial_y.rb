require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Ketheb
        module InitialY
          include Ketheb::Regular

          def subtype
            "C1 = Y"
          end

          def _present_second_singular_masculine
            [template("τ", :c1, "'α", :c2_geminated_or_aspirated, "α", :c3), template("ti", :tc1, "ə", :tc2_geminated_or_aspirated, "a", :tc3)]
          end

          def _present_second_singular_feminine
            if root.final_plosive?
              [template("τ", :c1, "'α", :c2_lenited, :c3, "ει"), template("ti", :tc1, "ə", :tc2_lenited, :tc3, "ī")]
            else
              [template("τ", :c1, "'α", :c2, :c3, "ει"), template("ti", :tc1, "ə", :tc2, :tc3, "ī")]
            end
          end

          def _present_first_plural
            if root.final_plosive?
              [template("ν", :c1, "'α", :c2_lenited, :c3, "ου"), template("ni", :tc1, "ə", :tc2_lenited, :tc3, "ū")]
            else
              [template("ν", :c1, "'α", :c2, :c3, "ου"), template("ni", :tc1, "ə", :tc2, :tc3, "ū")]
            end
          end

          def _present_second_plural
            if root.final_plosive?
              [template("τ", :c1, "'α", :c2_lenited, :c3, "ου"), template("ti", :tc1, "ə", :tc2_lenited, :tc3, "ū")]
            else
              [template("τ", :c1, "'α", :c2, :c3, "ου"), template("ti", :tc1, "ə", :tc2, :tc3, "ū")]
            end
          end

          def _impf_subjunctive_second_singular_masculine
            [template("τ", :c1, "'α", :c2_geminated_or_aspirated, "ω", :c3, "α"), template("ti", :tc1, "ə", :tc2_geminated_or_aspirated, "ā", :tc3, "a")]
          end

          def _impf_subjunctive_second_singular_feminine
            [template("τ", :c1, "'α", :c2_geminated_or_aspirated, "ω", :c3, "ια"), template("ti", :tc1, "ə", :tc2_geminated_or_aspirated, "ā", :tc3, "iya")]
          end

          def _impf_subjunctive_first_plural
            [template("ν", :c1, "'α", :c2_geminated_or_aspirated, "ω", :c3, "υ'α"), template("ni", :tc1, "ə", :tc2_geminated_or_aspirated, "ā", :tc3, "uwa")]
          end

          def _impf_subjunctive_second_plural
            [template("τ", :c1, "'α", :c2_geminated_or_aspirated, "ω", :c3, "υ'α"), template("ti", :tc1, "ə", :tc2_geminated_or_aspirated, "ā", :tc3, "uwa")]
          end
        end
      end
    end
  end
end
