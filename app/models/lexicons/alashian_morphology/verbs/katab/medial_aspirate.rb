require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Katab
        module MedialAspirate
          include Katab::Regular

          def subtype
            "C2 = PH/TH/KH/TSH/ČH"
          end

          def _preterite_first_singular
            [template(:c1, "α", :c2, "α", :c3, "ετ"), template(:tc1, "ə", :tc2, "a", :tc3, "et")]
          end

          def _preterite_second_singular_masculine
            [template(:c1, "α", :c2, "α", :c3_lenited, "τα"), template(:tc1, "ə", :tc2, "a", :tc3_lenited, "ta")]
          end

          def _preterite_second_singular_feminine
            [template(:c1, "α", :c2, "α", :c3_lenited, "σ̄ε"), template(:tc1, "ə", :tc2, "a", :tc3_lenited, "še")]
          end

          def _preterite_third_singular_masculine
            [template(:c1, "α", :c2, "α", :c3), template(:tc1, "ə", :tc2, "a", :tc3)]
          end

          def _preterite_third_singular_feminine
            [template(:c1, "α", :c2, "α", :c3, "ω"), template(:tc1, "ə", :tc2, "a", :tc3, "ā")]
          end

          def _preterite_first_plural
            [template(:c1, "α", :c2, "α", :c3, "νω"), template(:tc1, "ə", :tc2, "a", :tc3, "nā")]
          end

          def _preterite_second_plural_masculine
            [template(:c1, "α", :c2, "α", :c3_lenited, "τυν"), template(:tc1, "ə", :tc2, "a", :tc3_lenited, "tun")]
          end

          def _preterite_second_plural_feminine
            [template(:c1, "α", :c2, "α", :c3_lenited, "σ̄ιν"), template(:tc1, "ə", :tc2, "a", :tc3_lenited, "šin")]
          end

          def _preterite_third_plural
            [template(:c1, "α", :c2, "α", :c3, "ου"), template(:tc1, "ə", :tc2, "a", :tc3, "ū")]
          end

          def _imperfect_third_singular_feminine
            [template(:c1, "η", :c2, "ε", :c3, "ω"), template(:tc1, "ē", :tc2, "e", :tc3, "ā")]
          end

          def _imperfect_third_plural
            [template(:c1, "η", :c2, "ε", :c3, "ου"), template(:tc1, "ē", :tc2, "e", :tc3, "ū")]
          end

          def _imperative_masculine_singular
            [template(:c1, "α", :c2, :v, :c3), template(:tc1, "ə", :tc2, :tv, :tc3)]
          end

          def _imperative_feminine_singular
            [template(:c1, "α", :c2, :c3, "ει"), template(:tc1, "ə", :tc2, :tc3, "ī")]
          end

          def _imperative_plural
            [template(:c1, "α", :c2, :c3, "ου"), template(:tc1, "ə", :tc2, :tc3, "ū")]
          end

          def _infinitive
            [template(:c1, "α", :c2, "ου", :c3), template(:tc1, "ə", :tc2, "ū", :tc3)]
          end
        end
      end
    end
  end
end
