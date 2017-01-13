require_relative 'initial_aspirate'

module Morphology
  module Alashian
    module Verbs
      module Takteb
        module InitialAspirateAndFinalN
          include Takteb::InitialAspirate

          def subtype
            "C1 = PH/TH/KH/TSH/ČH, C3 = N"
          end

          def _preterite_second_singular_masculine
            [template("τα", :c1, :c2, "ηττα"), template("tə", :tc1, :tc2, "ētha")]
          end

          def _preterite_second_singular_feminine
            [template("τα", :c1, :c2, "ητζζε"), template("tə", :tc1, :tc2, "ēčhe")]
          end

          def _preterite_second_plural_masculine
            [template("τα", :c1, :c2, "ηττυν"), template("tə", :tc1, :tc2, "ēthun")]
          end

          def _preterite_second_plural_feminine
            [template("τα", :c1, :c2, "ητζζιν"), template("tə", :tc1, :tc2, "ēčhin")]
          end

          def _imperfect_first_singular
            [template("τα", :c1, :c2, "ιη"), template("tə", :tc1, :tc2, "ie")]
          end

          def _imperfect_second_singular_masculine
            [template("τα", :c1, :c2, "ιητ"), template("tə", :tc1, :tc2, "iet")]
          end

          def _imperfect_second_singular_feminine
            [template("τα", :c1, :c2, "ιης̄"), template("tə", :tc1, :tc2, "ieš")]
          end

          def _imperfect_first_plural
            [template("τα", :c1, :c2, "ιην"), template("tə", :tc1, :tc2, "ien")]
          end

          def _imperfect_second_plural_masculine
            [template("τα", :c1, :c2, "ιηττυν"), template("tə", :tc1, :tc2, "iethun")]
          end

          def _imperfect_second_plural_feminine
            [template("τα", :c1, :c2, "ιητζζιν"), template("tə", :tc1, :tc2, "iečhin")]
          end
        end
      end
    end
  end
end
