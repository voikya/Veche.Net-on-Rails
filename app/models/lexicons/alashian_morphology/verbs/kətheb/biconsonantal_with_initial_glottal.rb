require_relative 'initial_glottal'

module Morphology
  module Alashian
    module Verbs
      module Ketheb
        module BiconsonantalWithInitialGlottal
          include Ketheb::InitialGlottal

          def subtype
            "Biconsonantal Root with C1 = '/H"
          end

          def _present_second_singular_feminine
            [template("τια", :c2, "α", :c3, "ει"), template("tiyə", :tc2, "a", :tc3, "ī")]
          end

          def _present_third_singular_feminine
            [template("ιια", :c2, "α", :c3, "ει"), template("yiyə", :tc2, "a", :tc3, "ī")]
          end

          def _present_first_plural
            [template("νια", :c2, "α", :c3, "ου"), template("niyə", :tc2, "a", :tc3, "ū")]
          end

          def _present_second_plural
            [template("τια", :c2, "α", :c3, "ου"), template("tiyə", :tc2, "a", :tc3, "ū")]
          end

          def _present_third_plural
            [template("ιια", :c2, "α", :c3, "ου"), template("yiyə", :tc2, "a", :tc3, "ū")]
          end

          def _imperfect_first_singular
            mid = root.tv == "ī" ? "ϊι" : root.force_triconsonantal.c2 * 2
            [template(:c1, "ε", mid, "ε", :c3_lenited), template(:tc1, "e", :tc2_geminated_or_aspirated, "e", :tc3_lenited)]
          end

          def _imperfect_second_singular_masculine
            mid = root.tv == "ī" ? "ϊι" : root.force_triconsonantal.c2 * 2
            [template(:c1, "ε", mid, "ε", :c3_lenited, "ετ"), template(:tc1, "e", :tc2_geminated_or_aspirated, "e", :tc3_lenited, "et")]
          end

          def _imperfect_second_singular_feminine
            mid = root.tv == "ī" ? "ϊι" : root.force_triconsonantal.c2 * 2
            [template(:c1, "ε", mid, "ε", :c3_lenited, "ες̄"), template(:tc1, "e", :tc2_geminated_or_aspirated, "e", :tc3_lenited, "eš")]
          end

          def _imperfect_third_singular_masculine
            mid = root.tv == "ī" ? "ϊι" : root.force_triconsonantal.c2 * 2
            [template(:c1, "ε", mid, "ε", :c3), template(:tc1, "e", :tc2_geminated_or_aspirated, "e", :tc3)]
          end

          def _imperfect_third_singular_feminine
            mid = root.tv == "ī" ? "ϊι" : root.force_triconsonantal.c2 * 2
            [template(:c1, "ε", mid, "ε", :c3, "ω"), template(:tc1, "e", :tc2_geminated_or_aspirated, "e", :tc3, "ā")]
          end

          def _imperfect_first_plural
            mid = root.tv == "ī" ? "ϊι" : root.force_triconsonantal.c2 * 2
            [template(:c1, "ε", mid, "ε", :c3_lenited, "εν"), template(:tc1, "e", :tc2_geminated_or_aspirated, "e", :tc3_lenited, "en")]
          end

          def _imperfect_second_plural_masculine
            mid = root.tv == "ī" ? "ϊι" : root.force_triconsonantal.c2 * 2
            [template(:c1, "ε", mid, "ε", :c3_lenited, "τυν"), template(:tc1, "e", :tc2_geminated_or_aspirated, "e", :tc3_lenited, "tun")]
          end

          def _imperfect_second_plural_feminine
            mid = root.tv == "ī" ? "ϊι" : root.force_triconsonantal.c2 * 2
            [template(:c1, "ε", mid, "ε", :c3_lenited, "σ̄ιν"), template(:tc1, "e", :tc2_geminated_or_aspirated, "e", :tc3_lenited, "šin")]
          end

          def _imperfect_third_plural
            [template(:c1, "ε", mid, "ε", :c3, "ου"), template(:tc1, "e", :tc2_geminated_or_aspirated, "e", :tc3, "ū")]
          end

          def _active_participle
            if root.tv == "ī"
              [template("μυια", :c2, "ι", :c3), template("muyə", :tc2_geminated_or_aspirated, "i", :tc3)]
            else
              [template("μυια", :c2_geminated_or_aspirated, "ι", :c3), template("muyə", :tc2_geminated_or_aspirated, "i", :tc3)]
            end
          end
        end
      end
    end
  end
end
