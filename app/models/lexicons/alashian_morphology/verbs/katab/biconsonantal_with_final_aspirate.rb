require_relative 'biconsonantal'

module Morphology
  module Alashian
    module Verbs
      module Katab
        module BiconsonantalWithFinalAspirate
          include Katab::Biconsonantal

          def subtype
            "Biconsonantal Root with C3 = PH/TH/KH/TSH/ČH"
          end

          def _preterite_second_singular_masculine
            [template(:c1, :v, :c2_unaspirated, "τα"), template(:tc1, :tv, :tc2_unaspirated, "ta")]
          end

          def _preterite_second_singular_feminine
            [template(:c1, :v, :c2_unaspirated, "σ̄ε"), template(:tc1, :tv, :tc2_unaspirated, "še")]
          end

          def _preterite_first_plural
            [template(:c1, :v, :c2_unaspirated, "νω"), template(:tc1, :tv, :tc2_unaspirated, "nā")]
          end

          def _preterite_second_plural_masculine
            [template(:c1, :v, :c2_unaspirated, "τυν"), template(:tc1, :tv, :tc2_unaspirated, "tun")]
          end

          def _preterite_second_plural_feminine
            [template(:c1, :v, :c2_unaspirated, "σ̄ιν"), template(:tc1, :tv, :tc2_unaspirated, "šin")]
          end

          def _imperfect_first_singular
            [template(:c1, "ιη'", :c2, "α", :c3), template(:tc1, "ie", :tc2, "ə", :tc3)]
          end

          def _imperfect_second_singular_masculine
            [template(:c1, "ιη'", :c2, "α", :c3, "ετ"), template(:tc1, "ie", :tc2, "ə", :tc3, "et")]
          end

          def _imperfect_second_singular_feminine
            [template(:c1, "ιη'", :c2, "α", :c3, "ες̄"), template(:tc1, "ie", :tc2, "ə", :tc3, "eš")]
          end

          def _imperfect_third_singular_masculine
            [template(:c1, "η'", :c2, "α", :c3), template(:tc1, "ē", :tc2, "ə", :tc3)]
          end

          def _imperfect_first_plural
            [template(:c1, "ιη'", :c2, "α", :c3, "εν"), template(:tc1, "ie", :tc2, "ə", :tc3, "en")]
          end

          def _imperfect_second_plural_masculine
            [template(:c1, "ιη'", :c2, "α", :c3_unaspirated, "τυν"), template(:tc1, "ie", :tc2, "ə", :tc3_unaspirated, "tun")]
          end

          def _imperfect_second_plural_feminine
            [template(:c1, "ιη'", :c2, "α", :c3_unaspirated, "σ̄ιν"), template(:tc1, "ie", :tc2, "ə", :tc3_unaspirated, "šin")]
          end

          def _volitive_first_singular
            [template("α", :c1, :v, :c2, "αννα"), template("'a", :tc1, :tv, :tc2, "anna")]
          end

          def _volitive_second_singular_masculine
            if root.tv == "ā" || root.tv == "ū"
              [template("τι", :c1, :v, :c2, "αννα"), template("ti", :tc1, :tv, :tc2, "anna")]
            else
              [template("τα", :c1, :v, :c2, "αννα"), template("ta", :tc1, :tv, :tc2, "anna")]
            end
          end

          def _volitive_third_singular_masculine
            if root.tv == "ā" || root.tv == "ū"
              [template("τι", :c1, :v, :c2, "αννα"), template("yi", :tc1, :tv, :tc2, "anna")]
            else
              [template("ια", :c1, :v, :c2, "αννα"), template("ya", :tc1, :tv, :tc2, "anna")]
            end
          end

          def _active_participle
            [template(:c1, "ου", :c2, "α", :c3), template(:tc1, "ū", :tc2, "ə", :tc3)]
          end
        end
      end
    end
  end
end
