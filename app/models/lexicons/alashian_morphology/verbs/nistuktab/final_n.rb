require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Nistuktab
        module FinalN
          include Nistuktab::Regular

          def subtype
            "C3 = N"
          end

          def _preterite_second_singular_masculine
            if root.medial_plosive?
              [template("νιστυ", :c1_lenited, :c2, "ωττα"), template("nistu", :tc1_lenited, :tc2, "ātha")]
            else
              [template("νιστυ", :c1, :c2, "ωττα"), template("nistu", :tc1, :tc2, "ātha")]
            end
          end

          def _preterite_second_singular_feminine
            if root.medial_plosive?
              [template("νιστυ", :c1_lenited, :c2, "ωτζζε"), template("nistu", :tc1_lenited, :tc2, "āčhe")]
            else
              [template("νιστυ", :c1, :c2, "ωτζζε"), template("nistu", :tc1, :tc2, "āčhe")]
            end
          end

          def _preterite_second_plural_masculine
            if root.medial_plosive?
              [template("νιστυ", :c1_lenited, :c2, "ωττυν"), template("nistu", :tc1_lenited, :tc2, "āthun")]
            else
              [template("νιστυ", :c1, :c2, "ωττυν"), template("nistu", :tc1, :tc2, "āthun")]
            end
          end

          def _preterite_second_singular_feminine
            if root.medial_plosive?
              [template("νιστυ", :c1_lenited, :c2, "ωτζζιν"), template("nistu", :tc1_lenited, :tc2, "āčhin")]
            else
              [template("νιστυ", :c1, :c2, "ωτζζιν"), template("nistu", :tc1, :tc2, "āčhin")]
            end
          end

          def _imperfect_first_singular
            if root.medial_plosive?
              [template("νιστυ", :c1_lenited, :c2, "υω"), template("nistu", :tc1_lenited, :tc2, "uo")]
            else
              [template("νιστυ", :c1, :c2, "υω"), template("nistu", :tc1, :tc2, "uo")]
            end
          end

          def _imperfect_second_singular_masculine
            if root.medial_plosive?
              [template("νιστυ", :c1_lenited, :c2, "υωτ"), template("nistu", :tc1_lenited, :tc2, "uot")]
            else
              [template("νιστυ", :c1, :c2, "υωτ"), template("nistu", :tc1, :tc2, "uot")]
            end
          end

          def _imperfect_second_singular_feminine
            if root.medial_plosive?
              [template("νιστυ", :c1_lenited, :c2, "υως̄"), template("nistu", :tc1_lenited, :tc2, "uoš")]
            else
              [template("νιστυ", :c1, :c2, "υως̄"), template("nistu", :tc1, :tc2, "uoš")]
            end
          end

          def _imperfect_first_plural
            if root.medial_plosive?
              [template("νιστυ", :c1_lenited, :c2, "υων"), template("nistu", :tc1_lenited, :tc2, "uon")]
            else
              [template("νιστυ", :c1, :c2, "υων"), template("nistu", :tc1, :tc2, "uon")]
            end
          end

          def _imperfect_second_plural_masculine
            if root.medial_plosive?
              [template("νιστυ", :c1_lenited, :c2, "υωττυν"), template("nistu", :tc1_lenited, :tc2, "uothun")]
            else
              [template("νιστυ", :c1, :c2, "υωττυν"), template("nistu", :tc1, :tc2, "uothun")]
            end
          end

          def _imperfect_second_plural_feminine
            if root.medial_plosive?
              [template("νιστυ", :c1_lenited, :c2, "υωτζζιν"), template("nistu", :tc1_lenited, :tc2, "uočhin")]
            else
              [template("νιστυ", :c1, :c2, "υωτζζιν"), template("nistu", :tc1, :tc2, "uočhin")]
            end
          end
        end
      end
    end
  end
end
