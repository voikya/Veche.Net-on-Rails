require_relative 'final_aspirate'

module Morphology
  module Alashian
    module Verbs
      module Takteb
        module InitialWAndFinalAspirate
          include Takteb::FinalAspirate

          def subtype
            "C1 = W, C3 = PH/TH/KH/TSH/ČH"
          end

          def _preterite_first_singular
            [template("του", :c2, "η", :c3, "ετ"), template("tū", :tc2, "ē", :tc3, "et")]
          end

          def _preterite_second_singular_masculine
            [template("του", :c2, "η", :c3, "αττα"), template("tū", :tc2, "ē", :tc3, "ətha")]
          end

          def _preterite_second_singular_feminine
            [template("του", :c2, "η", :c3, "ατζζε"), template("tū", :tc2, "ē", :tc3, "əčhe")]
          end

          def _preterite_third_singular_masculine
            [template("του", :c2, "η", :c3), template("tū", :tc2, "ē", :tc3)]
          end

          def _preterite_third_singular_feminine
            [template("του", :c2, "η", :c3, "ω"), template("tū", :tc2, "ē", :tc3, "ā")]
          end

          def _preterite_first_plural
            [template("του", :c2, "η", :c3_unaspirated, "νω"), template("tū", :tc2, "ē", :tc3_unaspirated, "nā")]
          end

          def _preterite_second_plural_masculine
            [template("του", :c2, "η", :c3, "αττυν"), template("tū", :tc2, "ē", :tc3, "əthun")]
          end

          def _preterite_second_plural_feminine
            [template("του", :c2, "η", :c3, "ατζζιν"), template("tū", :tc2, "ē", :tc3, "əčhin")]
          end

          def _preterite_third_plural
            [template("του", :c2, "η", :c3, "ου"), template("tū", :tc2, "ē", :tc3, "ū")]
          end

          def _imperfect_first_singular
            [template("του", :c2, "ιη", :c3), template("tū", :tc2, "ie", :tc3)]
          end

          def _imperfect_second_singular_masculine
            [template("του", :c2, "ιη", :c3, "ετ"), template("tū", :tc2, "ie", :tc3, "et")]
          end

          def _imperfect_second_singular_feminine
            [template("του", :c2, "ιη", :c3, "ες̄"), template("tū", :tc2, "ie", :tc3, "eš")]
          end

          def _imperfect_third_singular_masculine
            [template("του", :c2, "ιη", :c3), template("tū", :tc2, "ie", :tc3)]
          end

          def _imperfect_third_singular_feminine
            [template("του", :c2, "ιη", :c3, "ω"), template("tū", :tc2, "ie", :tc3, "ā")]
          end

          def _imperfect_first_plural
            [template("του", :c2, "ιη", :c3, "εν"), template("tū", :tc2, "ie", :tc3, "en")]
          end

          def _imperfect_second_plural_masculine
            [template("του", :c2, "ιη", :c3, "αττυν"), template("tū", :tc2, "ie", :tc3, "əthun")]
          end

          def _imperfect_second_plural_feminine
            [template("του", :c2, "ιη", :c3, "ατζζιν"), template("tū", :tc2, "ie", :tc3, "əčhin")]
          end

          def _imperfect_third_plural
            [template("του", :c2, "ιη", :c3, "ου"), template("tū", :tc2, "ie", :tc3, "ū")]
          end

          def _imperative_masculine_singular
            [template("του", :c2, :v, :c3), template("tū", :tc2, :tv, :tc3)]
          end

          def _imperative_feminine_singular
            [template("του", :c2, "α", :c3, "ει"), template("tū", :tc2, "ə", :tc3, "ī")]
          end

          def _imperative_plural
            [template("του", :c2, "α", :c3, "ου"), template("tū", :tc2, "ə", :tc3, "ū")]
          end

          def _active_participle
            [template("μι", infix, "'υα", :c2, "α", :c3), template("mi", infix_transliterated, "wa", :tc2, "ə", :tc3)]
          end
        end
      end
    end
  end
end
