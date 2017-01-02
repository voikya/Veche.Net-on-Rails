require_relative 'initial_unvoiced_fricative'

module Morphology
  module Alashian
    module Verbs
      module Nitkatab
        module InitialUnvoicedFricativeAndFinalN
          include Nitkatab::InitialUnvoicedFricative

          def subtype
            "C1 = F/Ṯ/S/Š/X, C3"
          end

          def _preterite_second_singular_masculine
            [template("νι", :c1, infix, "α", :c2, "αττα"), template("ni", :tc1, infix_transliterated, "a", :tc2, "ətha")]
          end

          def _preterite_second_singular_feminine
            [template("νι", :c1, infix, "α", :c2, "ατζζε"), template("ni", :tc1, infix_transliterated, "a", :tc2, "əčhe")]
          end

          def _preterite_second_plural_masculine
            [template("νι", :c1, infix, "α", :c2, "αττυν"), template("ni", :tc1, infix_transliterated, "a", :tc2, "əthun")]
          end

          def _preterite_second_plural_feminine
            [template("νι", :c1, infix, "α", :c2, "ατζζιν"), template("ni", :tc1, infix_transliterated, "a", :tc2, "əčhin")]
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

          def _imperfect_first_plural
            [template("νι", :c1, infix, "ιη", :c2, "εν"), template("ni", :tc1, infix_transliterated, "ie", :tc2, "en")]
          end

          def _imperfect_second_plural_masculine
            [template("νι", :c1, infix, "ιη", :c2, "αττυν"), template("ni", :tc1, infix_transliterated, "ie", :tc2, "əthun")]
          end

          def _imperfect_second_plural_feminine
            [template("νι", :c1, infix, "ιη", :c2, "ατζζιν"), template("ni", :tc1, infix_transliterated, "ie", :tc2, "əčhin")]
          end
        end
      end
    end
  end
end
