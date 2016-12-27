require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Takteb
        module InitialY
          include Takteb::Regular

          def subtype
            "C1 = Y"
          end

          def _preterite_first_singular
            [template("τη", :c2, "η", :c3, "ετ"), template("tē", :tc2, "ē", :tc3, "et")]
          end

          def _preterite_second_singular_masculine
            [template("τη", :c2, "η", :c3_lenited, "τα"), template("tē", :tc2, "ē", :tc3_lenited, "ta")]
          end

          def _preterite_second_singular_feminine
            [template("τη", :c2, "η", :c3_lenited, "σ̄ε"), template("tē", :tc2, "ē", :tc3_lenited, "še")]
          end

          def _preterite_third_singular_masculine
            [template("τη", :c2, "η", :c3), template("tē", :tc2, "ē", :tc3)]
          end

          def _preterite_third_singular_feminine
            [template("τη", :c2, "η", :c3, "ω"), template("tē", :tc2, "ē", :tc3, "ā")]
          end

          def _preterite_first_plural
            [template("τη", :c2, "η", :c3, "νω"), template("tē", :tc2, "ē", :tc3, "nā")]
          end

          def _preterite_second_plural_masculine
            [template("τη", :c2, "η", :c3_lenited, "τυν"), template("tē", :tc2, "ē", :tc3_lenited, "tun")]
          end

          def _preterite_second_plural_feminine
            [template("τη", :c2, "η", :c3_lenited, "σ̄ιν"), template("tē", :tc2, "ē", :tc3_lenited, "šin")]
          end

          def _preterite_third_plural
            [template("τη", :c2, "η", :c3, "ου"), template("tē", :tc2, "ē", :tc3, "ū")]
          end

          def _imperfect_first_singular
            [template("τη", :c2, "ιη", :c3_lenited), template("tē", :tc2, "ie", :tc3_lenited)]
          end

          def _imperfect_second_singular_masculine
            [template("τη", :c2, "ιη", :c3_lenited, "ετ"), template("tē", :tc2, "ie", :tc3_lenited, "et")]
          end

          def _imperfect_second_singular_feminine
            [template("τη", :c2, "ιη", :c3_lenited, "ες̄"), template("tē", :tc2, "ie", :tc3_lenited, "eš")]
          end

          def _imperfect_third_singular_masculine
            [template("τη", :c2, "ιη", :c3), template("tē", :tc2, "ie", :tc3)]
          end

          def _imperfect_third_singular_feminine
            [template("τη", :c2, "ιη", :c3, "ω"), template("tē", :tc2, "ie", :tc3, "ā")]
          end

          def _imperfect_first_plural
            [template("τη", :c2, "ιη", :c3_lenited, "εν"), template("tē", :tc2, "ie", :tc3_lenited, "en")]
          end

          def _imperfect_second_plural_masculine
            [template("τη", :c2, "ιη", :c3_lenited, "τυν"), template("tē", :tc2, "ie", :tc3_lenited, "tun")]
          end

          def _imperfect_second_plural_feminine
            [template("τη", :c2, "ιη", :c3_lenited, "σ̄ιν"), template("tē", :tc2, "ie", :tc3_lenited, "šin")]
          end

          def _imperfect_third_plural
            [template("τη", :c2, "ιη", :c3, "ου"), template("tē", :tc2, "ie", :tc3, "ū")]
          end

          def _imperative_masculine_singular
            if root.tv == "ā"
              [template("τει", :c2, :v, :c3), template("tī", :tc2, :tv, :tc3)]
            else
              [template("τη", :c2, :v, :c3), template("tē", :tc2, :tv, :tc3)]
            end
          end

          def _imperative_feminine_singular
            if root.tv == "ā"
              [template("τει", :c2, :short_v, :c3, "ει"), template("tī", :tc2, :short_tv, :tc3, "ī")]
            else
              [template("τη", :c2, :short_v, :c3, "ει"), template("tē", :tc2, :short_tv, :tc3, "ī")]
            end
          end

          def _imperative_plural
            if root.tv == "ā"
              [template("τει", :c2, :short_v, :c3, "ου"), template("tī", :tc2, :short_tv, :tc3, "ū")]
            else
              [template("τη", :c2, :short_v, :c3, "ου"), template("tē", :tc2, :short_tv, :tc3, "ū")]
            end
          end
        end
      end
    end
  end
end
