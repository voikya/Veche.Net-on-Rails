require_relative 'medial_aspirate'

module Morphology
  module Alashian
    module Verbs
      module Takteb
        module MedialAspirateAndFinalN
          include Takteb::MedialAspirate

          def subtype
            "C2 = PH/TH/KH/TSH/ČH, C3 = N"
          end

          def _preterite_second_singular_masculine
            if root.medial_plosive?
              [template("τα", :c1_lenited, :c2, "ηττα"), template("ta", :tc1_lenited, :tc2, "ētha")]
            else
              [template("τα", :c1, :c2, "ηττα"), template("ta", :tc1, :tc2, "ētha")]
            end
          end

          def _preterite_second_singular_feminine
            if root.medial_plosive?
              [template("τα", :c1_lenited, :c2, "ητζζε"), template("ta", :tc1_lenited, :tc2, "ēčhe")]
            else
              [template("τα", :c1, :c2, "ητζζε"), template("ta", :tc1, :tc2, "ēčhe")]
            end
          end

          def _preterite_second_plural_masculine
            if root.medial_plosive?
              [template("τα", :c1_lenited, :c2, "ηττυν"), template("ta", :tc1_lenited, :tc2, "ēthun")]
            else
              [template("τα", :c1, :c2, "ηττυν"), template("ta", :tc1, :tc2, "ēthun")]
            end
          end

          def _preterite_second_plural_feminine
            if root.medial_plosive?
              [template("τα", :c1_lenited, :c2, "ητζζιν"), template("ta", :tc1_lenited, :tc2, "ēčhin")]
            else
              [template("τα", :c1, :c2, "ητζζιν"), template("ta", :tc1, :tc2, "ēčhin")]
            end
          end

          def _imperfect_first_singular
            if root.medial_plosive?
              [template("τα", :c1_lenited, :c2, "ιη"), template("ta", :tc1_lenited, :tc2, "ie")]
            else
              [template("τα", :c1, :c2, "ιη"), template("ta", :tc1, :tc2, "ie")]
            end
          end

          def _imperfect_second_singular_masculine
            if root.medial_plosive?
              [template("τα", :c1_lenited, :c2, "ιητ"), template("ta", :tc1_lenited, :tc2, "iet")]
            else
              [template("τα", :c1, :c2, "ιητ"), template("ta", :tc1, :tc2, "iet")]
            end
          end

          def _imperfect_second_singular_feminine
            if root.medial_plosive?
              [template("τα", :c1_lenited, :c2, "ιης̄"), template("ta", :tc1_lenited, :tc2, "ieš")]
            else
              [template("τα", :c1, :c2, "ιης̄"), template("ta", :tc1, :tc2, "ieš")]
            end
          end

          def _imperfect_first_plural
            if root.medial_plosive?
              [template("τα", :c1_lenited, :c2, "ιην"), template("ta", :tc1_lenited, :tc2, "ien")]
            else
              [template("τα", :c1, :c2, "ιην"), template("ta", :tc1, :tc2, "ien")]
            end
          end

          def _imperfect_second_plural_masculine
            if root.medial_plosive?
              [template("τα", :c1_lenited, :c2, "ιηττυν"), template("ta", :tc1_lenited, :tc2, "iethun")]
            else
              [template("τα", :c1, :c2, "ιηττυν"), template("ta", :tc1, :tc2, "iethun")]
            end
          end

          def _imperfect_second_plural_feminine
            if root.medial_plosive?
              [template("τα", :c1_lenited, :c2, "ιητζζιν"), template("ta", :tc1_lenited, :tc2, "iečhin")]
            else
              [template("τα", :c1, :c2, "ιητζζιν"), template("ta", :tc1, :tc2, "iečhin")]
            end
          end
        end
      end
    end
  end
end
