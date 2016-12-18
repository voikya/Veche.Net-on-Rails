require_relative 'initial_w'

module Morphology
  module Alashian
    module Verbs
      module Ketheb
        module InitialWAndFinalN
          include Ketheb::InitialW

          def subtype
            "C1 = W, C3 = N"
          end

          def _preterite_second_singular_masculine
            [template("в̄α", :c2_geminated_or_aspirated, "ηττα"), template("və", :tc2_geminated_or_aspirated, "ētha")]
          end

          def _preterite_second_singular_feminine
            [template("в̄α", :c2_geminated_or_aspirated, "ητζζε"), template("və", :tc2_geminated_or_aspirated, "ēčhe")]
          end

          def _preterite_second_plural_masculine
            [template("в̄α", :c2_geminated_or_aspirated, "ηττυν"), template("və", :tc2_geminated_or_aspirated, "ēthun")]
          end

          def _preterite_second_plural_feminine
            [template("в̄α", :c2_geminated_or_aspirated, "ητζζιν"), template("və", :tc2_geminated_or_aspirated, "ēčhin")]
          end

          def _imperfect_first_singular
            if root.medial_aspiratable?
              [template("в̄α", :c2_geminated_or_aspirated, "ε"), template("və", :tc2_geminated_or_aspirated, "e")]
            else
              [template("в̄ε", :c2_geminated_or_aspirated, "ε"), template("ve", :tc2_geminated_or_aspirated, "e")]
            end
          end

          def _imperfect_second_singular_masculine
            if root.medial_aspiratable?
              [template("в̄α", :c2_geminated_or_aspirated, "ετ"), template("və", :tc2_geminated_or_aspirated, "et")]
            else
              [template("в̄ε", :c2_geminated_or_aspirated, "ετ"), template("ve", :tc2_geminated_or_aspirated, "et")]
            end
          end

          def _imperfect_second_singular_feminine
            if root.medial_aspiratable?
              [template("в̄α", :c2_geminated_or_aspirated, "ες̄"), template("və", :tc2_geminated_or_aspirated, "eš")]
            else
              [template("в̄ε", :c2_geminated_or_aspirated, "ες̄"), template("ve", :tc2_geminated_or_aspirated, "eš")]
            end
          end

          def _imperfect_first_plural
            if root.medial_aspiratable?
              [template("в̄α", :c2_geminated_or_aspirated, "εν"), template("və", :tc2_geminated_or_aspirated, "en")]
            else
              [template("в̄ε", :c2_geminated_or_aspirated, "εν"), template("ve", :tc2_geminated_or_aspirated, "en")]
            end
          end

          def _imperfect_second_plural_masculine
            if root.medial_aspiratable?
              [template("в̄α", :c2_geminated_or_aspirated, "αττυν"), template("və", :tc2_geminated_or_aspirated, "əthun")]
            else
              [template("в̄ε", :c2_geminated_or_aspirated, "αττυν"), template("ve", :tc2_geminated_or_aspirated, "əthun")]
            end
          end

          def _imperfect_second_plural_feminine
            if root.medial_aspiratable?
              [template("в̄α", :c2_geminated_or_aspirated, "ατζζιν"), template("və", :tc2_geminated_or_aspirated, "əčhin")]
            else
              [template("в̄ε", :c2_geminated_or_aspirated, "ατζζιν"), template("ve", :tc2_geminated_or_aspirated, "əčhin")]
            end
          end
        end
      end
    end
  end
end
