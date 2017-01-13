require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Nitkatab
        module InitialUnvoicedFricative
          include Nitkatab::Regular

          def subtype
            "C1 = F/Ṯ/S/Š/X"
          end

          def _preterite_first_singular
            [template("νι", :c1, infix, "α", :c2, "α", :c3, "ετ"), template("ni", :tc1, infix_transliterated, "a", :tc2, "a", :tc3, "et")]
          end

          def _preterite_second_singular_masculine
            [template("νι", :c1, infix, "α", :c2, "α", :c3_lenited, "τα"), template("ni", :tc1, infix_transliterated, "a", :tc2, "a", :tc3_lenited, "ta")]
          end

          def _preterite_second_singular_feminine
            [template("νι", :c1, infix, "α", :c2, "α", :c3_lenited, "σ̄ε"), template("ni", :tc1, infix_transliterated, "a", :tc2, "a", :tc3_lenited, "še")]
          end

          def _preterite_third_singular_masculine
            [template("νι", :c1, infix, "α", :c2, "α", :c3), template("ni", :tc1, infix_transliterated, "a", :tc2, "a", :tc3)]
          end

          def _preterite_third_singular_feminine
            [template("νι", :c1, infix, "α", :c2, "α", :c3, "ω"), template("ni", :tc1, infix_transliterated, "a", :tc2, "a", :tc3, "ā")]
          end

          def _preterite_first_plural
            [template("νι", :c1, infix, "α", :c2, "α", :c3, "νω"), template("ni", :tc1, infix_transliterated, "a", :tc2, "a", :tc3, "nā")]
          end

          def _preterite_second_plural_masculine
            [template("νι", :c1, infix, "α", :c2, "α", :c3_lenited, "τυν"), template("ni", :tc1, infix_transliterated, "a", :tc2, "a", :tc3_lenited, "tun")]
          end

          def _preterite_second_plural_feminine
            [template("νι", :c1, infix, "α", :c2, "α", :c3_lenited, "σ̄ιν"), template("ni", :tc1, infix_transliterated, "a", :tc2, "a", :tc3_lenited, "šin")]
          end

          def _preterite_third_plural
            [template("νι", :c1, infix, "α", :c2, "α", :c3, "ου"), template("ni", :tc1, infix_transliterated, "a", :tc2, "a", :tc3, "ū")]
          end

          def _imperfect_first_singular
            [template("νι", :c1, infix, "ιη", :c2, "ε", :c3_lenited), template("ni", :tc1, infix_transliterated, "ie", :tc2, "e", :tc3_lenited)]
          end

          def _imperfect_second_singular_masculine
            [template("νι", :c1, infix, "ιη", :c2, "ε", :c3_lenited, "ετ"), template("ni", :tc1, infix_transliterated, "ie", :tc2, "e", :tc3_lenited, "et")]
          end

          def _imperfect_second_singular_feminine
            [template("νι", :c1, infix, "ιη", :c2, "ε", :c3_lenited, "ες̄"), template("ni", :tc1, infix_transliterated, "ie", :tc2, "e", :tc3_lenited, "eš")]
          end

          def _imperfect_third_singular_masculine
            [template("νι", :c1, infix, "ιη", :c2, "ε", :c3), template("ni", :tc1, infix_transliterated, "ie", :tc2, "e", :tc3)]
          end

          def _imperfect_third_singular_feminine
            [template("νι", :c1, infix, "ιη", :c2, "ε", :c3, "ω"), template("ni", :tc1, infix_transliterated, "ie", :tc2, "e", :tc3, "ā")]
          end

          def _imperfect_first_plural
            [template("νι", :c1, infix, "ιη", :c2, "ε", :c3_lenited, "εν"), template("ni", :tc1, infix_transliterated, "ie", :tc2, "e", :tc3_lenited, "en")]
          end

          def _imperfect_second_plural_masculine
            [template("νι", :c1, infix, "ιη", :c2, "ε", :c3_lenited, "τυν"), template("ni", :tc1, infix_transliterated, "ie", :tc2, "e", :tc3_lenited, "tun")]
          end

          def _imperfect_second_plural_feminine
            [template("νι", :c1, infix, "ιη", :c2, "ε", :c3_lenited, "σ̄ιν"), template("ni", :tc1, infix_transliterated, "ie", :tc2, "e", :tc3_lenited, "šin")]
          end

          def _imperfect_third_plural
            [template("νι", :c1, infix, "ιη", :c2, "ε", :c3, "ου"), template("ni", :tc1, infix_transliterated, "ie", :tc2, "e", :tc3, "ū")]
          end
        end
      end
    end
  end
end
