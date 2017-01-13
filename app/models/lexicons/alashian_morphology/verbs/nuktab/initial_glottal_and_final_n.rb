require_relative 'initial_glottal'

module Morphology
  module Alashian
    module Verbs
      module Nuktab
        module InitialGlottalAndFinalN
          include Nuktab::InitialGlottal

          def subtype
            "C1 = '/H, C3 = N"
          end

          def _preterite_second_singular_masculine
            [template("νυα", :c2, "ωττα"), template("nu'a", :tc2, "ātha")]
          end

          def _preterite_second_singular_feminine
            [template("νυα", :c2, "ωτζζε"), template("nu'a", :tc2, "āčhe")]
          end

          def _preterite_second_plural_masculine
            [template("νυα", :c2, "ωττυν"), template("nu'a", :tc2, "āthun")]
          end

          def _preterite_second_plural_feminine
            [template("νυα", :c2, "ωτζζιν"), template("nu'a", :tc2, "āčhin")]
          end

          def _imperfect_first_singular
            [template("νυυα", :c2, "α"), template("nuwa", :tc2, "a")]
          end

          def _imperfect_second_singular_masculine
            [template("νυυα", :c2, "ατ"), template("nuwa", :tc2, "ət")]
          end

          def _imperfect_second_singular_feminine
            [template("νυυα", :c2, "ατζ"), template("nuwa", :tc2, "əč")]
          end

          def _imperfect_first_plural
            [template("νυυα", :c2, "αν"), template("nuwa", :tc2, "ən")]
          end

          def _imperfect_second_plural_masculine
            [template("νυυα", :c2, "αττυν"), template("nuwa", :tc2, "əthun")]
          end

          def _imperfect_second_plural_feminine
            [template("νυυα", :c2, "ατζζιν"), template("nuwa", :tc2, "əčhin")]
          end
        end
      end
    end
  end
end
