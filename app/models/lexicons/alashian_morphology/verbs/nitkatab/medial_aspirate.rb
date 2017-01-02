require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Nitkatab
        module MedialAspirate
          include Nitkatab::Regular

          def subtype
            "C2 = PH/TH/KH/TSH/ČH"
          end

          def _preterite_first_singular
            [template("νι", infix, :c1, "α", :c2, "α", :c3, "ετ"), template("ni", infix_transliterated, :tc1, "ə", :tc2, "a", :tc3, "et")]
          end

          def _preterite_second_singular_masculine
            [template("νι", infix, :c1, "α", :c2, "α", :c3_lenited, "τα"), template("ni", infix_transliterated, :tc1, "ə", :tc2, "a", :tc3_lenited, "ta")]
          end

          def _preterite_second_singular_feminine
            [template("νι", infix, :c1, "α", :c2, "α", :c3_lenited, "σ̄ε"), template("ni", infix_transliterated, :tc1, "ə", :tc2, "a", :tc3_lenited, "še")]
          end

          def _preterite_third_singular_masculine
            [template("νι", infix, :c1, "α", :c2, "α", :c3), template("ni", infix_transliterated, :tc1, "ə", :tc2, "a", :tc3)]
          end

          def _preterite_third_singular_feminine
            [template("νι", infix, :c1, "α", :c2, "α", :c3, "ω"), template("ni", infix_transliterated, :tc1, "ə", :tc2, "a", :tc3, "ā")]
          end

          def _preterite_first_plural
            [template("νι", infix, :c1, "α", :c2, "α", :c3, "νω"), template("ni", infix_transliterated, :tc1, "ə", :tc2, "a", :tc3, "nā")]
          end

          def _preterite_second_plural_masculine
            [template("νι", infix, :c1, "α", :c2, "α", :c3_lenited, "τυν"), template("ni", infix_transliterated, :tc1, "ə", :tc2, "a", :tc3_lenited, "tun")]
          end

          def _preterite_second_plural_feminine
            [template("νι", infix, :c1, "α", :c2, "α", :c3_lenited, "σ̄ιν"), template("ni", infix_transliterated, :tc1, "ə", :tc2, "a", :tc3_lenited, "šin")]
          end

          def _preterite_third_plural
            [template("νι", infix, :c1, "α", :c2, "α", :c3, "ου"), template("ni", infix_transliterated, :tc1, "ə", :tc2, "a", :tc3, "ū")]
          end
        end
      end
    end
  end
end
