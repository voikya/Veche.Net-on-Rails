require_relative 'initial_ř'

module Morphology
  module Alashian
    module Verbs
      module Ketheb
        module BiconsonantalWithInitialRAndFinalN
          include Ketheb::InitialR

          def subtype
            "Biconsonantal Root with C1 = Ř, C3 = N"
          end

          def root
            @root ||= alashian.parsed_root.force_triconsonantal!
          end

          def _present_second_singular_feminine
            [template("τε", :c1, "α", :c2, "α", :c3, "ει"), template("te", :tc1, "ə", :tc2, "a", :tc3, "ī")]
          end

          def _present_third_singular_feminine
            [template("ιε", :c1, "α", :c2, "α", :c3, "ει"), template("ye", :tc1, "ə", :tc2, "a", :tc3, "ī")]
          end

          def _present_first_plural
            [template("νε", :c1, "α", :c2, "α", :c3, "ου"), template("ne", :tc1, "ə", :tc2, "a", :tc3, "ū")]
          end

          def _present_second_plural
            [template("τε", :c1, "α", :c2, "α", :c3, "ου"), template("te", :tc1, "ə", :tc2, "a", :tc3, "ū")]
          end

          def _present_third_plural
            [template("ι", :c1, "α", :c2, "α", :c3, "ου"), template("ye", :tc1, "ə", :tc2, "a", :tc3, "ū")]
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
            [template(:c1, "ε", :c2_geminated_or_aspirated, "ε"), template(:tc1, "e", :tc2_geminated_or_aspirated, "e")]
          end

          def _imperfect_second_singular_masculine
            [template(:c1, "ε", :c2_geminated_or_aspirated, "ετ"), template(:tc1, "e", :tc2_geminated_or_aspirated, "et")]
          end

          def _imperfect_second_singular_feminine
            [template(:c1, "ε", :c2_geminated_or_aspirated, "ες̄"), template(:tc1, "e", :tc2_geminated_or_aspirated, "eš")]
          end

          def _imperfect_first_plural
            [template(:c1, "ε", :c2_geminated_or_aspirated, "εν"), template(:tc1, "e", :tc2_geminated_or_aspirated, "en")]
          end

          def _imperfect_second_plural_masculine
            [template(:c1, "ε", :c2_geminated_or_aspirated, "αττυν"), template(:tc1, "e", :tc2_geminated_or_aspirated, "əthun")]
          end

          def _imperfect_second_plural_feminine
            [template(:c1, "ε", :c2_geminated_or_aspirated, "ατζζιν"), template(:tc1, "e", :tc2_geminated_or_aspirated, "əčhin")]
          end
        end
      end
    end
  end
end
