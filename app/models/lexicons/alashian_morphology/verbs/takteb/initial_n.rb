require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Takteb
        module InitialN
          include Takteb::Regular

          def subtype
            "C1 = N"
          end

          def _preterite_first_singular
            prefix = root.medial_aspiratable? ? "tə" : "ta"
            [template("τα", :c2_geminated_or_aspirated, "η", :c3, "ετ"), template(prefix, :tc2_geminated_or_aspirated, "ē", :tc3, "et")]
          end

          def _preterite_second_singular_masculine
            prefix = root.medial_aspiratable? ? "tə" : "ta"
            [template("τα", :c2_geminated_or_aspirated, "η", :c3_lenited, "τα"), template(prefix, :tc2_geminated_or_aspirated, "ē", :tc3_lenited, "ta")]
          end

          def _preterite_second_singular_feminine
            prefix = root.medial_aspiratable? ? "tə" : "ta"
            [template("τα", :c2_geminated_or_aspirated, "η", :c3_lenited, "σ̄ε"), template(prefix, :tc2_geminated_or_aspirated, "ē", :tc3_lenited, "še")]
          end

          def _preterite_third_singular_masculine
            prefix = root.medial_aspiratable? ? "tə" : "ta"
            [template("τα", :c2_geminated_or_aspirated, "η", :c3), template(prefix, :tc2_geminated_or_aspirated, "ē", :tc3)]
          end

          def _preterite_third_singular_feminine
            prefix = root.medial_aspiratable? ? "tə" : "ta"
            [template("τα", :c2_geminated_or_aspirated, "η", :c3, "ω"), template(prefix, :tc2_geminated_or_aspirated, "ē", :tc3, "ā")]
          end

          def _preterite_first_plural
            prefix = root.medial_aspiratable? ? "tə" : "ta"
            [template("τα", :c2_geminated_or_aspirated, "η", :c3, "νω"), template(prefix, :tc2_geminated_or_aspirated, "ē", :tc3, "nā")]
          end

          def _preterite_second_plural_masculine
            prefix = root.medial_aspiratable? ? "tə" : "ta"
            [template("τα", :c2_geminated_or_aspirated, "η", :c3_lenited, "τυν"), template(prefix, :tc2_geminated_or_aspirated, "ē", :tc3_lenited, "tun")]
          end

          def _preterite_second_plural_feminine
            prefix = root.medial_aspiratable? ? "tə" : "ta"
            [template("τα", :c2_geminated_or_aspirated, "η", :c3_lenited, "σ̄ιν"), template(prefix, :tc2_geminated_or_aspirated, "ē", :tc3_lenited, "šin")]
          end

          def _preterite_third_plural
            prefix = root.medial_aspiratable? ? "tə" : "ta"
            [template("τα", :c2_geminated_or_aspirated, "η", :c3, "ου"), template(prefix, :tc2_geminated_or_aspirated, "ē", :tc3, "ū")]
          end

          def _imperfect_first_singular
            prefix = root.medial_aspiratable? ? "tə" : "ta"
            [template("τα", :c2_geminated_or_aspirated, "ιη", :c3_lenited), template(prefix, :tc2_geminated_or_aspirated, "ie", :tc3_lenited)]
          end

          def _imperfect_second_singular_masculine
            prefix = root.medial_aspiratable? ? "tə" : "ta"
            [template("τα", :c2_geminated_or_aspirated, "ιη", :c3_lenited, "ετ"), template(prefix, :tc2_geminated_or_aspirated, "ie", :tc3_lenited, "et")]
          end

          def _imperfect_second_singular_feminine
            prefix = root.medial_aspiratable? ? "tə" : "ta"
            [template("τα", :c2_geminated_or_aspirated, "ιη", :c3_lenited, "ες̄"), template(prefix, :tc2_geminated_or_aspirated, "ie", :tc3_lenited, "eš")]
          end

          def _imperfect_third_singular_masculine
            prefix = root.medial_aspiratable? ? "tə" : "ta"
            [template("τα", :c2_geminated_or_aspirated, "ιη", :c3), template(prefix, :tc2_geminated_or_aspirated, "ie", :tc3)]
          end

          def _imperfect_third_singular_feminine
            prefix = root.medial_aspiratable? ? "tə" : "ta"
            [template("τα", :c2_geminated_or_aspirated, "ιη", :c3, "ω"), template(prefix, :tc2_geminated_or_aspirated, "ie", :tc3, "ā")]
          end

          def _imperfect_first_plural
            prefix = root.medial_aspiratable? ? "tə" : "ta"
            [template("τα", :c2_geminated_or_aspirated, "ιη", :c3_lenited, "εν"), template(prefix, :tc2_geminated_or_aspirated, "ie", :tc3_lenited, "en")]
          end

          def _imperfect_second_plural_masculine
            prefix = root.medial_aspiratable? ? "tə" : "ta"
            [template("τα", :c2_geminated_or_aspirated, "ιη", :c3_lenited, "τυν"), template(prefix, :tc2_geminated_or_aspirated, "ie", :tc3_lenited, "tun")]
          end

          def _imperfect_second_plural_feminine
            prefix = root.medial_aspiratable? ? "tə" : "ta"
            [template("τα", :c2_geminated_or_aspirated, "ιη", :c3_lenited, "σ̄ιν"), template(prefix, :tc2_geminated_or_aspirated, "ie", :tc3_lenited, "šin")]
          end

          def _imperfect_third_plural
            prefix = root.medial_aspiratable? ? "tə" : "ta"
            [template("τα", :c2_geminated_or_aspirated, "ιη", :c3, "ου"), template(prefix, :tc2_geminated_or_aspirated, "ie", :tc3, "ū")]
          end

          def _imperative_masculine_singular
            if root.medial_aspiratable?
              [template("τα", :c2_geminated_or_aspirated, :v, :c3), template("tə", :tc2_geminated_or_aspirated, :tv, :tc3)]
            elsif root.tv == "ā"
              [template("τι", :c2_geminated_or_aspirated, :v, :c3), template("ti", :tc2_geminated_or_aspirated, :tv, :tc3)]
            else
              [template("τα", :c2_geminated_or_aspirated, :v, :c3), template("ta", :tc2_geminated_or_aspirated, :tv, :tc3)]
            end
          end

          def _imperative_feminine_singular
            if root.medial_aspiratable?
              [template("τα", :c2_geminated_or_aspirated, :short_v, :c3, "ει"), template("ta", :tc2_geminated_or_aspirated, :short_tv, :tc3, "ī")]
            elsif root.tv == "ā"
              [template("τι", :c2_geminated_or_aspirated, :short_v, :c3, "ει"), template("ti", :tc2_geminated_or_aspirated, :short_tv, :tc3, "ī")]
            else
              [template("τα", :c2_geminated_or_aspirated, :short_v, :c3, "ει"), template("ta", :tc2_geminated_or_aspirated, :short_tv, :tc3, "ī")]
            end
          end

          def _imperative_plural
            if root.medial_aspiratable?
              [template("τα", :c2_geminated_or_aspirated, :short_v, :c3, "ου"), template("ta", :tc2_geminated_or_aspirated, :short_tv, :tc3, "ū")]
            elsif root.tv == "ā"
              [template("τι", :c2_geminated_or_aspirated, :short_v, :c3, "ου"), template("ti", :tc2_geminated_or_aspirated, :short_tv, :tc3, "ū")]
            else
              [template("τα", :c2_geminated_or_aspirated, :short_v, :c3, "ου"), template("ta", :tc2_geminated_or_aspirated, :short_tv, :tc3, "ū")]
            end
          end
        end
      end
    end
  end
end
