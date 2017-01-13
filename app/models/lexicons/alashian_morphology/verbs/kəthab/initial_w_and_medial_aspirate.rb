require_relative 'medial_aspirate'

module Morphology
  module Alashian
    module Verbs
      module Kethab
        module InitialWAndMedialAspirate
          include Kethab::MedialAspirate

          def subtype
            "C1 = W, C2 = PH/TH/KH/TSH/ČH"
          end

          def _preterite_first_singular
            [template("в̄α", :c2_geminated_or_aspirated, "ω", :c3, "ετ"), template("və", :tc2_geminated_or_aspirated, "ā", :tc3, "et")]
          end

          def _preterite_second_singular_masculine
            [template("в̄α", :c2_geminated_or_aspirated, "ω", :c3_lenited, "τα"), template("və", :tc2_geminated_or_aspirated, "ā", :tc3_lenited, "ta")]
          end

          def _preterite_second_singular_feminine
            [template("в̄α", :c2_geminated_or_aspirated, "ω", :c3_lenited, "σ̄ε"), template("və", :tc2_geminated_or_aspirated, "ā", :tc3_lenited, "še")]
          end

          def _preterite_third_singular_masculine
            [template("в̄α", :c2_geminated_or_aspirated, "ω", :c3), template("və", :tc2_geminated_or_aspirated, "ā", :tc3)]
          end

          def _preterite_third_singular_feminine
            [template("в̄α", :c2_geminated_or_aspirated, "ω", :c3, "ω"), template("və", :tc2_geminated_or_aspirated, "ā", :tc3, "ā")]
          end

          def _preterite_first_plural
            [template("в̄α", :c2_geminated_or_aspirated, "ω", :c3, "νω"), template("və", :tc2_geminated_or_aspirated, "ā", :tc3, "nā")]
          end

          def _preterite_second_plural_masculine
            [template("в̄α", :c2_geminated_or_aspirated, "ω", :c3_lenited, "τυν"), template("və", :tc2_geminated_or_aspirated, "ā", :tc3_lenited, "tun")]
          end

          def _preterite_second_plural_feminine
            [template("в̄α", :c2_geminated_or_aspirated, "ω", :c3_lenited, "σ̄ιν"), template("və", :tc2_geminated_or_aspirated, "ā", :tc3_lenited, "šin")]
          end

          def _preterite_third_plural
            [template("в̄α", :c2_geminated_or_aspirated, "ω", :c3, "ου"), template("və", :tc2_geminated_or_aspirated, "ā", :tc3, "ū")]
          end

          def _imperfect_first_singular
            [template("в̄α", :c2_geminated_or_aspirated, "α", :c3_lenited), template("və", :tc2_geminated_or_aspirated, "a", :tc3_lenited)]
          end

          def _imperfect_second_singular_masculine
            [template("в̄α", :c2_geminated_or_aspirated, "α", :c3_lenited, "ατ"), template("və", :tc2_geminated_or_aspirated, "a", :tc3_lenited, "at")]
          end

          def _imperfect_second_singular_feminine
            [template("в̄α", :c2_geminated_or_aspirated, "α", :c3_lenited, "ας̄"), template("və", :tc2_geminated_or_aspirated, "a", :tc3_lenited, "aš")]
          end

          def _imperfect_third_singular_masculine
            [template("в̄α", :c2_geminated_or_aspirated, "α", :c3), template("və", :tc2_geminated_or_aspirated, "a", :tc3)]
          end

          def _imperfect_third_singular_feminine
            [template("в̄α", :c2_geminated_or_aspirated, "α", :c3, "ω"), template("və", :tc2_geminated_or_aspirated, "a", :tc3, "ā")]
          end

          def _imperfect_first_plural
            [template("в̄α", :c2_geminated_or_aspirated, "α", :c3_lenited, "αν"), template("və", :tc2_geminated_or_aspirated, "a", :tc3_lenited, "an")]
          end

          def _imperfect_second_plural_masculine
            [template("в̄α", :c2_geminated_or_aspirated, "α", :c3_lenited, "τυν"), template("və", :tc2_geminated_or_aspirated, "a", :tc3_lenited, "tun")]
          end

          def _imperfect_second_plural_feminine
            [template("в̄α", :c2_geminated_or_aspirated, "α", :c3_lenited, "σ̄ιν"), template("və", :tc2_geminated_or_aspirated, "a", :tc3_lenited, "šin")]
          end

          def _imperfect_third_plural
            [template("в̄α", :c2_geminated_or_aspirated, "α", :c3, "ου"), template("və", :tc2_geminated_or_aspirated, "a", :tc3, "ū")]
          end
        end
      end
    end
  end
end
