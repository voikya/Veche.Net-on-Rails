require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Kethab
        module FinalN
          include Kethab::Regular

          def subtype
            "C3 = N"
          end

          def _preterite_second_singular_masculine
            [template(:c1, "α", :c2_geminated_or_aspirated, "ωττα"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "ātha")]
          end

          def _preterite_second_singular_feminine
            [template(:c1, "α", :c2_geminated_or_aspirated, "ωτζζε"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "āčhe")]
          end

          def _preterite_second_plural_masculine
            [template(:c1, "α", :c2_geminated_or_aspirated, "ωττυν"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "āthun")]
          end

          def _preterite_second_plural_feminine
            [template(:c1, "α", :c2_geminated_or_aspirated, "ωτζζιν"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "āčhin")]
          end

          def _imperfect_first_singular
            if root.medial_aspiratable?
              [template(:c1, "α", :c2_geminated_or_aspirated, "α"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "a")]
            else
              [template(:c1, "υ", :c2_geminated_or_aspirated, "α"), template(:tc1, "u", :tc2_geminated_or_aspirated, "a")]
            end
          end

          def _imperfect_second_singular_masculine
            if root.medial_aspiratable?
              [template(:c1, "α", :c2_geminated_or_aspirated, "ατ"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "at")]
            else
              [template(:c1, "υ", :c2_geminated_or_aspirated, "ατ"), template(:tc1, "u", :tc2_geminated_or_aspirated, "at")]
            end
          end

          def _imperfect_second_singular_feminine
            if root.medial_aspiratable?
              [template(:c1, "α", :c2_geminated_or_aspirated, "ας̄"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "aš")]
            else
              [template(:c1, "υ", :c2_geminated_or_aspirated, "ας̄"), template(:tc1, "u", :tc2_geminated_or_aspirated, "aš")]
            end
          end

          def _imperfect_first_plural
            if root.medial_aspiratable?
              [template(:c1, "α", :c2_geminated_or_aspirated, "αν"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "an")]
            else
              [template(:c1, "υ", :c2_geminated_or_aspirated, "αν"), template(:tc1, "u", :tc2_geminated_or_aspirated, "an")]
            end
          end

          def _imperfect_second_plural_masculine
            if root.medial_aspiratable?
              [template(:c1, "α", :c2_geminated_or_aspirated, "αττυν"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "əthun")]
            else
              [template(:c1, "υ", :c2_geminated_or_aspirated, "αττυν"), template(:tc1, "u", :tc2_geminated_or_aspirated, "əthun")]
            end
          end

          def _imperfect_second_plural_feminine
            if root.medial_aspiratable?
              [template(:c1, "α", :c2_geminated_or_aspirated, "ατζζιν"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "əčhin")]
            else
              [template(:c1, "υ", :c2_geminated_or_aspirated, "ατζζιν"), template(:tc1, "u", :tc2_geminated_or_aspirated, "əčhin")]
            end
          end
        end
      end
    end
  end
end
