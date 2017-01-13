require_relative 'medial_aspirate'

module Morphology
  module Alashian
    module Verbs
      module Nuktab
        module MedialAspirateAndFinalN
          include Nuktab::MedialAspirate

          def subtype
            "C2 = PH/TH/KH/TSH/ČH, C3 = N"
          end

          def _preterite_second_singular_masculine
            if root.medial_plosive?
              [template("νυ", :c1_lenited, :c2, "ωττα"), template("nu", :tc1_lenited, :tc2, "ātha")]
            else
              [template("νυ", :c1, :c2, "ωττα"), template("nu", :tc1, :tc2, "ātha")]
            end
          end

          def _preterite_second_singular_feminine
            if root.medial_plosive?
              [template("νυ", :c1_lenited, :c2, "ωτζζε"), template("nu", :tc1_lenited, :tc2, "āčhe")]
            else
              [template("νυ", :c1, :c2, "ωτζζε"), template("nu", :tc1, :tc2, "āčhe")]
            end
          end

          def _preterite_second_plural_masculine
            if root.medial_plosive?
              [template("νυ", :c1_lenited, :c2, "ωττυν"), template("nu", :tc1_lenited, :tc2, "āthun")]
            else
              [template("νυ", :c1, :c2, "ωττυν"), template("nu", :tc1, :tc2, "āthun")]
            end
          end

          def _preterite_second_plural_feminine
            if root.medial_plosive?
              [template("νυ", :c1_lenited, :c2, "ωτζζιν"), template("nu", :tc1_lenited, :tc2, "āčhin")]
            else
              [template("νυ", :c1, :c2, "ωτζζιν"), template("nu", :tc1, :tc2, "āčhin")]
            end
          end

          def _imperfect_first_singular
            [template("νυ", :c1, "υω", :c2, "α"), template("nu", :tc1, "uo", :tc2, "a")]
          end

          def _imperfect_second_singular_masculine
            [template("νυ", :c1, "υω", :c2, "ατ"), template("nu", :tc1, "uo", :tc2, "ət")]
          end

          def _imperfect_second_singular_feminine
            [template("νυ", :c1, "υω", :c2, "ατζ"), template("nu", :tc1, "uo", :tc2, "əč")]
          end

          def _imperfect_first_plural
            [template("νυ", :c1, "υω", :c2, "αν"), template("nu", :tc1, "uo", :tc2, "ən")]
          end

          def _imperfect_second_plural_masculine
            [template("νυ", :c1, "υω", :c2, "αττυν"), template("nu", :tc1, "uo", :tc2, "əthun")]
          end

          def _imperfect_second_plural_feminine
            [template("νυ", :c1, "υω", :c2, "ατζζιν"), template("nu", :tc1, "uo", :tc2, "əčhin")]
          end
        end
      end
    end
  end
end
