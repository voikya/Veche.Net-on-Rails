require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Ketheb
        module FinalAspirate
          include Ketheb::Regular

          def subtype
            "C3 = PH/TH/KH/TSH/ČH"
          end

          def _present_first_singular
            [template("α", :c1, "α", :c2_geminated_or_aspirated, "α", :c3), template("'a", :tc1, "ə", :tc2_geminated_or_aspirated, "ə", :tc3)]
          end

          def _present_second_singular_masculine
            [template("τι", :c1, "α", :c2_geminated_or_aspirated, "α", :c3), template("ti", :tc1, "ə", :tc2_geminated_or_aspirated, "ə", :tc3)]
          end

          def _present_third_singular_masculine
            [template("ι", :c1, "α", :c2_geminated_or_aspirated, "α", :c3), template("yi", :tc1, "ə", :tc2_geminated_or_aspirated, "ə", :tc3)]
          end

          def _preterite_second_singular_masculine
            [template(:c1, "α", :c2_geminated_or_aspirated, "η", :c3, "αττα"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "ē", :tc3_lenited, "ətha")]
          end

          def _preterite_second_singular_feminine
            [template(:c1, "α", :c2_geminated_or_aspirated, "η", :c3, "ατζζε"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "ē", :tc3_lenited, "əčhe")]
          end

          def _preterite_first_plural
            [template(:c1, "α", :c2_geminated_or_aspirated, "η", :c3_unaspirated, "νω"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "ē", :tc3_unaspirated, "nā")]
          end

          def _preterite_second_plural_masculine
            [template(:c1, "α", :c2_geminated_or_aspirated, "η", :c3, "αττυν"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "ē", :tc3, "əthun")]
          end

          def _preterite_second_plural_feminine
            [template(:c1, "α", :c2_geminated_or_aspirated, "η", :c3, "ατζζιν"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "ē", :tc3, "əčhin")]
          end

          def _imperfect_first_singular
            if root.medial_aspiratable?
              [template(:c1, "α", :c2_geminated_or_aspirated, "α", :c3_lenited), template(:tc1, "ə", :tc2_geminated_or_aspirated, "ə", :tc3_lenited)]
            else
              [template(:c1, "ε", :c2_geminated_or_aspirated, "α", :c3_lenited), template(:tc1, "e", :tc2_geminated_or_aspirated, "ə", :tc3_lenited)]
            end
          end

          def _imperfect_second_singular_masculine
            if root.medial_aspiratable?
              [template(:c1, "α", :c2_geminated_or_aspirated, "α", :c3_lenited, "ετ"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "ə", :tc3_lenited, "et")]
            else
              [template(:c1, "ε", :c2_geminated_or_aspirated, "α", :c3_lenited, "ετ"), template(:tc1, "e", :tc2_geminated_or_aspirated, "ə", :tc3_lenited, "et")]
            end
          end

          def _imperfect_second_singular_feminine
            if root.medial_aspiratable?
              [template(:c1, "α", :c2_geminated_or_aspirated, "α", :c3_lenited, "ες̄"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "ə", :tc3_lenited, "eš")]
            else
              [template(:c1, "ε", :c2_geminated_or_aspirated, "α", :c3_lenited, "ες̄"), template(:tc1, "e", :tc2_geminated_or_aspirated, "ə", :tc3_lenited, "eš")]
            end
          end

          def _imperfect_third_singular_masculine
            if root.medial_aspiratable?
              [template(:c1, "α", :c2_geminated_or_aspirated, "α", :c3), template(:tc1, "ə", :tc2_geminated_or_aspirated, "ə", :tc3)]
            else
              [template(:c1, "ε", :c2_geminated_or_aspirated, "α", :c3), template(:tc1, "e", :tc2_geminated_or_aspirated, "ə", :tc3)]
            end
          end

          def _imperfect_third_singular_feminine
            if root.medial_aspiratable?
              [template(:c1, "α", :c2_geminated_or_aspirated, "α", :c3, "ω"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "ə", :tc3, "ā")]
            else
              [template(:c1, "ε", :c2_geminated_or_aspirated, "α", :c3, "ω"), template(:tc1, "e", :tc2_geminated_or_aspirated, "ə", :tc3, "ā")]
            end
          end

          def _imperfect_first_plural
            if root.medial_aspiratable?
              [template(:c1, "α", :c2_geminated_or_aspirated, "α", :c3_lenited, "εν"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "ə", :tc3_lenited, "en")]
            else
              [template(:c1, "ε", :c2_geminated_or_aspirated, "α", :c3_lenited, "εν"), template(:tc1, "e", :tc2_geminated_or_aspirated, "ə", :tc3_lenited, "en")]
            end
          end

          def _imperfect_second_plural_masculine
            if root.medial_aspiratable?
              [template(:c1, "α", :c2_lenited, :c3, "αττυν"), template(:tc1, "ə", :tc2_lenited, :tc3, "əthun")]
            else
              [template(:c1, "ε", :c2_lenited, :c3, "αττυν"), template(:tc1, "e", :tc2_lenited, :tc3, "əthun")]
            end
          end

          def _imperfect_second_plural_feminine
            if root.medial_aspiratable?
              [template(:c1, "α", :c2_lenited, :c3, "ατζζιν"), template(:tc1, "ə", :tc2_lenited, :tc3, "əčhin")]
            else
              [template(:c1, "ε", :c2_lenited, :c3, "ατζζιν"), template(:tc1, "e", :tc2_lenited, :tc3, "əčhin")]
            end
          end

          def _imperfect_third_plural
            if root.medial_aspiratable?
              [template(:c1, "α", :c2_geminated_or_aspirated, "α", :c3, "ου"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "ə", :tc3, "ū")]
            else
              [template(:c1, "ε", :c2_geminated_or_aspirated, "α", :c3, "ου"), template(:tc1, "e", :tc2_geminated_or_aspirated, "ə", :tc3, "ū")]
            end
          end

          def _pf_subjunctive_first_singular
            [template("в̄α", :c1, "α", :c2_geminated_or_aspirated, "α", :c3), template("va", :tc1, "ə", :tc2_geminated_or_aspirated, "ə", :tc3)]
          end

          def _pf_subjunctive_first_plural
            [template("в̄ενει", :c1, "α", :c2_geminated_or_aspirated, "α", :c3), template("venī", :tc1, "ə", :tc2_geminated_or_aspirated, "ə", :tc3)]
          end

          def _pf_subjunctive_second
            [template("в̄ετει", :c1, "α", :c2_geminated_or_aspirated, "α", :c3), template("vetī", :tc1, "ə", :tc2_geminated_or_aspirated, "ə", :tc3)]
          end

          def _pf_subjunctive_third
            [template("в̄η", :c1, "α", :c2_geminated_or_aspirated, "α", :c3), template("vē", :tc1, "ə", :tc2_geminated_or_aspirated, "ə", :tc3)]
          end

          def _imperative_feminine_singular
            [template(:c1, "α", :c2_geminated_or_aspirated, "α", :c3, "ει"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "ə", :tc3, "ī")]
          end

          def _imperative_plural
            [template(:c1, "α", :c2_geminated_or_aspirated, "α", :c3, "ου"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "ə", :tc3, "ū")]
          end

          def _active_participle
            [template("μυ", :c1, "α", :c2_geminated_or_aspirated, "α", :c3), template("mu", :tc1, "ə", :tc2_geminated_or_aspirated, "ə", :tc3)]
          end
        end
      end
    end
  end
end
