require_relative 'initial_glottal'

module Morphology
  module Alashian
    module Verbs
      module Katab
        module InitialGlottalAndFinalN
          include Katab::InitialGlottal

          def subtype
            "C1 = '/H, C3 = N"
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
            [template("ιε", :c2, "α"), template("ye", :tc2, "a")]
          end

          def _imperfect_second_singular_masculine
            [template("ιε", :c2, "ατ"), template("ye", :tc2, "ət")]
          end

          def _imperfect_second_singular_feminine
            [template("ιε", :c2, "ατζ"), template("ye", :tc2, "əč")]
          end

          def _imperfect_first_plural
            [template("ιε", :c2, "αν"), template("ye", :tc2, "ən")]
          end

          def _imperfect_second_plural_masculine
            [template("ιε", :c2, "αττυν"), template("ye", :tc2, "əthun")]
          end

          def _imperfect_second_plural_feminine
            [template("ιε", :c2, "ατζζιν"), template("ye", :tc2, "əčhin")]
          end
        end
      end
    end
  end
end
