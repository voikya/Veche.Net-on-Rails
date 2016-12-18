require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Nuktab
        module MedialGlottal
          include Nuktab::Regular

          def subtype
            "C2 = '/H"
          end

          def _preterite_first_singular
            [preterite_stem + "ετ", preterite_stem_transliterated + "et"]
          end

          def _preterite_second_singular_masculine
            [preterite_stem(lenition: true) + "τα", preterite_stem_transliterated(lenition: true) + "ta"]
          end

          def _preterite_second_singular_feminine
            [preterite_stem(lenition: true) + "σ̄ε", preterite_stem_transliterated(lenition: true) + "še"]
          end

          def _preterite_third_singular_masculine
            [preterite_stem, preterite_stem_transliterated]
          end

          def _preterite_third_singular_feminine
            [preterite_stem + "ω", preterite_stem_transliterated + "ā"]
          end

          def _preterite_first_plural
            [preterite_stem + "νω", preterite_stem_transliterated + "nā"]
          end

          def _preterite_second_plural_masculine
            [preterite_stem(lenition: true) + "τυν", preterite_stem_transliterated(lenition: true) + "tun"]
          end

          def _preterite_second_plural_feminine
            [preterite_stem(lenition: true) + "σ̄ιν", preterite_stem_transliterated(lenition: true) + "šin"]
          end

          def _preterite_third_plural
            [preterite_stem + "ου", preterite_stem_transliterated + "ū"]
          end

          def _imperfect_first_singular
            [template("νυ", :c1, "υω", :c3_lenited), template("nu", :tc1, "uo", :tc3_lenited)]
          end

          def _imperfect_second_singular_masculine
            [template("νυ", :c1, "υω", :c3_lenited, "ατ"), template("nu", :tc1, "uo", :tc3_lenited, "at")]
          end

          def _imperfect_second_singular_feminine
            [template("νυ", :c1, "υω", :c3_lenited, "ας̄"), template("nu", :tc1, "uo", :tc3_lenited, "aš")]
          end

          def _imperfect_third_singular_masculine
            [template("νυ", :c1, "ου", :c3), template("nu", :tc1, "ū", :tc3)]
          end

          def _imperfect_third_singular_feminine
            [template("νυ", :c1, "ου", :c3, "ω"), template("nu", :tc1, "ū", :tc3, "ā")]
          end

          def _imperfect_first_plural
            [template("νυ", :c1, "υω", :c3_lenited, "αν"), template("nu", :tc1, "uo", :tc3_lenited, "an")]
          end

          def _imperfect_second_plural_masculine
            [template("νυ", :c1, "υω", :c3_lenited, "τυν"), template("nu", :tc1, "uo", :tc3_lenited, "tun")]
          end

          def _imperfect_second_plural_feminine
            [template("νυ", :c1, "υω", :c3_lenited, "σ̄ιν"), template("nu", :tc1, "uo", :tc3_lenited, "šin")]
          end

          def _imperfect_third_plural
            [template("νυ", :c1, "ου", :c3, "ου"), template("nu", :tc1, "ū", :tc3, "ū")]
          end

          def _imperative_feminine_singular
            if root.initial_aspiratable?
              [template("να", :c1_geminated_or_aspirated, "ω", :c3, "ει"), template("nə", :tc1_geminated_or_aspirated, "ā", :tc3, "ī")]
            else
              [template("νι", :c1_geminated_or_aspirated, "ω", :c3, "ει"), template("ni", :tc1_geminated_or_aspirated, "ā", :tc3, "ī")]
            end
          end

          def _imperative_plural
            if root.initial_aspiratable?
              [template("να", :c1_geminated_or_aspirated, "ω", :c3, "ου"), template("nə", :tc1_geminated_or_aspirated, "ā", :tc3, "ū")]
            else
              [template("νι", :c1_geminated_or_aspirated, "ω", :c3, "ου"), template("ni", :tc1_geminated_or_aspirated, "ā", :tc3, "ū")]
            end
          end

          def _passive_participle
            if root.initial_aspiratable?
              [template("να", :c1_geminated_or_aspirated, "ι", :c3), template("nə", :tc1_geminated_or_aspirated, "i", :tc3)]
            else
              [template("να", :c1_geminated_or_aspirated, "ι", :c3), template("na", :tc1_geminated_or_aspirated, "i", :tc3)]
            end
          end

          private

          def preterite_stem(lenition: false)
            prefix = root.initial_aspiratable? ? "να" : "νυ"
            c3 = lenition ? :c3_lenited : :c3

            template(prefix, :c1_geminated_or_aspirated, "ω", c3)
          end

          def preterite_stem_transliterated(lenition: false)
            prefix = root.initial_aspiratable? ? "nə" : "nu"
            c3 = lenition ? :tc3_lenited : :tc3

            template(prefix, :tc1_geminated_or_aspirated, "ā", c3)
          end
        end
      end
    end
  end
end
