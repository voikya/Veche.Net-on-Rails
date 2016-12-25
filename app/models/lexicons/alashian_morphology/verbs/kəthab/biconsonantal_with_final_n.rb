require_relative 'final_n'

module Morphology
  module Alashian
    module Verbs
      module Kethab
        module BiconsonantalWithFinalN
          include Kethab::FinalN

          def subtype
            "Biconsonantal Root with C3 = N"
          end

          def root
            @root ||= alashian.parsed_root.force_triconsonantal!
          end

          def _imperfect_first_singular
            mid = root.tv == "ū" ? root.force_triconsonantal.c2 : root.force_triconsonantal.c2 * 2
            [template(:c1, "υ", mid, "α"), template(:tc1, "u", :tc2_geminated_or_aspirated, "a")]
          end

          def _imperfect_second_singular_masculine
            mid = root.tv == "ū" ? root.force_triconsonantal.c2 : root.force_triconsonantal.c2 * 2
            [template(:c1, "υ", mid, "ατ"), template(:tc1, "u", :tc2_geminated_or_aspirated, "at")]
          end

          def _imperfect_second_singular_feminine
            mid = root.tv == "ū" ? root.force_triconsonantal.c2 : root.force_triconsonantal.c2 * 2
            [template(:c1, "υ", mid, "ας̄"), template(:tc1, "u", :tc2_geminated_or_aspirated, "aš")]
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
            [template(:c1, "υ", mid, "αν"), template(:tc1, "u", :tc2_geminated_or_aspirated, "an")]
          end

          def _imperfect_second_plural_masculine
            mid = root.tv == "ū" ? root.force_triconsonantal.c2 : root.force_triconsonantal.c2 * 2
            [template(:c1, "υ", mid, "αττυν"), template(:tc1, "u", :tc2_geminated_or_aspirated, "əthun")]
          end

          def _imperfect_second_plural_feminine
            mid = root.tv == "ū" ? root.force_triconsonantal.c2 : root.force_triconsonantal.c2 * 2
            [template(:c1, "υ", mid, "ατζζιν"), template(:tc1, "u", :tc2_geminated_or_aspirated, "əčhin")]
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
