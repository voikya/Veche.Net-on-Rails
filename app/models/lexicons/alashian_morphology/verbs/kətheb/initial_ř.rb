require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Ketheb
        module InitialR
          include Ketheb::Regular

          def subtype
            "C1 = Ř"
          end

          def _present_second_singular_masculine
            [template("τε", :c1, "α", :c2_geminated_or_aspirated, "α", :c3), template("te", :tc1, "ə", :tc2_geminated_or_aspirated, "a", :tc3)]
          end

          def _present_second_singular_feminine
            if root.final_plosive?
              [template("τε", :c1, "α", :c2_lenited, :c3, "ει"), template("te", :tc1, "ə", :tc2_lenited, :tc3, "ī")]
            else
              [template("τε", :c1, "α", :c2, :c3, "ει"), template("te", :tc1, "ə", :tc2, :tc3, "ī")]
            end
          end

          def _present_third_singular_masculine
            [template("ιε", :c1, "α", :c2_geminated_or_aspirated, "α", :c3), template("ye", :tc1, "ə", :tc2_geminated_or_aspirated, "a", :tc3)]
          end

          def _present_third_singular_feminine
            if root.final_plosive?
              [template("ιε", :c1, "α", :c2_lenited, :c3, "ει"), template("ye", :tc1, "ə", :tc2_lenited, :tc3, "ī")]
            else
              [template("ιε", :c1, "α", :c2, :c3, "ει"), template("ye", :tc1, "ə", :tc2, :tc3, "ī")]
            end
          end

          def _present_first_plural
            if root.final_plosive?
              [template("νε", :c1, "α", :c2_lenited, :c3, "ου"), template("ne", :tc1, "ə", :tc2_lenited, :tc3, "ū")]
            else
              [template("νε", :c1, "α", :c2, :c3, "ου"), template("ne", :tc1, "ə", :tc2, :tc3, "ū")]
            end
          end

          def _present_second_plural
            if root.final_plosive?
              [template("τε", :c1, "α", :c2_lenited, :c3, "ου"), template("te", :tc1, "ə", :tc2_lenited, :tc3, "ū")]
            else
              [template("τε", :c1, "α", :c2, :c3, "ου"), template("te", :tc1, "ə", :tc2, :tc3, "ū")]
            end
          end

          def _present_third_plural
            if root.final_plosive?
              [template("ιε", :c1, "α", :c2_lenited, :c3, "ου"), template("ye", :tc1, "ə", :tc2_lenited, :tc3, "ū")]
            else
              [template("ι", :c1, "α", :c2, :c3, "ου"), template("ye", :tc1, "ə", :tc2, :tc3, "ū")]
            end
          end

          def _impf_subjunctive_second_singular_masculine
            [template("τε", :c1, "α", :c2_geminated_or_aspirated, "ω", :c3, "α"), template("te", :tc1, "ə", :tc2_geminated_or_aspirated, "ā", :tc3, "a")]
          end

          def _impf_subjunctive_second_singular_feminine
            [template("τε", :c1, "α", :c2_geminated_or_aspirated, "ω", :c3, "ια"), template("te", :tc1, "ə", :tc2_geminated_or_aspirated, "ā", :tc3, "iya")]
          end

          def _impf_subjunctive_third_singular_masculine
            [template("ιε", :c1, "α", :c2_geminated_or_aspirated, "ω", :c3, "α"), template("ye", :tc1, "ə", :tc2_geminated_or_aspirated, "ā", :tc3, "a")]
          end

          def _impf_subjunctive_third_singular_feminine
            [template("ιε", :c1, "α", :c2_geminated_or_aspirated, "ω", :c3, "ια"), template("ye", :tc1, "ə", :tc2_geminated_or_aspirated, "ā", :tc3, "iya")]
          end

          def _impf_subjunctive_first_plural
            [template("νε", :c1, "α", :c2_geminated_or_aspirated, "ω", :c3, "υ'α"), template("ne", :tc1, "ə", :tc2_geminated_or_aspirated, "ā", :tc3, "uwa")]
          end

          def _impf_subjunctive_second_plural
            [template("τε", :c1, "α", :c2_geminated_or_aspirated, "ω", :c3, "υ'α"), template("te", :tc1, "ə", :tc2_geminated_or_aspirated, "ā", :tc3, "uwa")]
          end

          def _impf_subjunctive_third_plural
            [template("ιε", :c1, "α", :c2_geminated_or_aspirated, "ω", :c3, "υ'α"), template("ye", :tc1, "ə", :tc2_geminated_or_aspirated, "ā", :tc3, "uwa")]
          end
        end
      end
    end
  end
end
