require_relative 'final_y'

module Morphology
  module Alashian
    module Verbs
      module Katab
        module MedialAspirateAndFinalY
          include Katab::FinalY

          def subtype
            "C2 = PH/TH/KH/TSH/ČH, C3 = Y"
          end

          def _preterite_first_singular
            [template(:c1, "α", :c2, "ητ"), template(:tc1, "ə", :tc2, "ēt")]
          end

          def _preterite_second_singular_masculine
            [template(:c1, "α", :c2, "ητα"), template(:tc1, "ə", :tc2, "ēta")]
          end

          def _preterite_second_singular_feminine
            [template(:c1, "α", :c2, "ησ̄ε"), template(:tc1, "ə", :tc2, "ēše")]
          end

          def _preterite_third_singular_masculine
            [template(:c1, "α", :c2, "η"), template(:tc1, "ə", :tc2, "ē")]
          end

          def _preterite_first_plural
            [template(:c1, "α", :c2, "ηνω"), template(:tc1, "ə", :tc2, "ēnā")]
          end

          def _preterite_second_plural_masculine
            [template(:c1, "α", :c2, "ητυν"), template(:tc1, "ə", :tc2, "ētun")]
          end

          def _preterite_second_plural_feminine
            [template(:c1, "α", :c2, "ησ̄ιν"), template(:tc1, "ə", :tc2, "ēšin")]
          end

          def _imperative_masculine_singular
            [template(:c1, "α", :c2, "η"), template(:tc1, "ə", :tc2, "ē")]
          end

          def _imperative_feminine_singular
            [template(:c1, "α", :c2, "ει"), template(:tc1, "ə", :tc2, "ī")]
          end

          def _imperative_plural
            [template(:c1, "α", :c2, "ου"), template(:tc1, "ə", :tc2, "ū")]
          end

          def _infinitive
            [template(:c1, "α", :c2, "ου"), template(:tc1, "ə", :tc2, "ū")]
          end
        end
      end
    end
  end
end
