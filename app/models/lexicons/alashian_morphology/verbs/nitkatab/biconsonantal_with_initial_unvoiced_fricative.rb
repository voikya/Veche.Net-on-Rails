require_relative 'biconsonantal'

module Morphology
  module Alashian
    module Verbs
      module Nitkatab
        module BiconsonantalWithInitialUnvoicedFricative
          include Nitkatab::Biconsonantal

          def subtype
            "Biconsonantal Root with C1 = F/Ṯ/S/Š/X"
          end

          def _preterite_first_singular
            [template("νι", :c1, infix, :v, :c2, "ετ"), template("ni", :tc1, infix_transliterated, :tv, :tc2, "et")]
          end

          def _preterite_second_singular_masculine
            [template("νι", :c1, infix, :v, :c2_lenited, "τα"), template("ni", :tc1, infix_transliterated, :tv, :tc2_lenited, "ta")]
          end

          def _preterite_second_singular_feminine
            [template("νι", :c1, infix, :v, :c2_lenited, "σ̄ε"), template("ni", :tc1, infix_transliterated, :tv, :tc2_lenited, "še")]
          end

          def _preterite_third_singular_masculine
            [template("νι", :c1, infix, :v, :c2), template("ni", :tc1, infix_transliterated, :tv, :tc2)]
          end

          def _preterite_third_singular_feminine
            [template("νι", :c1, infix, :v, :c2, "ω"), template("ni", :tc1, infix_transliterated, :tv, :tc2, "ā")]
          end

          def _preterite_first_plural
            [template("νι", :c1, infix, :v, :c2, "νω"), template("ni", :tc1, infix_transliterated, :tv, :tc2, "nā")]
          end

          def _preterite_second_plural_masculine
            [template("νι", :c1, infix, :v, :c2_lenited, "τυν"), template("ni", :tc1, infix_transliterated, :tv, :tc2_lenited, "tun")]
          end

          def _preterite_second_plural_feminine
            [template("νι", :c1, infix, :v, :c2_lenited, "σ̄ιν"), template("ni", :tc1, infix_transliterated, :tv, :tc2_lenited, "šin")]
          end

          def _preterite_third_plural
            [template("νι", :c1, infix, :v, :c2, "ου"), template("ni", :tc1, infix_transliterated, :tv, :tc2, "ū")]
          end

          def _imperfect_first_singular
            [template("νι", :c1, infix, "ιη", :c2_lenited), template("ni", :tc1, infix_transliterated, "ie", :tc2_lenited)]
          end

          def _imperfect_second_singular_masculine
            [template("νι", :c1, infix, "ιη", :c2_lenited, "ετ"), template("ni", :tc1, infix_transliterated, "ie", :tc2_lenited, "et")]
          end

          def _imperfect_second_singular_feminine
            [template("νι", :c1, infix, "ιη", :c2_lenited, "ες̄"), template("ni", :tc1, infix_transliterated, "ie", :tc2_lenited, "eš")]
          end

          def _imperfect_third_singular_masculine
            [template("νι", :c1, infix, "ιη", :c2), template("ni", :tc1, infix_transliterated, "ie", :tc2)]
          end

          def _imperfect_third_singular_feminine
            [template("νι", :c1, infix, "ιη", :c2, "ω"), template("ni", :tc1, infix_transliterated, "ie", :tc2, "ā")]
          end

          def _imperfect_first_plural
            [template("νι", :c1, infix, "ιη", :c2_lenited, "εν"), template("ni", :tc1, infix_transliterated, "ie", :tc2_lenited, "en")]
          end

          def _imperfect_second_plural_masculine
            [template("νι", :c1, infix, "ιη", :c2_lenited, "τυν"), template("ni", :tc1, infix_transliterated, "ie", :tc2_lenited, "tun")]
          end

          def _imperfect_second_plural_feminine
            [template("νι", :c1, infix, "ιη", :c2_lenited, "σ̄ιν"), template("ni", :tc1, infix_transliterated, "ie", :tc2_lenited, "šin")]
          end

          def _imperfect_third_plural
            [template("νι", :c1, infix, "ιη", :c2, "ου"), template("ni", :tc1, infix_transliterated, "ie", :tc2, "ū")]
          end
        end
      end
    end
  end
end
