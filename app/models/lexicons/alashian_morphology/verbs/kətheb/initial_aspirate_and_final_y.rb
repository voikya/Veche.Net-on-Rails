require_relative 'final_y'

module Morphology
  module Alashian
    module Verbs
      module Ketheb
        module InitialAspirateAndFinalY
          include Ketheb::FinalY

          def subtype
            "C1 = PH/TH/KH/TSH/ČH, C3 = Y"
          end

          def _present_first_singular
            [template("α", :c1, "α", :c2_geminated_or_aspirated, "ἠ"), template("'ə", :tc1, "ə", :tc2_geminated_or_aspirated, "ē")]
          end

          def _present_second_singular_masculine
            [template("τα", :c1, "α", :c2_geminated_or_aspirated, "ἠ"), template("tə", :tc1, "ə", :tc2_geminated_or_aspirated, "ē")]
          end

          def _present_second_singular_feminine
            [template("τα", :c1, "α", :c2, :c3, "ει"), template("tə", :tc1, "ə", :tc2, :tc3, "ī")]
          end

          def _present_third_singular_masculine
            [template("ια", :c1, "α", :c2_geminated_or_aspirated, "ἠ"), template("yə", :tc1, "ə", :tc2_geminated_or_aspirated, "ē")]
          end

          def _present_third_singular_feminine
            [template("ια", :c1, "α", :c2, :c3, "ει"), template("yə", :tc1, "ə", :tc2, :tc3, "ī")]
          end

          def _present_first_plural
            [template("να", :c1, "α", :c2, :c3, "ου"), template("nə", :tc1, "ə", :tc2, :tc3, "ū")]
          end

          def _present_second_plural
            [template("τα", :c1, "α", :c2, :c3, "ου"), template("tə", :tc1, "ə", :tc2, :tc3, "ū")]
          end

          def _present_third_plural
            [template("ια", :c1, "α", :c2, :c3, "ου"), template("yə", :tc1, "ə", :tc2, :tc3, "ū")]
          end

          def _pf_subjunctive_first_singular
            [template("в̄α", :c1, "α", :c2_geminated_or_aspirated, "η"), template("və", :tc1, "ə", :tc2_geminated_or_aspirated, "ē")]
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
            [template("μα", :c1, "α", :c2_geminated_or_aspirated, "ου"), template("mə", :tc1, "ə", :tc2_geminated_or_aspirated, "ū")]
          end

          def _active_participle
            [template("μα", :c1, "α", :c2_geminated_or_aspirated, "ει"), template("mə", :tc1, "ə", :tc2_geminated_or_aspirated, "ī")]
          end
        end
      end
    end
  end
end
