require_relative 'initial_unvoiced_fricative'

module Morphology
  module Alashian
    module Verbs
      module Nitkatab
        module InitialUnvoicedFricativeAndMedialAspirate
          include Nitkatab::InitialUnvoicedFricative

          def subtype
            "C1 = F/Ṯ/S/Š/X, C2 = PH/TH/KH/TSH/ČH"
          end

          def _preterite_first_singular
            [template("νι", :c1, infix, "α", :c2, "α", :c3, "ετ"), template("ni", :tc1, infix_transliterated, "ə", :tc2, "a", :tc3, "et")]
          end

          def _preterite_second_singular_masculine
            [template("νι", :c1, infix, "α", :c2, "α", :c3_lenited, "τα"), template("ni", :tc1, infix_transliterated, "ə", :tc2, "a", :tc3_lenited, "ta")]
          end

          def _preterite_second_singular_feminine
            [template("νι", :c1, infix, "α", :c2, "α", :c3_lenited, "σ̄ε"), template("ni", :tc1, infix_transliterated, "ə", :tc2, "a", :tc3_lenited, "še")]
          end

          def _preterite_third_singular_masculine
            [template("νι", :c1, infix, "α", :c2, "α", :c3), template("ni", :tc1, infix_transliterated, "ə", :tc2, "a", :tc3)]
          end

          def _preterite_third_singular_feminine
            [template("νι", :c1, infix, "α", :c2, "α", :c3, "ω"), template("ni", :tc1, infix_transliterated, "ə", :tc2, "a", :tc3, "ā")]
          end

          def _preterite_first_plural
            [template("νι", :c1, infix, "α", :c2, "α", :c3, "νω"), template("ni", :tc1, infix_transliterated, "ə", :tc2, "a", :tc3, "nā")]
          end

          def _preterite_second_plural_masculine
            [template("νι", :c1, infix, "α", :c2, "α", :c3_lenited, "τυν"), template("ni", :tc1, infix_transliterated, "ə", :tc2, "a", :tc3_lenited, "tun")]
          end

          def _preterite_second_plural_feminine
            [template("νι", :c1, infix, "α", :c2, "α", :c3_lenited, "σ̄ιν"), template("ni", :tc1, infix_transliterated, "ə", :tc2, "a", :tc3_lenited, "šin")]
          end

          def _preterite_third_plural
            [template("νι", :c1, infix, "α", :c2, "α", :c3, "ου"), template("ni", :tc1, infix_transliterated, "ə", :tc2, "a", :tc3, "ū")]
          end
        end
      end
    end
  end
end
