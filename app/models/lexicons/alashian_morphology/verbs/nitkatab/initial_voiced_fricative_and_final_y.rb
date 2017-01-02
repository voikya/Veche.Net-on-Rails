require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Nitkatab
        module InitialVoicedFricativeAndFinalY
          include Nitkatab::FinalY

          def subtype
            "C1 = V/Ḏ/Z/Ǧ, C3 = Y"
          end

          def _preterite_first_singular
            [template("νι", :c1, infix, "α", :c2, "α", :c3, "ετ"), template("ni", :tc1, infix_transliterated, "a", :tc2, "a", :tc3, "et")]
          end

          def _preterite_second_singular_masculine
            [template("νι", :c1, infix, "α", :c2, vowel, "τα"), template("ni", :tc1, infix_transliterated, "a", :tc2, tvowel, "ta")]
          end

          def _preterite_second_singular_feminine
            [template("νι", :c1, infix, "α", :c2, vowel, "σ̄ε"), template("ni", :tc1, infix_transliterated, "a", :tc2, tvowel, "še")]
          end

          def _preterite_third_singular_masculine
            [template("νι", :c1, infix, "α", :c2, vowel), template("ni", :tc1, infix_transliterated, "a", :tc2, tvowel)]
          end

          def _preterite_third_singular_feminine
            [template("νι", :c1, infix, "α", :c2, "α", :c3, "ω"), template("ni", :tc1, infix_transliterated, "a", :tc2, "a", :tc3, "ā")]
          end

          def _preterite_first_plural
            [template("νι", :c1, infix, "α", :c2, vowel, "νω"), template("ni", :tc1, infix_transliterated, "a", :tc2, tvowel, "nā")]
          end

          def _preterite_second_plural_masculine
            [template("νι", :c1, infix, "α", :c2, vowel, "τυν"), template("ni", :tc1, infix_transliterated, "a", :tc2, tvowel, "tun")]
          end

          def _preterite_second_plural_feminine
            [template("νι", :c1, infix, "α", :c2, vowel, "σ̄ιν"), template("ni", :tc1, infix_transliterated, "a", :tc2, tvowel, "šin")]
          end

          def _preterite_third_plural
            [template("νι", :c1, infix, "α", :c2, "α", :c3, "ου"), template("ni", :tc1, infix_transliterated, "a", :tc2, "a", :tc3, "ū")]
          end

          def _imperfect_first_singular
            [template("νι", :c1, infix, "ιη", :c2, "ε"), template("ni", :tc1, infix_transliterated, "ie", :tc2, "e")]
          end

          def _imperfect_second_singular_masculine
            [template("νι", :c1, infix, "ιη", :c2, "ετ"), template("ni", :tc1, infix_transliterated, "ie", :tc2, "et")]
          end

          def _imperfect_second_singular_feminine
            [template("νι", :c1, infix, "ιη", :c2, "ες̄"), template("ni", :tc1, infix_transliterated, "ie", :tc2, "eš")]
          end

          def _imperfect_third_singular_masculine
            [template("νι", :c1, infix, "ιη", :c2, "ε"), template("ni", :tc1, infix_transliterated, "ie", :tc2, "e")]
          end

          def _imperfect_third_singular_feminine
            [template("νι", :c1, infix, "ιη", :c2, "ε", :c3, "ω"), template("ni", :tc1, infix_transliterated, "ie", :tc2, "e", :tc3, "ā")]
          end

          def _imperfect_first_plural
            [template("νι", :c1, infix, "ιη", :c2, "εν"), template("ni", :tc1, infix_transliterated, "ie", :tc2, "en")]
          end

          def _imperfect_second_plural_masculine
            [template("νι", :c1, infix, "ιη", :c2, "ετυν"), template("ni", :tc1, infix_transliterated, "ie", :tc2, "etun")]
          end

          def _imperfect_second_plural_feminine
            [template("νι", :c1, infix, "ιη", :c2, "εσ̄ιν"), template("ni", :tc1, infix_transliterated, "ie", :tc2, "ešin")]
          end

          def _imperfect_third_plural
            [template("νι", :c1, infix, "ιη", :c2, "ε", :c3, "ου"), template("ni", :tc1, infix_transliterated, "ie", :tc2, "e", :tc3, "ū")]
          end

          private

          def vowel
            root.tv == "ī" ? "εἰ" : "ἠ"
          end

          def tvowel
            root.tv == "ī" ? "ī" : "ē"
          end

          def infix
            "δ"
          end

          def infix_transliterated
            "d"
          end
        end
      end
    end
  end
end
