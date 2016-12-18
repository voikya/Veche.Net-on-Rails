require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Ketheb
        module FinalN
          include Ketheb::Regular

          def subtype
            "C3 = N"
          end

          def _preterite_second_singular_masculine
            [template(:c1, "α", :c2_geminated_or_aspirated, "ηττα"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "ētha")]
          end

          def _preterite_second_singular_feminine
            [template(:c1, "α", :c2_geminated_or_aspirated, "ητζζε"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "ēčhe")]
          end

          def _preterite_second_plural_masculine
            [template(:c1, "α", :c2_geminated_or_aspirated, "ηττυν"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "ēthun")]
          end

          def _preterite_second_plural_feminine
            [template(:c1, "α", :c2_geminated_or_aspirated, "ητζζιν"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "ēčhin")]
          end

          def _imperfect_first_singular
            if root.medial_aspiratable?
              [template(:c1, "α", :c2_geminated_or_aspirated, "ε"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "e")]
            else
              [template(:c1, "ε", :c2_geminated_or_aspirated, "ε"), template(:tc1, "e", :tc2_geminated_or_aspirated, "e")]
            end
          end

          def _imperfect_second_singular_masculine
            if root.medial_aspiratable?
              [template(:c1, "α", :c2_geminated_or_aspirated, "ετ"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "et")]
            else
              [template(:c1, "ε", :c2_geminated_or_aspirated, "ετ"), template(:tc1, "e", :tc2_geminated_or_aspirated, "et")]
            end
          end

          def _imperfect_second_singular_feminine
            if root.medial_aspiratable?
              [template(:c1, "α", :c2_geminated_or_aspirated, "ες̄"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "eš")]
            else
              [template(:c1, "ε", :c2_geminated_or_aspirated, "ες̄"), template(:tc1, "e", :tc2_geminated_or_aspirated, "eš")]
            end
          end

          def _imperfect_first_plural
            if root.medial_aspiratable?
              [template(:c1, "α", :c2_geminated_or_aspirated, "εν"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "en")]
            else
              [template(:c1, "ε", :c2_geminated_or_aspirated, "εν"), template(:tc1, "e", :tc2_geminated_or_aspirated, "en")]
            end
          end

          def _imperfect_second_plural_masculine
            if root.medial_aspiratable?
              [template(:c1, "α", :c2_geminated_or_aspirated, "αττυν"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "əthun")]
            else
              [template(:c1, "ε", :c2_geminated_or_aspirated, "αττυν"), template(:tc1, "e", :tc2_geminated_or_aspirated, "əthun")]
            end
          end

          def _imperfect_second_plural_feminine
            if root.medial_aspiratable?
              [template(:c1, "α", :c2_geminated_or_aspirated, "ατζζιν"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "əčhin")]
            else
              [template(:c1, "ε", :c2_geminated_or_aspirated, "ατζζιν"), template(:tc1, "e", :tc2_geminated_or_aspirated, "əčhin")]
            end
          end
        end
      end
    end
  end
end
