require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Kethab
        module FinalAspirate
          include Kethab::Regular

          def subtype
            "C3 = PH/TH/KH/TSH/ČH"
          end

          def _present_second_singular_feminine
            [template("τυ", :c1, "α", :c2_geminated_or_aspirated, "α", :c3, "ει"), template("tu", :tc1, "ə", :tc2_geminated_or_aspirated, "ə", :tc3, "ī")]
          end

          def _present_third_singular_feminine
            [template("ιυ", :c1, "α", :c2_geminated_or_aspirated, "α", :c3, "ει"), template("yu", :tc1, "ə", :tc2_geminated_or_aspirated, "ə", :tc3, "ī")]
          end

          def _present_first_plural
            [template("νυ", :c1, "α", :c2_geminated_or_aspirated, "α", :c3, "ου"), template("nu", :tc1, "ə", :tc2_geminated_or_aspirated, "ə", :tc3, "ū")]
          end

          def _present_second_plural
            [template("τυ", :c1, "α", :c2_geminated_or_aspirated, "α", :c3, "ου"), template("tu", :tc1, "ə", :tc2_geminated_or_aspirated, "ə", :tc3, "ū")]
          end

          def _present_third_plural
            [template("ιυ", :c1, "α", :c2_geminated_or_aspirated, "α", :c3, "ου"), template("yu", :tc1, "ə", :tc2_geminated_or_aspirated, "ə", :tc3, "ū")]
          end

          def _preterite_second_singular_masculine
            [template(:c1, "α", :c2_geminated_or_aspirated, "ω", :c3, "αττα"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "ā", :tc3_lenited, "ətha")]
          end

          def _preterite_second_singular_feminine
            [template(:c1, "α", :c2_geminated_or_aspirated, "ω", :c3, "ατζζε"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "ā", :tc3_lenited, "əčhe")]
          end

          def _preterite_first_plural
            [template(:c1, "α", :c2_geminated_or_aspirated, "ω", :c3_unaspirated, "νω"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "ā", :tc3_unaspirated, "nā")]
          end

          def _preterite_second_plural_masculine
            [template(:c1, "α", :c2_geminated_or_aspirated, "ω", :c3, "αττυν"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "ā", :tc3, "əthun")]
          end

          def _preterite_second_plural_feminine
            [template(:c1, "α", :c2_geminated_or_aspirated, "ω", :c3, "ατζζιν"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "ā", :tc3, "əčhin")]
          end

          def _imperfect_first_singular
            if root.medial_aspiratable?
              [template(:c1, "α", :c2_geminated_or_aspirated, "α", :c3), template(:tc1, "ə", :tc2_geminated_or_aspirated, "ə", :tc3)]
            else
              [template(:c1, "υ", :c2_geminated_or_aspirated, "α", :c3), template(:tc1, "u", :tc2_geminated_or_aspirated, "ə", :tc3)]
            end
          end

          def _imperfect_second_singular_masculine
            if root.medial_aspiratable?
              [template(:c1, "α", :c2_geminated_or_aspirated, "α", :c3_lenited, "ατ"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "ə", :tc3_lenited, "at")]
            else
              [template(:c1, "υ", :c2_geminated_or_aspirated, "α", :c3_lenited, "ατ"), template(:tc1, "u", :tc2_geminated_or_aspirated, "ə", :tc3_lenited, "at")]
            end
          end

          def _imperfect_second_singular_feminine
            if root.medial_aspiratable?
              [template(:c1, "α", :c2_geminated_or_aspirated, "α", :c3_lenited, "ας̄"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "ə", :tc3_lenited, "aš")]
            else
              [template(:c1, "υ", :c2_geminated_or_aspirated, "α", :c3_lenited, "ας̄"), template(:tc1, "u", :tc2_geminated_or_aspirated, "ə", :tc3_lenited, "aš")]
            end
          end

          def _imperfect_third_singular_masculine
            if root.medial_aspiratable?
              [template(:c1, "α", :c2_geminated_or_aspirated, "α", :c3), template(:tc1, "ə", :tc2_geminated_or_aspirated, "ə", :tc3)]
            else
              [template(:c1, "υ", :c2_geminated_or_aspirated, "α", :c3), template(:tc1, "u", :tc2_geminated_or_aspirated, "ə", :tc3)]
            end
          end

          def _imperfect_third_singular_feminine
            if root.medial_aspiratable?
              [template(:c1, "α", :c2_geminated_or_aspirated, "α", :c3, "ω"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "ə", :tc3, "ā")]
            else
              [template(:c1, "υ", :c2_geminated_or_aspirated, "α", :c3, "ω"), template(:tc1, "u", :tc2_geminated_or_aspirated, "ə", :tc3, "ā")]
            end
          end

          def _imperfect_first_plural
            if root.medial_aspiratable?
              [template(:c1, "α", :c2_geminated_or_aspirated, "α", :c3_lenited, "αν"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "ə", :tc3_lenited, "an")]
            else
              [template(:c1, "υ", :c2_geminated_or_aspirated, "α", :c3_lenited, "αν"), template(:tc1, "u", :tc2_geminated_or_aspirated, "ə", :tc3_lenited, "an")]
            end
          end

          def _imperfect_second_plural_masculine
            if root.medial_aspiratable?
              [template(:c1, "α", :c2_lenited, :c3, "αττυν"), template(:tc1, "ə", :tc2_lenited, :tc3, "əthun")]
            else
              [template(:c1, "υ", :c2_lenited, :c3, "αττυν"), template(:tc1, "u", :tc2_lenited, :tc3, "əthun")]
            end
          end

          def _imperfect_second_plural_feminine
            if root.medial_aspiratable?
              [template(:c1, "α", :c2_lenited, :c3, "ατζζιν"), template(:tc1, "ə", :tc2_lenited, :tc3, "əčhin")]
            else
              [template(:c1, "υ", :c2_lenited, :c3, "ατζζιν"), template(:tc1, "u", :tc2_lenited, :tc3, "əčhin")]
            end
          end

          def _imperfect_third_plural
            if root.medial_aspiratable?
              [template(:c1, "α", :c2_geminated_or_aspirated, "α", :c3, "ου"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "ə", :tc3, "ū")]
            else
              [template(:c1, "υ", :c2_geminated_or_aspirated, "α", :c3, "ου"), template(:tc1, "u", :tc2_geminated_or_aspirated, "ə", :tc3, "ū")]
            end
          end

          def _pf_subjunctive_first_singular
            [template("в̄υ", :c1, "α", :c2_geminated_or_aspirated, "α", :c3), template("vu", :tc1, "ə", :tc2_geminated_or_aspirated, "ə", :tc3)]
          end

          def _pf_subjunctive_first_plural
            [template("в̄ανου", :c1, "α", :c2_geminated_or_aspirated, "α", :c3), template("vanū", :tc1, "ə", :tc2_geminated_or_aspirated, "ə", :tc3)]
          end

          def _pf_subjunctive_second
            [template("в̄ατου", :c1, "α", :c2_geminated_or_aspirated, "α", :c3), template("vatū", :tc1, "ə", :tc2_geminated_or_aspirated, "ə", :tc3)]
          end

          def _pf_subjunctive_third
            [template("в̄η", :c1, "α", :c2_geminated_or_aspirated, "α", :c3), template("vē", :tc1, "ə", :tc2_geminated_or_aspirated, "ə", :tc3)]
          end

          def _passive_participle
            [template("μυ", :c1, "α", :c2_geminated_or_aspirated, "α", :c3), template("mu", :tc1, "ə", :tc2_geminated_or_aspirated, "ə", :tc3)]
          end
        end
      end
    end
  end
end
