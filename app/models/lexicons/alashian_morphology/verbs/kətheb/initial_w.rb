require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Ketheb
        module InitialW
          include Ketheb::Regular

          def subtype
            "C1 = W"
          end

          def _present_second_singular_masculine
            [template("τι'", :c1, "α", :c2_geminated_or_aspirated, "α", :c3), template("ti", :tc1, "ə", :tc2_geminated_or_aspirated, "a", :tc3)]
          end

          def _present_third_singular_masculine
            [template("ι'", :c1, "α", :c2_geminated_or_aspirated, "α", :c3), template("yi", :tc1, "ə", :tc2_geminated_or_aspirated, "a", :tc3)]
          end

          def _preterite_first_singular
            [template("в̄α", :c2_geminated_or_aspirated, "η", :c3, "ετ"), template("və", :tc2_geminated_or_aspirated, "ē", :tc3, "et")]
          end

          def _preterite_second_singular_masculine
            [template("в̄α", :c2_geminated_or_aspirated, "η", :c3_lenited, "τα"), template("və", :tc2_geminated_or_aspirated, "ē", :tc3_lenited, "ta")]
          end

          def _preterite_second_singular_feminine
            [template("в̄α", :c2_geminated_or_aspirated, "η", :c3_lenited, "σ̄ε"), template("və", :tc2_geminated_or_aspirated, "ē", :tc3_lenited, "še")]
          end

          def _preterite_third_singular_masculine
            [template("в̄α", :c2_geminated_or_aspirated, "η", :c3), template("və", :tc2_geminated_or_aspirated, "ē", :tc3)]
          end

          def _preterite_third_singular_feminine
            if root.medial_aspiratable?
              [template("в̄α", :c2_geminated_or_aspirated, "η", :c3, "ω"), template("və", :tc2_geminated_or_aspirated, "ē", :tc3, "ā")]
            else
              [template("в̄ι", :c2_geminated_or_aspirated, "η", :c3, "ω"), template("vi", :tc2_geminated_or_aspirated, "ē", :tc3, "ā")]
            end
          end

          def _preterite_first_plural
            [template("в̄α", :c2_geminated_or_aspirated, "η", :c3, "νω"), template("və", :tc2_geminated_or_aspirated, "ē", :tc3, "nā")]
          end

          def _preterite_second_plural_masculine
            [template("в̄α", :c2_geminated_or_aspirated, "η", :c3_lenited, "τυν"), template("və", :tc2_geminated_or_aspirated, "ē", :tc3_lenited, "tun")]
          end

          def _preterite_second_plural_feminine
            [template("в̄α", :c2_geminated_or_aspirated, "η", :c3_lenited, "σ̄ιν"), template("və", :tc2_geminated_or_aspirated, "ē", :tc3_lenited, "šin")]
          end

          def _preterite_third_plural
            if root.medial_aspiratable?
              [template("в̄α", :c2_geminated_or_aspirated, "η", :c3, "ου"), template("və", :tc2_geminated_or_aspirated, "ē", :tc3, "ū")]
            else
              [template("в̄ι", :c2_geminated_or_aspirated, "η", :c3, "ου"), template("vi", :tc2_geminated_or_aspirated, "ē", :tc3, "ū")]
            end
          end

          def _imperfect_first_singular
            if root.medial_aspiratable?
              [template("в̄α", :c2_geminated_or_aspirated, "ε", :c3_lenited), template("və", :tc2_geminated_or_aspirated, "e", :tc3_lenited)]
            else
              [template("в̄ε", :c2_geminated_or_aspirated, "ε", :c3_lenited), template("ve", :tc2_geminated_or_aspirated, "e", :tc3_lenited)]
            end
          end

          def _imperfect_second_singular_masculine
            if root.medial_aspiratable?
              [template("в̄α", :c2_geminated_or_aspirated, "ε", :c3_lenited, "ετ"), template("və", :tc2_geminated_or_aspirated, "e", :tc3_lenited, "et")]
            else
              [template("в̄ε", :c2_geminated_or_aspirated, "ε", :c3_lenited, "ετ"), template("ve", :tc2_geminated_or_aspirated, "e", :tc3_lenited, "et")]
            end
          end

          def _imperfect_second_singular_feminine
            if root.medial_aspiratable?
              [template("в̄α", :c2_geminated_or_aspirated, "ε", :c3_lenited, "ες̄"), template("və", :tc2_geminated_or_aspirated, "e", :tc3_lenited, "eš")]
            else
              [template("в̄ε", :c2_geminated_or_aspirated, "ε", :c3_lenited, "ες̄"), template("ve", :tc2_geminated_or_aspirated, "e", :tc3_lenited, "eš")]
            end
          end

          def _imperfect_third_singular_masculine
            if root.medial_aspiratable?
              [template("в̄α", :c2_geminated_or_aspirated, "ε", :c3), template("və", :tc2_geminated_or_aspirated, "e", :tc3)]
            else
              [template("в̄ε", :c2_geminated_or_aspirated, "ε", :c3), template("ve", :tc2_geminated_or_aspirated, "e", :tc3)]
            end
          end

          def _imperfect_third_singular_feminine
            if root.medial_aspiratable?
              [template("в̄α", :c2_geminated_or_aspirated, "ε", :c3, "ω"), template("və", :tc2_geminated_or_aspirated, "e", :tc3, "ā")]
            else
              [template("в̄ε", :c2_geminated_or_aspirated, "ε", :c3, "ω"), template("ve", :tc2_geminated_or_aspirated, "e", :tc3, "ā")]
            end
          end

          def _imperfect_first_plural
            if root.medial_aspiratable?
              [template("в̄α", :c2_geminated_or_aspirated, "ε", :c3_lenited, "εν"), template("və", :tc2_geminated_or_aspirated, "e", :tc3_lenited, "en")]
            else
              [template("в̄ε", :c2_geminated_or_aspirated, "ε", :c3_lenited, "εν"), template("ve", :tc2_geminated_or_aspirated, "e", :tc3_lenited, "en")]
            end
          end

          def _imperfect_second_plural_masculine
            if root.medial_aspiratable?
              [template("в̄α", :c2_geminated_or_aspirated, "ε", :c3_lenited, "τυν"), template("və", :tc2_geminated_or_aspirated, "e", :tc3_lenited, "tun")]
            else
              [template("в̄ε", :c2_geminated_or_aspirated, "ε", :c3_lenited, "τυν"), template("ve", :tc2_geminated_or_aspirated, "e", :tc3_lenited, "tun")]
            end
          end

          def _imperfect_second_plural_feminine
            if root.medial_aspiratable?
              [template("в̄α", :c2_geminated_or_aspirated, "ε", :c3_lenited, "σ̄ιν"), template("və", :tc2_geminated_or_aspirated, "e", :tc3_lenited, "šin")]
            else
              [template("в̄ε", :c2_geminated_or_aspirated, "ε", :c3_lenited, "σ̄ιν"), template("ve", :tc2_geminated_or_aspirated, "e", :tc3_lenited, "šin")]
            end
          end

          def _imperfect_third_plural
            if root.medial_aspiratable?
              [template("в̄α", :c2_geminated_or_aspirated, "ε", :c3, "ου"), template("və", :tc2_geminated_or_aspirated, "e", :tc3, "ū")]
            else
              [template("в̄ε", :c2_geminated_or_aspirated, "ε", :c3, "ου"), template("ve", :tc2_geminated_or_aspirated, "e", :tc3, "ū")]
            end
          end

          def _imperative_masculine_singular
            [template("в̄α", :c2_geminated_or_aspirated, "η", :c3), template("və", :tc2_geminated_or_aspirated, "ē", :tc3)]
          end

          def _imperative_feminine_singular
            [template("в̄α", :c2_geminated_or_aspirated, "ε", :c3, "ει"), template("və", :tc2_geminated_or_aspirated, "e", :tc3, "ī")]
          end

          def _imperative_plural
            [template("в̄α", :c2_geminated_or_aspirated, "ε", :c3, "ου"), template("və", :tc2_geminated_or_aspirated, "e", :tc3, "ū")]
          end
        end
      end
    end
  end
end
