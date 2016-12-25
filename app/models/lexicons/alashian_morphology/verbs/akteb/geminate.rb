require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Akteb
        module Geminate
          include Akteb::Regular

          def subtype
            "Geminated Root"
          end

          def _present_second_singular_feminine
            ["τω" + biconsonantal_stem + "ει", "tā" + biconsonantal_stem_transliterated + "ī"]
          end

          def _present_third_singular_feminine
            ["ιω" + biconsonantal_stem + "ει", "yā" + biconsonantal_stem_transliterated + "ī"]
          end

          def _present_first_plural
            ["νω" + biconsonantal_stem + "ου", "nā" + biconsonantal_stem_transliterated + "ū"]
          end

          def _present_second_plural
            ["τω" + biconsonantal_stem + "ου", "tā" + biconsonantal_stem_transliterated + "ū"]
          end

          def _present_third_plural
            ["ιω" + biconsonantal_stem + "ου", "yā" + biconsonantal_stem_transliterated + "ū"]
          end

          def _preterite_first_singular
            ["α" + biconsonantal_stem + "ετ", "'a" + biconsonantal_stem_transliterated + "et"]
          end

          def _preterite_third_singular_feminine
            ["α" + biconsonantal_stem + "ω", "'a" + biconsonantal_stem_transliterated + "ā"]
          end

          def _preterite_third_plural
            ["α" + biconsonantal_stem + "ου", "'a" + biconsonantal_stem_transliterated + "ū"]
          end

          def _imperfect_second_singular_masculine
            ["α" + biconsonantal_imperfect_stem(lenition: true) + "ετ", "'a" + biconsonantal_imperfect_stem_transliterated(lenition: true) + "et"]
          end

          def _imperfect_second_singular_feminine
            ["α" + biconsonantal_imperfect_stem(lenition: true) + "ες̄", "'a" + biconsonantal_imperfect_stem_transliterated(lenition: true) + "eš"]
          end

          def _imperfect_third_singular_feminine
            ["α" + biconsonantal_imperfect_stem + "ω", "'a" + biconsonantal_imperfect_stem_transliterated + "ā"]
          end

          def _imperfect_first_plural
            ["α" + biconsonantal_imperfect_stem(lenition: true) + "εν", "'a" + biconsonantal_imperfect_stem_transliterated(lenition: true) + "en"]
          end

          def _imperfect_third_plural
            ["α" + biconsonantal_imperfect_stem + "ου", "'a" + biconsonantal_imperfect_stem_transliterated + "ū"]
          end

          def _impf_subjunctive_second_singular_feminine
            ["τω" + biconsonantal_stem + "ια", "tā" + biconsonantal_stem_transliterated + "iya"]
          end

          def _impf_subjunctive_third_singular_feminine
            ["ιω" + biconsonantal_stem + "ια", "yā" + biconsonantal_stem_transliterated + "iya"]
          end

          def _impf_subjunctive_first_plural
            ["νω" + biconsonantal_stem + "υ'α", "nā" + biconsonantal_stem_transliterated + "uwa"]
          end

          def _impf_subjunctive_second_plural
            ["τω" + biconsonantal_stem + "υ'α", "tā" + biconsonantal_stem_transliterated + "uwa"]
          end

          def _impf_subjunctive_third_plural
            ["ιω" + biconsonantal_stem + "υ'α", "yā" + biconsonantal_stem_transliterated + "uwa"]
          end

          def _imperative_feminine_singular
            ["α" + biconsonantal_stem + "ει", "'a" + biconsonantal_stem_transliterated + "ī"]
          end

          def _imperative_plural
            ["α" + biconsonantal_stem + "ου", "'a" + biconsonantal_stem_transliterated + "ū"]
          end

          private

          def biconsonantal_stem
            template(:c1, "η", :c2_geminated_or_aspirated)
          end

          def biconsonantal_stem_transliterated
            template(:tc1, "ē", :tc2_geminated_or_aspirated)
          end

          def biconsonantal_imperfect_stem(lenition: false)
            c2 = lenition ? root.c2_lenited * 2 : root.c2_geminated_or_aspirated

            template(:c1, "ιη", c2)
          end

          def biconsonantal_imperfect_stem_transliterated(lenition: false)
            c2 = lenition ? root.tc2_lenited * 2 : root.tc2_geminated_or_aspirated

            template(:tc1, "ie", c2)
          end
        end
      end
    end
  end
end
