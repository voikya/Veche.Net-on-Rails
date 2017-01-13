require_relative 'medial_glottal'

module Morphology
  module Alashian
    module Verbs
      module Ketheb
        module BiconsonantalWithAAndFinalN
          include Ketheb::MedialGlottal

          def subtype
            "Biconsonantal Root with V = A and C3 = N"
          end

          def root
            @root ||= alashian.parsed_root.force_triconsonantal!("'")
          end

          def _preterite_second_singular_masculine
            [template(:c1, "α", :c2, "ηττα"), template(:tc1, "ə", :tc2, "ētha")]
          end

          def _preterite_second_singular_feminine
            [template(:c1, "α", :c2, "ητζζε"), template(:tc1, "ə", :tc2, "ēčhe")]
          end

          def _preterite_second_plural_masculine
            [template(:c1, "α", :c2, "ηττυν"), template(:tc1, "ə", :tc2, "ēthun")]
          end

          def _preterite_second_plural_feminine
            [template(:c1, "α", :c2, "ητζζιν"), template(:tc1, "ə", :tc2, "ēčhin")]
          end

          def _imperfect_first_singular
            [template(:c1, "ε'", :c2, "ε"), template(:tc1, "e", :tc2, "e")]
          end

          def _imperfect_second_singular_masculine
            [template(:c1, "ε'", :c2, "ετ"), template(:tc1, "e", :tc2, "et")]
          end

          def _imperfect_second_singular_feminine
            [template(:c1, "ε'", :c2, "ες̄"), template(:tc1, "e", :tc2, "eš")]
          end

          def _imperfect_third_singular_masculine
            [template(:c1, "η'", :c2, "ε", :c3), template(:tc1, "ē", :tc2, "e", :tc3)]
          end

          def _imperfect_first_plural
            [template(:c1, "ε'", :c2, "εν"), template(:tc1, "e", :tc2, "en")]
          end

          def _imperfect_second_plural_masculine
            [template(:c1, "ε'", :c2, "αττυν"), template(:tc1, "e", :tc2, "əthun")]
          end

          def _imperfect_second_plural_feminine
            [template(:c1, "ε'", :c2, "ατζζιν"), template(:tc1, "e", :tc2, "əčhin")]
          end
        end
      end
    end
  end
end
