module Morphology
  module Alashian
    module Verbs
      module Nistuktab
        module Regular
          def conjugation
            "Passive Scale VI Verb"
          end

          def subtype
            "Regular"
          end

          def _present_first_singular
            ["ω" + stem, "'ā" + stem_transliterated]
          end

          def _present_second_singular_masculine
            ["τω" + stem, "tā" + stem_transliterated]
          end

          def _present_second_singular_feminine
            ["τω" + stem(long_vowel: false) + "ει", "tā" + stem_transliterated(long_vowel: false) + "ī"]
          end

          def _present_third_singular_masculine
            ["ιω" + stem, "yā" + stem_transliterated]
          end

          def _present_third_singular_feminine
            ["ιω" + stem(long_vowel: false) + "ει", "yā" + stem_transliterated(long_vowel: false) + "ī"]
          end

          def _present_first_plural
            ["νω" + stem(long_vowel: false) + "ου", "nā" + stem_transliterated(long_vowel: false) + "ū"]
          end

          def _present_second_plural
            ["τω" + stem(long_vowel: false) + "ου", "tā" + stem_transliterated(long_vowel: false) + "ū"]
          end

          def _present_third_plural
            ["ιω" + stem(long_vowel: false) + "ου", "yā" + stem_transliterated(long_vowel: false) + "ū"]
          end

          def _preterite_first_singular
            ["νι" + stem + "ετ", "ni" + stem_transliterated + "et"]
          end

          def _preterite_second_singular_masculine
            ["νι" + stem(lenition: true) + "τα", "ni" + stem_transliterated(lenition: true) + "ta"]
          end

          def _preterite_second_singular_feminine
            ["νι" + stem(lenition: true) + "σ̄ε", "ni" + stem_transliterated(lenition: true) + "še"]
          end

          def _preterite_third_singular_masculine
            ["νι" + stem, "ni" + stem_transliterated]
          end

          def _preterite_third_singular_feminine
            ["νι" + stem + "ω", "ni" + stem_transliterated + "ā"]
          end

          def _preterite_first_plural
            ["νι" + stem + "νω", "ni" + stem_transliterated + "nā"]
          end

          def _preterite_second_plural_masculine
            ["νι" + stem(lenition: true) + "τυν", "ni" + stem_transliterated(lenition: true) + "tun"]
          end

          def _preterite_second_plural_feminine
            ["νι" + stem(lenition: true) + "σ̄ιν", "ni" + stem_transliterated(lenition: true) + "šin"]
          end

          def _preterite_third_plural
            ["νι" + stem + "ου", "ni" + stem_transliterated + "ū"]
          end

          def _imperfect_first_singular
            ["νι" + imperfect_stem(lenition: true), "ni" + imperfect_stem_transliterated(lenition: true)]
          end

          def _imperfect_second_singular_masculine
            ["νι" + imperfect_stem(lenition: true) + "ατ", "ni" + imperfect_stem_transliterated(lenition: true) + "at"]
          end

          def _imperfect_second_singular_feminine
            ["νι" + imperfect_stem(lenition: true) + "ας̄", "ni" + imperfect_stem_transliterated(lenition: true) + "aš"]
          end

          def _imperfect_third_singular_masculine
            ["νι" + imperfect_stem, "ni" + imperfect_stem_transliterated]
          end

          def _imperfect_third_singular_feminine
            ["νι" + imperfect_stem + "ω", "ni" + imperfect_stem_transliterated + "ā"]
          end

          def _imperfect_first_plural
            ["νι" + imperfect_stem(lenition: true) + "αν", "ni" + imperfect_stem_transliterated(lenition: true) + "an"]
          end

          def _imperfect_second_plural_masculine
            ["νι" + imperfect_stem(lenition: true) + "τυν", "ni" + imperfect_stem_transliterated(lenition: true) + "tun"]
          end

          def _imperfect_second_plural_feminine
            ["νι" + imperfect_stem(lenition: true) + "σ̄ιν", "ni" + imperfect_stem_transliterated(lenition: true) + "šin"]
          end

          def _imperfect_third_plural
            ["νι" + imperfect_stem + "ου", "ni" + imperfect_stem_transliterated + "ū"]
          end

          def _pf_subjunctive_first_singular
            ["в̄ω" + stem(long_vowel: false), "vā" + stem_transliterated(long_vowel: false)]
          end

          def _pf_subjunctive_first_plural
            ["в̄ανω" + stem(long_vowel: false), "vanā" + stem_transliterated(long_vowel: false)]
          end

          def _pf_subjunctive_second
            ["в̄ατω" + stem(long_vowel: false), "vatā" + stem_transliterated(long_vowel: false)]
          end

          def _pf_subjunctive_third
            ["в̄ιω" + stem(long_vowel: false), "vyā" + stem_transliterated(long_vowel: false)]
          end

          def _impf_subjunctive_first_singular
            ["ω" + stem + "α", "'ā" + stem_transliterated + "a"]
          end

          def _impf_subjunctive_second_singular_masculine
            ["τω" + stem + "α", "tā" + stem_transliterated + "a"]
          end

          def _impf_subjunctive_second_singular_feminine
            ["τω" + stem + "ι'α", "tā" + stem_transliterated + "iya"]
          end

          def _impf_subjunctive_third_singular_masculine
            ["ιω" + stem + "α", "yā" + stem_transliterated + "a"]
          end

          def _impf_subjunctive_third_singular_feminine
            ["ιω" + stem + "ι'α", "yā" + stem_transliterated + "iya"]
          end

          def _impf_subjunctive_first_plural
            ["νω" + stem + "υ'α", "nā" + stem_transliterated + "uwa"]
          end

          def _impf_subjunctive_second_plural
            ["τω" + stem + "υ'α", "tā" + stem_transliterated + "uwa"]
          end

          def _impf_subjunctive_third_plural
            ["ιω" + stem + "υ'α", "yā" + stem_transliterated + "uwa"]
          end

          def _volitive_first_singular
            _present_first_singular.zip(["αννα", "anna"]).map(&:join)
          end

          def _volitive_second_singular_masculine
            _present_second_singular_masculine.zip(["αννα", "anna"]).map(&:join)
          end

          def _volitive_second_singular_feminine
            _present_second_singular_feminine.zip(["να", "na"]).map(&:join)
          end

          def _volitive_third_singular_masculine
            _present_third_singular_masculine.zip(["αννα", "anna"]).map(&:join)
          end

          def _volitive_third_singular_feminine
            _present_third_singular_feminine.zip(["να", "na"]).map(&:join)
          end

          def _volitive_first_plural
            _present_first_plural.zip(["να", "na"]).map(&:join)
          end

          def _volitive_second_plural
            _present_second_plural.zip(["να", "na"]).map(&:join)
          end

          def _volitive_third_plural
            _present_third_plural.zip(["να", "na"]).map(&:join)
          end

          def _infinitive
            ["μω" + stem, "ma" + stem_transliterated]
          end

          def _passive_participle
            if root.medial_plosive?
              [template("μουστα", :c1_lenited, :c2, "α", :c3), template("mūsta", :tc1_lenited, :tc2, "a", :tc3)]
            else
              [template("μουστα", :c1, :c2, "α", :c3), template("mūsta", :tc1, :tc2, "a", :tc3)]
            end
          end

          private

          def stem(lenition: false, long_vowel: true)
            v = long_vowel ? "ω" : "α"
            c3 = lenition ? :c3_lenited : :c3
            if root.medial_plosive?
              template("στυ", :c1_lenited, :c2, v, c3)
            else
              template("στυ", :c1, :c2, v, c3)
            end
          end

          def stem_transliterated(lenition: false, long_vowel: true)
            tv = long_vowel ? "ā" : "a"
            tc3 = lenition ? :tc3_lenited : :tc3
            if root.medial_plosive?
              template("stu", :tc1_lenited, :tc2, tv, tc3)
            else
              template("stu", :tc1, :tc2, tv, tc3)
            end
          end

          def imperfect_stem(lenition: false)
            c3 = lenition ? :c3_lenited : :c3
            if root.medial_plosive?
              template("στυ", :c1_lenited, :c2, "υω", c3)
            else
              template("στυ", :c1, :c2, "υω", c3)
            end
          end

          def imperfect_stem_transliterated(lenition: false)
            tc3 = lenition ? :tc3_lenited : :tc3
            if root.medial_plosive?
              template("stu", :tc1_lenited, :tc2, "uo", tc3)
            else
              template("stu", :tc1, :tc2, "uo", tc3)
            end
          end
        end
      end
    end
  end
end
