require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Kethab
        module Biconsonantal
          include Kethab::Regular

          def subtype
            "Biconsonantal Root"
          end

          def _imperfect_first_singular
            mid = root.tv == "ū" ? root.force_triconsonantal.c2 : root.force_triconsonantal.c2 * 2
            [template(:c1, "υ", mid, "α", :c3_lenited), template(:tc1, "u", :tc2_geminated_or_aspirated, "a", :tc3_lenited)]
          end

          def _imperfect_second_singular_masculine
            mid = root.tv == "ū" ? root.force_triconsonantal.c2 : root.force_triconsonantal.c2 * 2
            [template(:c1, "υ", mid, "α", :c3_lenited, "ατ"), template(:tc1, "u", :tc2_geminated_or_aspirated, "a", :tc3_lenited, "at")]
          end

          def _imperfect_second_singular_feminine
            mid = root.tv == "ū" ? root.force_triconsonantal.c2 : root.force_triconsonantal.c2 * 2
            [template(:c1, "υ", mid, "α", :c3_lenited, "ας̄"), template(:tc1, "u", :tc2_geminated_or_aspirated, "a", :tc3_lenited, "aš")]
          end

          def _imperfect_third_singular_masculine
            mid = root.tv == "ū" ? root.force_triconsonantal.c2 : root.force_triconsonantal.c2 * 2
            [template(:c1, "υ", mid, "α", :c3), template(:tc1, "u", :tc2_geminated_or_aspirated, "a", :tc3)]
          end

          def _imperfect_third_singular_feminine
            mid = root.tv == "ū" ? root.force_triconsonantal.c2 : root.force_triconsonantal.c2 * 2
            [template(:c1, "υ", mid, "α", :c3, "ω"), template(:tc1, "u", :tc2_geminated_or_aspirated, "a", :tc3, "ā")]
          end

          def _imperfect_first_plural
            mid = root.tv == "ū" ? root.force_triconsonantal.c2 : root.force_triconsonantal.c2 * 2
            [template(:c1, "υ", mid, "α", :c3_lenited, "αν"), template(:tc1, "u", :tc2_geminated_or_aspirated, "a", :tc3_lenited, "an")]
          end

          def _imperfect_second_plural_masculine
            mid = root.tv == "ū" ? root.force_triconsonantal.c2 : root.force_triconsonantal.c2 * 2
            [template(:c1, "υ", mid, "α", :c3_lenited, "τυν"), template(:tc1, "u", :tc2_geminated_or_aspirated, "a", :tc3_lenited, "tun")]
          end

          def _imperfect_second_plural_feminine
            mid = root.tv == "ū" ? root.force_triconsonantal.c2 : root.force_triconsonantal.c2 * 2
            [template(:c1, "υ", mid, "α", :c3_lenited, "σ̄ιν"), template(:tc1, "u", :tc2_geminated_or_aspirated, "a", :tc3_lenited, "šin")]
          end

          def _imperfect_third_plural
            mid = root.tv == "ū" ? root.force_triconsonantal.c2 : root.force_triconsonantal.c2 * 2
            [template(:c1, "υ", mid, "α", :c3, "ου"), template(:tc1, "u", :tc2_geminated_or_aspirated, "a", :tc3, "ū")]
          end
        end
      end
    end
  end
end
