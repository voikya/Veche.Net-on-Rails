require_relative 'final_y'

module Morphology
  module Alashian
    module Verbs
      module Nitkatab
        module MedialAspirateAndFinalY
          include Nitkatab::FinalY

          def subtype
            "C2 = PH/TH/KH/TSH/ČH, C3 = Y"
          end

          def _preterite_first_singular
            [template("νι", infix, :c1, "α", :c2, "α", :c3, "ετ"), template("ni", infix_transliterated, :tc1, "ə", :tc2, "a", :tc3, "et")]
          end

          def _preterite_second_singular_masculine
            [template("νι", infix, :c1, "α", :c2, "ἠτα"), template("ni", infix_transliterated, :tc1, "ə", :tc2, "ēta")]
          end

          def _preterite_second_singular_feminine
            [template("νι", infix, :c1, "α", :c2, "ἠσ̄ε"), template("ni", infix_transliterated, :tc1, "ə", :tc2, "ēše")]
          end

          def _preterite_third_singular_masculine
            [template("νι", infix, :c1, "α", :c2, "ἠ"), template("ni", infix_transliterated, :tc1, "ə", :tc2, "ē")]
          end

          def _preterite_third_singular_feminine
            [template("νι", infix, :c1, "α", :c2, "α", :c3, "ω"), template("ni", infix_transliterated, :tc1, "ə", :tc2, "a", :tc3, "ā")]
          end

          def _preterite_first_plural
            [template("νι", infix, :c1, "α", :c2, "ἠνω"), template("ni", infix_transliterated, :tc1, "ə", :tc2, "ēnā")]
          end

          def _preterite_second_plural_masculine
            [template("νι", infix, :c1, "α", :c2, "ἠτυν"), template("ni", infix_transliterated, :tc1, "ə", :tc2, "ētun")]
          end

          def _preterite_second_plural_feminine
            [template("νι", infix, :c1, "α", :c2, "ἠσ̄ιν"), template("ni", infix_transliterated, :tc1, "ə", :tc2, "ēšin")]
          end

          def _preterite_third_plural
            [template("νι", infix, :c1, "α", :c2, "α", :c3, "ου"), template("ni", infix_transliterated, :tc1, "ə", :tc2, "a", :tc3, "ū")]
          end
        end
      end
    end
  end
end
