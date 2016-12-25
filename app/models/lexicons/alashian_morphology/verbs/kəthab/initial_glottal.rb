require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Kethab
        module InitialGlottal
          include Kethab::Regular

          def subtype
            "C1 = '/H"
          end

          def _present_first_singular
            [template("υια", :c2_geminated_or_aspirated, "ω", :c3), template("'uyə", :tc2_geminated_or_aspirated, "ā", :tc3)]
          end

          def _present_second_singular_masculine
            [template("τυια", :c2_geminated_or_aspirated, "ω", :c3), template("tuyə", :tc2_geminated_or_aspirated, "ā", :tc3)]
          end

          def _present_second_singular_feminine
            [template("τυια", :c2_geminated_or_aspirated, "α", :c3, "ει"), template("tuyə", :tc2_geminated_or_aspirated, "a", :tc3, "ī")]
          end

          def _present_third_singular_masculine
            [template("ιυια", :c2_geminated_or_aspirated, "ω", :c3), template("yuyə", :tc2_geminated_or_aspirated, "ā", :tc3)]
          end

          def _present_third_singular_feminine
            [template("ιυια", :c2_geminated_or_aspirated, "α", :c3, "ει"), template("yuyə", :tc2_geminated_or_aspirated, "a", :tc3, "ī")]
          end

          def _present_first_plural
            [template("νυια", :c2_geminated_or_aspirated, "α", :c3, "ου"), template("nuyə", :tc2_geminated_or_aspirated, "a", :tc3, "ū")]
          end

          def _present_second_plural
            [template("τυια", :c2_geminated_or_aspirated, "α", :c3, "ου"), template("tuyə", :tc2_geminated_or_aspirated, "a", :tc3, "ū")]
          end

          def _present_third_plural
            [template("ιυια", :c2_geminated_or_aspirated, "α", :c3, "ου"), template("yuyə", :tc2_geminated_or_aspirated, "a", :tc3, "ū")]
          end

          def _pf_subjunctive_first_singular
            [template("в̄υια", :c2_geminated_or_aspirated, "α", :c3), template("vuyə", :tc2_geminated_or_aspirated, "a", :tc3)]
          end

          def _pf_subjunctive_first_plural
            [template("в̄ανουια", :c2_geminated_or_aspirated, "α", :c3), template("vanūyə", :tc2_geminated_or_aspirated, "a", :tc3)]
          end

          def _pf_subjunctive_second
            [template("в̄ατουια", :c2_geminated_or_aspirated, "α", :c3), template("vatūyə", :tc2_geminated_or_aspirated, "a", :tc3)]
          end

          def _pf_subjunctive_third
            [template("в̄ηια", :c2_geminated_or_aspirated, "α", :c3), template("vēyə", :tc2_geminated_or_aspirated, "a", :tc3)]
          end

          def _impf_subjunctive_first_singular
            [template("υια", :c2_geminated_or_aspirated, "ω", :c3, "α"), template("'uyə", :tc2_geminated_or_aspirated, "ā", :tc3, "a")]
          end

          def _impf_subjunctive_second_singular_masculine
            [template("τυια", :c2_geminated_or_aspirated, "ω", :c3, "α"), template("tuyə", :tc2_geminated_or_aspirated, "ā", :tc3, "a")]
          end

          def _impf_subjunctive_second_singular_feminine
            [template("τυια", :c2_geminated_or_aspirated, "ω", :c3, "ια"), template("tuyə", :tc2_geminated_or_aspirated, "ā", :tc3, "iya")]
          end

          def _impf_subjunctive_third_singular_masculine
            [template("ιυια", :c2_geminated_or_aspirated, "ω", :c3, "α"), template("yuyə", :tc2_geminated_or_aspirated, "ā", :tc3, "a")]
          end

          def _impf_subjunctive_third_singular_feminine
            [template("ιυια", :c2_geminated_or_aspirated, "ω", :c3, "ια"), template("yuyə", :tc2_geminated_or_aspirated, "ā", :tc3, "iya")]
          end

          def _impf_subjunctive_first_plural
            [template("νυια", :c2_geminated_or_aspirated, "ω", :c3, "υ'α"), template("nuyə", :tc2_geminated_or_aspirated, "ā", :tc3, "uwa")]
          end

          def _impf_subjunctive_second_plural
            [template("τυια", :c2_geminated_or_aspirated, "ω", :c3, "υ'α"), template("tuyə", :tc2_geminated_or_aspirated, "ā", :tc3, "uwa")]
          end

          def _impf_subjunctive_third_plural
            [template("ιυια", :c2_geminated_or_aspirated, "ω", :c3, "υ'α"), template("yuyə", :tc2_geminated_or_aspirated, "ā", :tc3, "uwa")]
          end

          def _infinitive
            [template("μαια", :c2_geminated_or_aspirated, "ω", :c3), template("mayə", :tc2_geminated_or_aspirated, "ā", :tc3)]
          end

          def _passive_participle
            [template("μυια", :c2_geminated_or_aspirated, "α", :c3), template("muyə", :tc2_geminated_or_aspirated, "a", :tc3)]
          end
        end
      end
    end
  end
end
