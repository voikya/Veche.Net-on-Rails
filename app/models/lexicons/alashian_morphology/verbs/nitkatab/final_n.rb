require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Nitkatab
        module FinalN
          include Nitkatab::Regular

          def subtype
            "C3 = N"
          end

          def _preterite_second_singular_masculine
            [template("νι", infix, :c1, "α", :c2, "αττα"), template("ni", infix_transliterated, :tc1, "a", :tc2, "ətha")]
          end

          def _preterite_second_singular_feminine
            [template("νι", infix, :c1, "α", :c2, "ατζζε"), template("ni", infix_transliterated, :tc1, "a", :tc2, "əčhe")]
          end

          def _preterite_second_plural_masculine
            [template("νι", infix, :c1, "α", :c2, "αττυν"), template("ni", infix_transliterated, :tc1, "a", :tc2, "əthun")]
          end

          def _preterite_second_plural_feminine
            [template("νι", infix, :c1, "α", :c2, "ατζζιν"), template("ni", infix_transliterated, :tc1, "a", :tc2, "əčhin")]
          end

          def _imperfect_first_singular
            [template("νι", infix, :c1, "ιη", :c2, "ε"), template("ni", infix_transliterated, :tc1, "ie", :tc2, "e")]
          end

          def _imperfect_second_singular_masculine
            [template("νι", infix, :c1, "ιη", :c2, "ετ"), template("ni", infix_transliterated, :tc1, "ie", :tc2, "et")]
          end

          def _imperfect_second_singular_feminine
            [template("νι", infix, :c1, "ιη", :c2, "ες̄"), template("ni", infix_transliterated, :tc1, "ie", :tc2, "eš")]
          end

          def _imperfect_first_plural
            [template("νι", infix, :c1, "ιη", :c2, "εν"), template("ni", infix_transliterated, :tc1, "ie", :tc2, "en")]
          end

          def _imperfect_second_plural_masculine
            [template("νι", infix, :c1, "ιη", :c2, "αττυν"), template("ni", infix_transliterated, :tc1, "ie", :tc2, "əthun")]
          end

          def _imperfect_second_plural_feminine
            [template("νι", infix, :c1, "ιη", :c2, "ατζζιν"), template("ni", infix_transliterated, :tc1, "ie", :tc2, "əčhin")]
          end
        end
      end
    end
  end
end
