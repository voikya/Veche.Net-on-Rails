require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Ennuktab
        module Geminate
          include Ennuktab::Regular

          def subtype
            "Geminated Root"
          end

          def _present_second_singular_feminine
            ["τι" + biconsonantal_stem + "ει", "ti" + biconsonantal_stem_transliterated + "ī"]
          end

          def _present_third_singular_feminine
            ["ι" + biconsonantal_stem + "ει", "yi" + biconsonantal_stem_transliterated + "ī"]
          end

          def _present_first_plural
            ["νι" + biconsonantal_stem + "ου", "ni" + biconsonantal_stem_transliterated + "ū"]
          end

          def _present_second_plural
            ["τι" + biconsonantal_stem + "ου", "ti" + biconsonantal_stem_transliterated + "ū"]
          end

          def _present_third_plural
            ["ι" + biconsonantal_stem + "ου", "yi" + biconsonantal_stem_transliterated + "ū"]
          end

          def _preterite_first_singular
            ["ε" + biconsonantal_stem + "ετ", "'e" + biconsonantal_stem_transliterated + "et"]
          end

          def _preterite_third_singular_feminine
            ["ε" + biconsonantal_stem + "ω", "'e" + biconsonantal_stem_transliterated + "ā"]
          end

          def _preterite_third_plural
            ["ε" + biconsonantal_stem + "ου", "'e" + biconsonantal_stem_transliterated + "ū"]
          end

          def _imperfect_second_singular_masculine
            ["ε" + biconsonantal_imperfect_stem(lenition: true) + "ατ", "'e" + biconsonantal_imperfect_stem_transliterated(lenition: true) + "at"]
          end

          def _imperfect_second_singular_feminine
            ["ε" + biconsonantal_imperfect_stem(lenition: true) + "ας̄", "'e" + biconsonantal_imperfect_stem_transliterated(lenition: true) + "aš"]
          end

          def _imperfect_third_singular_feminine
            ["ε" + biconsonantal_imperfect_stem + "ω", "'e" + biconsonantal_imperfect_stem_transliterated + "ā"]
          end

          def _imperfect_first_plural
            ["ε" + biconsonantal_imperfect_stem(lenition: true) + "αν", "'e" + biconsonantal_imperfect_stem_transliterated(lenition: true) + "an"]
          end

          def _imperfect_third_plural
            ["ε" + biconsonantal_imperfect_stem + "ου", "'e" + biconsonantal_imperfect_stem_transliterated + "ū"]
          end

          def _impf_subjunctive_second_singular_feminine
            ["τι" + biconsonantal_stem + "ια", "ti" + biconsonantal_stem_transliterated + "iya"]
          end

          def _impf_subjunctive_third_singular_feminine
            ["ι" + biconsonantal_stem + "ια", "yi" + biconsonantal_stem_transliterated + "iya"]
          end

          def _impf_subjunctive_first_plural
            ["νι" + biconsonantal_stem + "υ'α", "ni" + biconsonantal_stem_transliterated + "uwa"]
          end

          def _impf_subjunctive_second_plural
            ["τι" + biconsonantal_stem + "υ'α", "ti" + biconsonantal_stem_transliterated + "uwa"]
          end

          def _impf_subjunctive_third_plural
            ["ι" + biconsonantal_stem + "υ'α", "yi" + biconsonantal_stem_transliterated + "uwa"]
          end

          private

          def biconsonantal_stem
            template("ννυ", :c1, "ω", :c2_geminated_or_aspirated)
          end

          def biconsonantal_stem_transliterated
            template("nnu", :tc1, "ā", :tc2_geminated_or_aspirated)
          end

          def biconsonantal_imperfect_stem(lenition: false)
            c2 = lenition ? root.c2_lenited * 2 : root.c2_geminated_or_aspirated

            template("ννυ", :c1, "υω", c2)
          end

          def biconsonantal_imperfect_stem_transliterated(lenition: false)
            c2 = lenition ? root.tc2_lenited * 2 : root.tc2_geminated_or_aspirated

            template("nnu", :tc1, "uo", c2)
          end
        end
      end
    end
  end
end
