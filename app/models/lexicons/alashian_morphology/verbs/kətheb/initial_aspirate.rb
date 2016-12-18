require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Ketheb
        module InitialAspirate
          include Ketheb::Regular

          def subtype
            "C1 = PH/TH/KH/TSH/ČH"
          end

          def _present_first_singular
            [template("α", :c1, "α", :c2_geminated_or_aspirated, "α", :c3), template("'ə", :tc1, "ə", :tc2_geminated_or_aspirated, "a", :tc3)]
          end

          def _present_second_singular_masculine
            [template("τα", :c1, "α", :c2_geminated_or_aspirated, "α", :c3), template("tə", :tc1, "ə", :tc2_geminated_or_aspirated, "a", :tc3)]
          end

          def _present_second_singular_feminine
            if root.final_plosive?
              [template("τα", :c1, "α", :c2_lenited, :c3, "ει"), template("tə", :tc1, "ə", :tc2_lenited, :tc3, "ī")]
            else
              [template("τα", :c1, "α", :c2, :c3, "ει"), template("tə", :tc1, "ə", :tc2, :tc3, "ī")]
            end
          end

          def _present_third_singular_masculine
            [template("ια", :c1, "α", :c2_geminated_or_aspirated, "α", :c3), template("yə", :tc1, "ə", :tc2_geminated_or_aspirated, "a", :tc3)]
          end

          def _present_third_singular_feminine
            if root.final_plosive?
              [template("ια", :c1, "α", :c2_lenited, :c3, "ει"), template("yə", :tc1, "ə", :tc2_lenited, :tc3, "ī")]
            else
              [template("ια", :c1, "α", :c2, :c3, "ει"), template("yə", :tc1, "ə", :tc2, :tc3, "ī")]
            end
          end

          def _present_first_plural
            if root.final_plosive?
              [template("να", :c1, "α", :c2_lenited, :c3, "ου"), template("nə", :tc1, "ə", :tc2_lenited, :tc3, "ū")]
            else
              [template("να", :c1, "α", :c2, :c3, "ου"), template("nə", :tc1, "ə", :tc2, :tc3, "ū")]
            end
          end

          def _present_second_plural
            if root.final_plosive?
              [template("τα", :c1, "α", :c2_lenited, :c3, "ου"), template("tə", :tc1, "ə", :tc2_lenited, :tc3, "ū")]
            else
              [template("τα", :c1, "α", :c2, :c3, "ου"), template("tə", :tc1, "ə", :tc2, :tc3, "ū")]
            end
          end

          def _present_third_plural
            if root.final_plosive?
              [template("ια", :c1, "α", :c2_lenited, :c3, "ου"), template("yə", :tc1, "ə", :tc2_lenited, :tc3, "ū")]
            else
              [template("ια", :c1, "α", :c2, :c3, "ου"), template("yə", :tc1, "ə", :tc2, :tc3, "ū")]
            end
          end

          def _pf_subjunctive_first_singular
            [template("в̄α", :c1, "α", :c2_geminated_or_aspirated, "ε", :c3), template("və", :tc1, "ə", :tc2_geminated_or_aspirated, "e", :tc3)]
          end

          def _impf_subjunctive_first_singular
            [template("α", :c1, "α", :c2_geminated_or_aspirated, "ω", :c3, "α"), template("'ə", :tc1, "ə", :tc2_geminated_or_aspirated, "ā", :tc3, "a")]
          end

          def _impf_subjunctive_second_singular_masculine
            [template("τα", :c1, "α", :c2_geminated_or_aspirated, "ω", :c3, "α"), template("tə", :tc1, "ə", :tc2_geminated_or_aspirated, "ā", :tc3, "a")]
          end

          def _impf_subjunctive_second_singular_feminine
            [template("τα", :c1, "α", :c2_geminated_or_aspirated, "ω", :c3, "ια"), template("tə", :tc1, "ə", :tc2_geminated_or_aspirated, "ā", :tc3, "iya")]
          end

          def _impf_subjunctive_third_singular_masculine
            [template("ια", :c1, "α", :c2_geminated_or_aspirated, "ω", :c3, "α"), template("yə", :tc1, "ə", :tc2_geminated_or_aspirated, "ā", :tc3, "a")]
          end

          def _impf_subjunctive_third_singular_feminine
            [template("ια", :c1, "α", :c2_geminated_or_aspirated, "ω", :c3, "ια"), template("yə", :tc1, "ə", :tc2_geminated_or_aspirated, "ā", :tc3, "iya")]
          end

          def _impf_subjunctive_first_plural
            [template("να", :c1, "α", :c2_geminated_or_aspirated, "ω", :c3, "υ'α"), template("nə", :tc1, "ə", :tc2_geminated_or_aspirated, "ā", :tc3, "uwa")]
          end

          def _impf_subjunctive_second_plural
            [template("τα", :c1, "α", :c2_geminated_or_aspirated, "ω", :c3, "υ'α"), template("tə", :tc1, "ə", :tc2_geminated_or_aspirated, "ā", :tc3, "uwa")]
          end

          def _impf_subjunctive_third_plural
            [template("ια", :c1, "α", :c2_geminated_or_aspirated, "ω", :c3, "υ'α"), template("yə", :tc1, "ə", :tc2_geminated_or_aspirated, "ā", :tc3, "uwa")]
          end

          def _infinitive
            [template("μα", :c1, "α", :c2_geminated_or_aspirated, "ου", :c3), template("mə", :tc1, "ə", :tc2_geminated_or_aspirated, "ū", :tc3)]
          end

          def _active_participle
            [template("μα", :c1, "α", :c2_geminated_or_aspirated, "ι", :c3), template("mə", :tc1, "ə", :tc2_geminated_or_aspirated, "i", :tc3)]
          end
        end
      end
    end
  end
end
