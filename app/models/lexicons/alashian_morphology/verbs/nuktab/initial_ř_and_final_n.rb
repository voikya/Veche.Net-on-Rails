require_relative 'initial_ř'

module Morphology
  module Alashian
    module Verbs
      module Nuktab
        module InitialRAndFinalN
          include Nuktab::InitialR

          def subtype
            "C1 = Ř, C3 = N"
          end

          def _preterite_second_singular_masculine
            [template("νυ", :c1, :c2, "ωττα"), template("nu", :tc1, :tc2, "ātha")]
          end

          def _preterite_second_singular_feminine
            [template("νυ", :c1, :c2, "ωτζζε"), template("nu", :tc1, :tc2, "āčhe")]
          end

          def _preterite_second_plural_masculine
            [template("νυ", :c1, :c2, "ωττυν"), template("nu", :tc1, :tc2, "āthun")]
          end

          def _preterite_second_plural_feminine
            [template("νυ", :c1, :c2, "ωτζζιν"), template("nu", :tc1, :tc2, "āčhin")]
          end

          def _imperfect_first_singular
            [template("νυ", :c1, "ου", :c2, "α"), template("nu", :tc1, "ū", :tc2, "a")]
          end

          def _imperfect_second_singular_masculine
            [template("νυ", :c1, "ου", :c2, "ατ"), template("nu", :tc1, "ū", :tc2, "ət")]
          end

          def _imperfect_second_singular_feminine
            [template("νυ", :c1, "ου", :c2, "ατζ"), template("nu", :tc1, "ū", :tc2, "əč")]
          end

          def _imperfect_first_plural
            [template("νυ", :c1, "ου", :c2, "αν"), template("nu", :tc1, "ū", :tc2, "ən")]
          end

          def _imperfect_second_plural_masculine
            [template("νυ", :c1, "ου", :c2, "αττυν"), template("nu", :tc1, "ū", :tc2, "əthun")]
          end

          def _imperfect_second_plural_feminine
            [template("νυ", :c1, "ου", :c2, "ατζζιν"), template("nu", :tc1, "ū", :tc2, "əčhin")]
          end
        end
      end
    end
  end
end
