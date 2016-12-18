require_relative 'initial_aspirate'

module Morphology
  module Alashian
    module Verbs
      module Nuktab
        module InitialAspirateAndFinalN
          include Nuktab::InitialAspirate

          def subtype
            "C1 = PH/TH/KH/TSH/ČH, C3 = N"
          end

          def _preterite_second_singular_masculine
            [template("να", :c1, :c2, "ωττα"), template("nə", :tc1, :tc2, "ātha")]
          end

          def _preterite_second_singular_feminine
            [template("να", :c1, :c2, "ωτζζε"), template("nə", :tc1, :tc2, "āčhe")]
          end

          def _preterite_second_plural_masculine
            [template("να", :c1, :c2, "ωττυν"), template("nə", :tc1, :tc2, "āthun")]
          end

          def _preterite_second_plural_feminine
            [template("να", :c1, :c2, "ωτζζιν"), template("nə", :tc1, :tc2, "āčhin")]
          end

          def _imperfect_first_singular
            [template("να", :c1, "υω", :c2, "α"), template("nə", :tc1, "uo", :tc2, "a")]
          end

          def _imperfect_second_singular_masculine
            [template("να", :c1, "υω", :c2, "ατ"), template("nə", :tc1, "uo", :tc2, "ət")]
          end

          def _imperfect_second_singular_feminine
            [template("να", :c1, "υω", :c2, "ατζ"), template("nə", :tc1, "uo", :tc2, "əč")]
          end

          def _imperfect_first_plural
            [template("να", :c1, "υω", :c2, "αν"), template("nə", :tc1, "uo", :tc2, "ən")]
          end

          def _imperfect_second_plural_masculine
            [template("να", :c1, "υω", :c2, "αττυν"), template("nə", :tc1, "uo", :tc2, "əthun")]
          end

          def _imperfect_second_plural_feminine
            [template("να", :c1, "υω", :c2, "ατζζιν"), template("nə", :tc1, "uo", :tc2, "əčhin")]
          end
        end
      end
    end
  end
end
