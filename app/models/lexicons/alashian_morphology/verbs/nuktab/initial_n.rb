require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Nuktab
        module InitialN
          include Nuktab::Regular

          def subtype
            "C1 = N"
          end

          def _preterite_first_singular
            prefix = root.medial_aspiratable? ? "να" : "νυ"
            tprefix = root.medial_aspiratable? ? "nə" : "nu"

            [template(prefix, :c2_geminated_or_aspirated, "ω", :c3, "ετ"), template(tprefix, :tc2_geminated_or_aspirated, "ā", :tc3, "et")]
          end

          def _preterite_second_singular_masculine
            prefix = root.medial_aspiratable? ? "να" : "νυ"
            tprefix = root.medial_aspiratable? ? "nə" : "nu"

            [template(prefix, :c2_geminated_or_aspirated, "ω", :c3_lenited, "τα"), template(tprefix, :tc2_geminated_or_aspirated, "ā", :tc3_lenited, "ta")]
          end

          def _preterite_second_singular_feminine
            prefix = root.medial_aspiratable? ? "να" : "νυ"
            tprefix = root.medial_aspiratable? ? "nə" : "nu"

            [template(prefix, :c2_geminated_or_aspirated, "ω", :c3_lenited, "σ̄ε"), template(tprefix, :tc2_geminated_or_aspirated, "ā", :tc3_lenited, "še")]
          end

          def _preterite_third_singular_masculine
            prefix = root.medial_aspiratable? ? "να" : "νυ"
            tprefix = root.medial_aspiratable? ? "nə" : "nu"

            [template(prefix, :c2_geminated_or_aspirated, "ω", :c3), template(tprefix, :tc2_geminated_or_aspirated, "ā", :tc3)]
          end

          def _preterite_third_singular_feminine
            prefix = root.medial_aspiratable? ? "να" : "νυ"
            tprefix = root.medial_aspiratable? ? "nə" : "nu"

            [template(prefix, :c2_geminated_or_aspirated, "ω", :c3, "ω"), template(tprefix, :tc2_geminated_or_aspirated, "ā", :tc3, "ā")]
          end

          def _preterite_first_plural
            prefix = root.medial_aspiratable? ? "να" : "νυ"
            tprefix = root.medial_aspiratable? ? "nə" : "nu"

            [template(prefix, :c2_geminated_or_aspirated, "ω", :c3, "νω"), template(tprefix, :tc2_geminated_or_aspirated, "ā", :tc3, "nā")]
          end

          def _preterite_second_plural_masculine
            prefix = root.medial_aspiratable? ? "να" : "νυ"
            tprefix = root.medial_aspiratable? ? "nə" : "nu"

            [template(prefix, :c2_geminated_or_aspirated, "ω", :c3_lenited, "τυν"), template(tprefix, :tc2_geminated_or_aspirated, "ā", :tc3_lenited, "tun")]
          end

          def _preterite_second_plural_feminine
            prefix = root.medial_aspiratable? ? "να" : "νυ"
            tprefix = root.medial_aspiratable? ? "nə" : "nu"

            [template(prefix, :c2_geminated_or_aspirated, "ω", :c3_lenited, "σ̄ιν"), template(tprefix, :tc2_geminated_or_aspirated, "ā", :tc3_lenited, "šin")]
          end

          def _preterite_third_plural
            prefix = root.medial_aspiratable? ? "να" : "νυ"
            tprefix = root.medial_aspiratable? ? "nə" : "nu"

            [template(prefix, :c2_geminated_or_aspirated, "ω", :c3, "ου"), template(tprefix, :tc2_geminated_or_aspirated, "ā", :tc3, "ū")]
          end

          def _imperative_feminine_singular
            prefix = root.medial_aspiratable? ? "να" : "νι"
            tprefix = root.medial_aspiratable? ? "nə" : "ni"

            [template(prefix, :c2_geminated_or_aspirated, "ω", :c3, "ει"), template(tprefix, :tc2_geminated_or_aspirated, "ā", :tc3, "ī")]
          end

          def _imperative_plural
            prefix = root.medial_aspiratable? ? "να" : "νι"
            tprefix = root.medial_aspiratable? ? "nə" : "ni"

            [template(prefix, :c2_geminated_or_aspirated, "ω", :c3, "ου"), template(tprefix, :tc2_geminated_or_aspirated, "ā", :tc3, "ū")]
          end

          def _passive_participle
            tprefix = root.medial_aspiratable? ? "nə" : "na"

            [template("να", :c2_geminated_or_aspirated, "ι", :c3), template(tprefix, :tc2_geminated_or_aspirated, "i", :tc3)]
          end
        end
      end
    end
  end
end
