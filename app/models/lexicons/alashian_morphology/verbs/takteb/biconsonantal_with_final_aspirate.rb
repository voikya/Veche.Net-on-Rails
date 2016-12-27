require_relative 'biconsonantal'

module Morphology
  module Alashian
    module Verbs
      module Takteb
        module BiconsonantalWithFinalAspirate
          include Takteb::Biconsonantal

          def subtype
            "Biconsonantal Root with C3 = PH/TH/KH/TSH/ČH"
          end

          def _preterite_second_singular_masculine
            [template("τα", :c1, :v, :c2_unaspirated, "τα"), template("ta", :tc1, :tv, :tc2_unaspirated, "ta")]
          end

          def _preterite_second_singular_feminine
            [template("τα", :c1, :v, :c2_unaspirated, "σ̄ε"), template("ta", :tc1, :tv, :tc2_unaspirated, "še")]
          end

          def _preterite_first_plural
            [template("τα", :c1, :v, :c2_unaspirated, "νω"), template("ta", :tc1, :tv, :tc2_unaspirated, "nā")]
          end

          def _preterite_second_plural_masculine
            [template("τα", :c1, :v, :c2_unaspirated, "τυν"), template("ta", :tc1, :tv, :tc2_unaspirated, "tun")]
          end

          def _preterite_second_plural_feminine
            [template("τα", :c1, :v, :c2_unaspirated, "σ̄ιν"), template("ta", :tc1, :tv, :tc2_unaspirated, "šin")]
          end

          def _imperfect_first_singular
            [template("τα", :c1, "ιη", :c2), template("ta", :tc1, "ie", :tc2)]
          end

          def _imperfect_second_plural_masculine
            [template("τα", :c1, "ιη", :c2_unaspirated, "τυν"), template("ta", :tc1, "ie", :tc2_unaspirated, "tun")]
          end

          def _imperfect_second_plural_feminine
            [template("τα", :c1, "ιη", :c2_unaspirated, "σ̄ιν"), template("ta", :tc1, "ie", :tc2_unaspirated, "šin")]
          end

          def _volitive_first_singular
            [template("α", infix, :c1, :v, :c2, "αννα"), template("'a", infix_transliterated, :tc1, :tv, :tc2, "anna")]
          end

          def _volitive_second_singular_masculine
            if root.tv == "ā" || root.tv == "ū"
              [template("τι", infix, :c1, :v, :c2, "αννα"), template("ti", infix_transliterated, :tc1, :tv, :tc2, "anna")]
            else
              [template("τα", infix, :c1, :v, :c2, "αννα"), template("ta", infix_transliterated, :tc1, :tv, :tc2, "anna")]
            end
          end

          def _volitive_third_singular_masculine
            if root.tv == "ā" || root.tv == "ū"
              [template("ι", infix, :c1, :v, :c2, "αννα"), template("yi", infix_transliterated, :tc1, :tv, :tc2, "anna")]
            else
              [template("ια", infix, :c1, :v, :c2, "αννα"), template("ya", infix_transliterated, :tc1, :tv, :tc2, "anna")]
            end
          end
        end
      end
    end
  end
end
