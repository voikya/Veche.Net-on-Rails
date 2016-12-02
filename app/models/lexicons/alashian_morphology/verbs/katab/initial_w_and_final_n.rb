require_relative 'initial_w'

module Morphology
  module Alashian
    module Verbs
      module Katab
        module InitialWAndFinalN
          include Katab::InitialW

          def subtype
            "C1 = W, C3 = N"
          end

          def _preterite_second_singular_masculine
            [template("в̄α", :c2, "αττα"), template("va", :tc2, "ətha")]
          end

          def _preterite_second_singular_feminine
            [template("в̄α", :c2, "ατζζε"), template("va", :tc2, "əčhe")]
          end

          def _preterite_second_plural_masculine
            [template("в̄α", :c2, "αττυν"), template("va", :tc2, "əthun")]
          end

          def _preterite_second_plural_feminine
            [template("в̄α", :c2, "ατζζιν"), template("va", :tc2, "əčhin")]
          end

          def _imperfect_first_singular
            [template("ιη", :c2, "α"), template("yē", :tc2, "a")]
          end

          def _imperfect_second_singular_masculine
            [template("ιη", :c2, "ατ"), template("yē", :tc2, "ət")]
          end

          def _imperfect_second_singular_feminine
            [template("ιη", :c2, "ατζ"), template("yē", :tc2, "əč")]
          end

          def _imperfect_first_plural
            [template("ιη", :c2, "αν"), template("yē", :tc2, "ən")]
          end

          def _imperfect_second_plural_masculine
            [template("ιη", :c2, "αττυν"), template("yē", :tc2, "əthun")]
          end

          def _imperfect_second_plural_feminine
            [template("ιη", :c2, "ατζζιν"), template("yē", :tc2, "əčhin")]
          end
        end
      end
    end
  end
end
