require_relative 'initial_w'

module Morphology
  module Alashian
    module Verbs
      module Takteb
        module InitialWAndFinalN
          include Takteb::InitialW

          def subtype
            "C1 = W, C3 = N"
          end

          def _preterite_second_singular_masculine
            [template("του", :c2, "ηττα"), template("tū", :tc2, "ētha")]
          end

          def _preterite_second_singular_feminine
            [template("του", :c2, "ητζζε"), template("tū", :tc2, "ēčhe")]
          end

          def _preterite_second_plural_masculine
            [template("του", :c2, "ηττυν"), template("tū", :tc2, "ēthun")]
          end

          def _preterite_second_plural_feminine
            [template("του", :c2, "ητζζιν"), template("tū", :tc2, "ēčhin")]
          end

          def _imperfect_first_singular
            [template("του", :c2, "ιη"), template("tū", :tc2, "ie")]
          end

          def _imperfect_second_singular_masculine
            [template("του", :c2, "ιητ"), template("tū", :tc2, "iet")]
          end

          def _imperfect_second_singular_feminine
            [template("του", :c2, "ιης̄"), template("tū", :tc2, "ieš")]
          end

          def _imperfect_first_plural
            [template("του", :c2, "ιην"), template("tū", :tc2, "ien")]
          end

          def _imperfect_second_plural_masculine
            [template("του", :c2, "ιηττυν"), template("tū", :tc2, "iethun")]
          end

          def _imperfect_second_plural_feminine
            [template("του", :c2, "ιητζζιν"), template("tū", :tc2, "iečhin")]
          end
        end
      end
    end
  end
end
