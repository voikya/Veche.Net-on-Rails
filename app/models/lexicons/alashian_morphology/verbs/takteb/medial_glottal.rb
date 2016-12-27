require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Takteb
        module MedialGlottal
          include Takteb::Regular

          def subtype
            "C2 = '/H"
          end

          def _preterite_first_singular
            prefix = root.initial_aspiratable? ? "tə" : "ta"
            [template("τα", :c1_geminated_or_aspirated, "η", :c3, "ετ"), template(prefix, :tc1_geminated_or_aspirated, "ē", :tc3, "et")]
          end

          def _preterite_second_singular_masculine
            prefix = root.initial_aspiratable? ? "tə" : "ta"
            [template("τα", :c1_geminated_or_aspirated, "η", :c3_lenited, "τα"), template(prefix, :tc1_geminated_or_aspirated, "ē", :tc3_lenited, "ta")]
          end

          def _preterite_second_singular_feminine
            prefix = root.initial_aspiratable? ? "tə" : "ta"
            [template("τα", :c1_geminated_or_aspirated, "η", :c3_lenited, "σ̄ε"), template(prefix, :tc1_geminated_or_aspirated, "ē", :tc3_lenited, "še")]
          end

          def _preterite_third_singular_masculine
            prefix = root.initial_aspiratable? ? "tə" : "ta"
            [template("τα", :c1_geminated_or_aspirated, "η", :c3), template(prefix, :tc1_geminated_or_aspirated, "ē", :tc3)]
          end

          def _preterite_third_singular_feminine
            prefix = root.initial_aspiratable? ? "tə" : "ta"
            [template("τα", :c1_geminated_or_aspirated, "η", :c3, "ω"), template(prefix, :tc1_geminated_or_aspirated, "ē", :tc3, "ā")]
          end

          def _preterite_first_plural
            prefix = root.initial_aspiratable? ? "tə" : "ta"
            [template("τα", :c1_geminated_or_aspirated, "η", :c3, "νω"), template(prefix, :tc1_geminated_or_aspirated, "ē", :tc3, "nā")]
          end

          def _preterite_second_plural_masculine
            prefix = root.initial_aspiratable? ? "tə" : "ta"
            [template("τα", :c1_geminated_or_aspirated, "η", :c3_lenited, "τυν"), template(prefix, :tc1_geminated_or_aspirated, "ē", :tc3_lenited, "tun")]
          end

          def _preterite_second_plural_feminine
            prefix = root.initial_aspiratable? ? "tə" : "ta"
            [template("τα", :c1_geminated_or_aspirated, "η", :c3_lenited, "σ̄ιν"), template(prefix, :tc1_geminated_or_aspirated, "ē", :tc3_lenited, "šin")]
          end

          def _preterite_third_plural
            prefix = root.initial_aspiratable? ? "tə" : "ta"
            [template("τα", :c1_geminated_or_aspirated, "η", :c3, "ου"), template(prefix, :tc1_geminated_or_aspirated, "ē", :tc3, "ū")]
          end

          def _imperfect_first_singular
            prefix = root.initial_aspiratable? ? "tə" : "ta"
            [template("τα", :c1_geminated_or_aspirated, "ιη", :c3_lenited), template(prefix, :tc1_geminated_or_aspirated, "ie", :tc3_lenited)]
          end

          def _imperfect_second_singular_masculine
            prefix = root.initial_aspiratable? ? "tə" : "ta"
            [template("τα", :c1_geminated_or_aspirated, "ιη", :c3_lenited, "ετ"), template(prefix, :tc1_geminated_or_aspirated, "ie", :tc3_lenited, "et")]
          end

          def _imperfect_second_singular_feminine
            prefix = root.initial_aspiratable? ? "tə" : "ta"
            [template("τα", :c1_geminated_or_aspirated, "ιη", :c3_lenited, "ες̄"), template(prefix, :tc1_geminated_or_aspirated, "ie", :tc3_lenited, "eš")]
          end

          def _imperfect_third_singular_masculine
            prefix = root.initial_aspiratable? ? "tə" : "ta"
            [template("τα", :c1_geminated_or_aspirated, "ιη", :c3), template(prefix, :tc1_geminated_or_aspirated, "ie", :tc3)]
          end

          def _imperfect_third_singular_feminine
            prefix = root.initial_aspiratable? ? "tə" : "ta"
            [template("τα", :c1_geminated_or_aspirated, "ιη", :c3, "ω"), template(prefix, :tc1_geminated_or_aspirated, "ie", :tc3, "ā")]
          end

          def _imperfect_first_plural
            prefix = root.initial_aspiratable? ? "tə" : "ta"
            [template("τα", :c1_geminated_or_aspirated, "ιη", :c3_lenited, "εν"), template(prefix, :tc1_geminated_or_aspirated, "ie", :tc3_lenited, "en")]
          end

          def _imperfect_second_plural_masculine
            prefix = root.initial_aspiratable? ? "tə" : "ta"
            [template("τα", :c1_geminated_or_aspirated, "ιη", :c3_lenited, "τυν"), template(prefix, :tc1_geminated_or_aspirated, "ie", :tc3_lenited, "tun")]
          end

          def _imperfect_second_plural_feminine
            prefix = root.initial_aspiratable? ? "tə" : "ta"
            [template("τα", :c1_geminated_or_aspirated, "ιη", :c3_lenited, "σ̄ιν"), template(prefix, :tc1_geminated_or_aspirated, "ie", :tc3_lenited, "šin")]
          end

          def _imperfect_third_plural
            prefix = root.initial_aspiratable? ? "tə" : "ta"
            [template("τα", :c1_geminated_or_aspirated, "ιη", :c3, "ου"), template(prefix, :tc1_geminated_or_aspirated, "ie", :tc3, "ū")]
          end

          def _imperative_masculine_singular
            prefix = root.initial_aspiratable? ? "tə" : "ta"
            [template("τα", :c1_geminated_or_aspirated, :v, :c3), template(prefix, :tc1_geminated_or_aspirated, :tv, :tc3)]
          end

          def _imperative_feminine_singular
            prefix = root.initial_aspiratable? ? "tə" : "ta"
            [template("τα", :c1_geminated_or_aspirated, :short_v, :c3, "ει"), template(prefix, :tc1_geminated_or_aspirated, :short_tv, :tc3, "ī")]
          end

          def _imperative_plural
            prefix = root.initial_aspiratable? ? "tə" : "ta"
            [template("τα", :c1_geminated_or_aspirated, :short_v, :c3, "ου"), template(prefix, :tc1_geminated_or_aspirated, :short_tv, :tc3, "ū")]
          end
        end
      end
    end
  end
end
