require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Nuktab
        module FinalAspirate
          include Nuktab::Regular

          def subtype
            "C3 = PH/TH/KH/TSH/ČH"
          end

          def _preterite_second_singular_masculine
            if root.medial_plosive?
              [template("νυ", :c1_lenited, :c2, "ω", :c3_unaspirated, "τα"), template("nu", :tc1_lenited, :tc2, "ā", :tc3_unaspirated, "ta")]
            else
              [template("νυ", :c1, :c2, "ω", :c3_unaspirated, "τα"), template("nu", :tc1, :tc2, "ā", :tc3_unaspirated, "ta")]
            end
          end

          def _preterite_second_singular_feminine
            if root.c3 == "τζζ"
              if root.medial_plosive?
                [template("νυ", :c1_lenited, :c2, "ωτζζε"), template("nu", :tc1_lenited, :tc2, "āčče")]
              else
                [template("νυ", :c1, :c2, "ωτζζε"), template("nu", :tc1, :tc2, "āčče")]
              end
            else
              if root.medial_plosive?
                [template("νυ", :c1_lenited, :c2, "ω", :c3_unaspirated, "τζε"), template("nu", :tc1_lenited, :tc2, "ā", :tc3_unaspirated, "če")]
              else
                [template("νυ", :c1, :c2, "ω", :c3_unaspirated, "τζε"), template("nu", :tc1, :tc2, "ā", :tc3_unaspirated, "če")]
              end
            end
          end

          def _preterite_first_plural
            if root.medial_plosive?
              [template("νυ", :c1_lenited, :c2, "ω", :c3_unaspirated, "νω"), template("nu", :tc1_lenited, :tc2, "ā", :tc3_unaspirated, "nā")]
            else
              [template("νυ", :c1, :c2, "ω", :c3_unaspirated, "νω"), template("nu", :tc1, :tc2, "ā", :tc3_unaspirated, "nā")]
            end
          end

          def _preterite_second_plural_masculine
            if root.medial_plosive?
              [template("νυ", :c1_lenited, :c2, "ω", :c3_unaspirated, "τυν"), template("nu", :tc1_lenited, :tc2, "ā", :tc3_unaspirated, "tun")]
            else
              [template("νυ", :c1, :c2, "ω", :c3_unaspirated, "τυν"), template("nu", :tc1, :tc2, "ā", :tc3_unaspirated, "tun")]
            end
          end

          def _preterite_second_plural_feminine
            if root.medial_plosive?
              [template("νυ", :c1_lenited, :c2, "ω", :c3_unaspirated, "τζιν"), template("nu", :tc1_lenited, :tc2, "ā", :tc3_unaspirated, "čin")]
            else
              [template("νυ", :c1, :c2, "ω", :c3_unaspirated, "τζιν"), template("nu", :tc1, :tc2, "ā", :tc3_unaspirated, "čin")]
            end
          end

          def _imperfect_first_singular
            [template("νυ", :c1, "υω", :c2, "α", :c3), template("nu", :tc1, "uo", :tc2, "ə", :tc3)]
          end

          def _imperfect_second_singular_masculine
            [template("νυ", :c1, "υω", :c2, "α", :c3, "ατ"), template("nu", :tc1, "uo", :tc2, "ə", :tc3, "at")]
          end

          def _imperfect_second_singular_feminine
            [template("νυ", :c1, "υω", :c2, "α", :c3, "ας̄"), template("nu", :tc1, "uo", :tc2, "ə", :tc3, "aš")]
          end

          def _imperfect_third_singular_masculine
            [template("νυ", :c1, "ου", :c2, "α", :c3), template("nu", :tc1, "ū", :tc2, "ə", :tc3)]
          end

          def _imperfect_first_plural
            [template("νυ", :c1, "υω", :c2, "α", :c3, "αν"), template("nu", :tc1, "uo", :tc2, "ə", :tc3, "an")]
          end

          def _imperfect_second_plural_masculine
            [template("νυ", :c1, "υω", :c2, "α", :c3_unaspirated, "τυν"), template("nu", :tc1, "uo", :tc2, "ə", :tc3_unaspirated, "tun")]
          end

          def _imperfect_second_plural_feminine
            [template("νυ", :c1, "υω", :c2, "α", :c3_unaspirated, "τζιν"), template("nu", :tc1, "uo", :tc2, "ə", :tc3_unaspirated, "čin")]
          end

          def _volitive_first_singular
            [template("α", :c1, :c1, "υ", :c2, "ω", :c3, "αννα"), template("'a", :tc1, :tc1, "u", :tc2, "ā", :tc3, "anna")]
          end

          def _volitive_second_singular_masculine
            [template("τι", :c1, :c1, "υ", :c2, "ω", :c3, "αννα"), template("ti", :tc1, :tc1, "u", :tc2, "ā", :tc3, "anna")]
          end

          def _volitive_third_singular_masculine
            [template("ι", :c1, :c1, "υ", :c2, "ω", :c3, "αννα"), template("yi", :tc1, :tc1, "u", :tc2, "ā", :tc3, "anna")]
          end

          def _passive_participle
            if root.medial_plosive?
              [template("να", :c1_lenited, :c2, "α", :c3), template("na", :tc1_lenited, :tc2, "ə", :tc3)]
            else
              [template("να", :c1, :c2, "α", :c3), template("na", :tc1, :tc2, "ə", :tc3)]
            end
          end
        end
      end
    end
  end
end
