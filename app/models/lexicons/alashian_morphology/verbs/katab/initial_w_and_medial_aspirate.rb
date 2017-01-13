require_relative 'initial_w'

module Morphology
  module Alashian
    module Verbs
      module Katab
        module InitialWAndMedialAspirate
          include Katab::InitialW

          def subtype
            "C1 = W, C2 = PH/TH/KH/TSH/ČH"
          end

          def _preterite_first_singular
            [template("в̄α", :c2, "α", :c3, "ετ"), template("və", :tc2, "a", :tc3, "et")]
          end

          def _preterite_second_singular_masculine
            [template("в̄α", :c2, "α", :c3_lenited, "τα"), template("və", :tc2, "a", :tc3_lenited, "ta")]
          end

          def _preterite_second_singular_feminine
            [template("в̄α", :c2, "α", :c3_lenited, "σ̄ε"), template("və", :tc2, "a", :tc3_lenited, "še")]
          end

          def _preterite_third_singular_masculine
            [template("в̄α", :c2, "α", :c3), template("və", :tc2, "a", :tc3)]
          end

          def _preterite_third_singular_feminine
            [template("в̄α", :c2, "α", :c3, "ω"), template("və", :tc2, "a", :tc3, "ā")]
          end

          def _preterite_first_plural
            [template("в̄α", :c2, "α", :c3, "νω"), template("və", :tc2, "a", :tc3, "nā")]
          end

          def _preterite_second_plural_masculine
            [template("в̄α", :c2, "α", :c3_lenited, "τυν"), template("və", :tc2, "a", :tc3_lenited, "tun")]
          end

          def _preterite_second_plural_feminine
            [template("в̄α", :c2, "α", :c3_lenited, "σ̄ιν"), template("və", :tc2, "a", :tc3_lenited, "šin")]
          end

          def _preterite_third_plural
            [template("в̄α", :c2, "α", :c3, "ου"), template("və", :tc2, "a", :tc3, "ū")]
          end

          def _imperfect_third_singular_feminine
            [template("ιη", :c2, "ε", :c3, "ω"), template("yē", :tc2, "e", :tc3, "ā")]
          end

          def _imperfect_third_plural
            [template("ιη", :c2, "ε", :c3, "ου"), template("yē", :tc2, "e", :tc3, "ū")]
          end

          private

          def present_stem(long_vowel: true)
            v = long_vowel ? :v : :short_v

            template("", :c2, v, :c3)
          end

          def present_stem_transliterated(long_vowel: true)
            v = long_vowel ? :tv : :short_tv

            template("", :tc2, v, :tc3)
          end
        end
      end
    end
  end
end
