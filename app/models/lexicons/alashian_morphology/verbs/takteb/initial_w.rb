require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Takteb
        module InitialW
          include Takteb::Regular

          def subtype
            "C1 = W"
          end

          def _preterite_first_singular
            [template("του", :c2, "η", :c3, "ετ"), template("tū", :tc2, "ē", :tc3, "et")]
          end

          def _preterite_second_singular_masculine
            [template("του", :c2, "η", :c3_lenited, "τα"), template("tū", :tc2, "ē", :tc3_lenited, "ta")]
          end

          def _preterite_second_singular_feminine
            [template("του", :c2, "η", :c3_lenited, "σ̄ε"), template("tū", :tc2, "ē", :tc3_lenited, "še")]
          end

          def _preterite_third_singular_masculine
            [template("του", :c2, "η", :c3), template("tū", :tc2, "ē", :tc3)]
          end

          def _preterite_third_singular_feminine
            [template("του", :c2, "η", :c3, "ω"), template("tū", :tc2, "ē", :tc3, "ā")]
          end

          def _preterite_first_plural
            [template("του", :c2, "η", :c3, "νω"), template("tū", :tc2, "ē", :tc3, "nā")]
          end

          def _preterite_second_plural_masculine
            [template("του", :c2, "η", :c3_lenited, "τυν"), template("tū", :tc2, "ē", :tc3_lenited, "tun")]
          end

          def _preterite_second_plural_feminine
            [template("του", :c2, "η", :c3_lenited, "σ̄ιν"), template("tū", :tc2, "ē", :tc3_lenited, "šin")]
          end

          def _preterite_third_plural
            [template("του", :c2, "η", :c3, "ου"), template("tū", :tc2, "ē", :tc3, "ū")]
          end

          def _imperfect_first_singular
            [template("του", :c2, "ιη", :c3_lenited), template("tū", :tc2, "ie", :tc3_lenited)]
          end

          def _imperfect_second_singular_masculine
            [template("του", :c2, "ιη", :c3_lenited, "ετ"), template("tū", :tc2, "ie", :tc3_lenited, "et")]
          end

          def _imperfect_second_singular_feminine
            [template("του", :c2, "ιη", :c3_lenited, "ες̄"), template("tū", :tc2, "ie", :tc3_lenited, "eš")]
          end

          def _imperfect_third_singular_masculine
            [template("του", :c2, "ιη", :c3), template("tū", :tc2, "ie", :tc3)]
          end

          def _imperfect_third_singular_feminine
            [template("του", :c2, "ιη", :c3, "ω"), template("tū", :tc2, "ie", :tc3, "ā")]
          end

          def _imperfect_first_plural
            [template("του", :c2, "ιη", :c3_lenited, "εν"), template("tū", :tc2, "ie", :tc3_lenited, "en")]
          end

          def _imperfect_second_plural_masculine
            [template("του", :c2, "ιη", :c3_lenited, "τυν"), template("tū", :tc2, "ie", :tc3_lenited, "tun")]
          end

          def _imperfect_second_plural_feminine
            [template("του", :c2, "ιη", :c3_lenited, "σ̄ιν"), template("tū", :tc2, "ie", :tc3_lenited, "šin")]
          end

          def _imperfect_third_plural
            [template("του", :c2, "ιη", :c3, "ου"), template("tū", :tc2, "ie", :tc3, "ū")]
          end

          def _imperative_masculine_singular
            [template("του", :c2, :v, :c3), template("tū", :tc2, :tv, :tc3)]
          end

          def _imperative_feminine_singular
            [template("του", :c2, :short_v, :c3, "ει"), template("tū", :tc2, :short_tv, :tc3, "ī")]
          end

          def _imperative_plural
            [template("του", :c2, :short_v, :c3, "ου"), template("tū", :tc2, :short_tv, :tc3, "ū")]
          end

          def _active_participle
            [template("μι", infix, "'υα", :c2, "ι", :c3), template("mi", infix_transliterated, "wa", :tc2, "i", :tc3)]
          end
        end
      end
    end
  end
end
