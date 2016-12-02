require_relative 'initial_y'

module Morphology
  module Alashian
    module Verbs
      module Katab
        module InitialYAndFinalN
          include Katab::InitialY

          def subtype
            "C1 = Y, C3 = N"
          end

          def _preterite_second_singular_masculine
            [template(:c1, "α", :c2, "αττα"), template(:tc1, "a", :tc2, "ətha")]
          end

          def _preterite_second_singular_feminine
            [template(:c1, "α", :c2, "ατζζε"), template(:tc1, "a", :tc2, "əčhe")]
          end

          def _preterite_second_plural_masculine
            [template(:c1, "α", :c2, "αττυν"), template(:tc1, "a", :tc2, "əthun")]
          end

          def _preterite_second_plural_feminine
            [template(:c1, "α", :c2, "ατζζιν"), template(:tc1, "a", :tc2, "əčhin")]
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
