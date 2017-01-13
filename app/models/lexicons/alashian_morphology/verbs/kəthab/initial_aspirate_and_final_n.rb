require_relative 'final_n'

module Morphology
  module Alashian
    module Verbs
      module Kethab
        module InitialAspirateAndFinalN
          include Kethab::FinalN

          def subtype
            "C1 = PH/TH/KH/TSH/ČH, C3 = N"
          end

          def _present_first_singular
            [template("α", :c1, "α", :c2_geminated_or_aspirated, "ω", :c3), template("'ə", :tc1, "ə", :tc2_geminated_or_aspirated, "ā", :tc3)]
          end

          def _present_second_singular_masculine
            [template("τα", :c1, "α", :c2_geminated_or_aspirated, "ω", :c3), template("tə", :tc1, "ə", :tc2_geminated_or_aspirated, "ā", :tc3)]
          end

          def _present_second_singular_feminine
            [template("τα", :c1, "α", :c2_geminated_or_aspirated, "α", :c3, "ει"), template("tə", :tc1, "ə", :tc2_geminated_or_aspirated, "a", :tc3, "ī")]
          end

          def _present_third_singular_masculine
            [template("ια", :c1, "α", :c2_geminated_or_aspirated, "ω", :c3), template("yə", :tc1, "ə", :tc2_geminated_or_aspirated, "ā", :tc3)]
          end

          def _present_third_singular_feminine
            [template("ια", :c1, "α", :c2_geminated_or_aspirated, "α", :c3, "ει"), template("yə", :tc1, "ə", :tc2_geminated_or_aspirated, "a", :tc3, "ī")]
          end

          def _present_first_plural
            [template("να", :c1, "α", :c2_geminated_or_aspirated, "α", :c3, "ου"), template("nə", :tc1, "ə", :tc2_geminated_or_aspirated, "a", :tc3, "ū")]
          end

          def _present_second_plural
            [template("τα", :c1, "α", :c2_geminated_or_aspirated, "α", :c3, "ου"), template("tə", :tc1, "ə", :tc2_geminated_or_aspirated, "a", :tc3, "ū")]
          end

          def _present_third_plural
            [template("ια", :c1, "α", :c2_geminated_or_aspirated, "α", :c3, "ου"), template("yə", :tc1, "ə", :tc2_geminated_or_aspirated, "a", :tc3, "ū")]
          end

          def _pf_subjunctive_first_singular
            [template("в̄α", :c1, "α", :c2_geminated_or_aspirated, "α", :c3), template("və", :tc1, "ə", :tc2_geminated_or_aspirated, "a", :tc3)]
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
            [template("μα", :c1, "α", :c2_geminated_or_aspirated, "ω", :c3), template("mə", :tc1, "ə", :tc2_geminated_or_aspirated, "ā", :tc3)]
          end

          def _passive_participle
            [template("μα", :c1, "α", :c2_geminated_or_aspirated, "α", :c3), template("mə", :tc1, "ə", :tc2_geminated_or_aspirated, "a", :tc3)]
          end
        end
      end
    end
  end
end
