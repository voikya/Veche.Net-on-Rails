module Morphology
  module Alashian
    module Verbs
      module Ennuktab
        module Regular
          def conjugation
            "Passive Scale III Verb"
          end

          def subtype
            "Regular"
          end

          def _present_first_singular
            ["α" + stem, "'a" + stem_transliterated]
          end

          def _present_second_singular_masculine
            ["τι" + stem, "ti" + stem_transliterated]
          end

          def _present_second_singular_feminine
            ["τι" + stem(long_vowel: false) + "ει", "ti" + stem_transliterated(long_vowel: false) + "ī"]
          end

          def _present_third_singular_masculine
            ["ι" + stem, "yi" + stem_transliterated]
          end

          def _present_third_singular_feminine
            ["ι" + stem(long_vowel: false) + "ει", "yi" + stem_transliterated(long_vowel: false) + "ī"]
          end

          def _present_first_plural
            ["νι" + stem(long_vowel: false) + "ου", "ni" + stem_transliterated(long_vowel: false) + "ū"]
          end

          def _present_second_plural
            ["τι" + stem(long_vowel: false) + "ου", "ti" + stem_transliterated(long_vowel: false) + "ū"]
          end

          def _present_third_plural
            ["ι" + stem(long_vowel: false) + "ου", "yi" + stem_transliterated(long_vowel: false) + "ū"]
          end

          def _preterite_first_singular
            ["ε" + stem + "ετ", "'e" + stem_transliterated + "et"]
          end

          def _preterite_second_singular_masculine
            ["ε" + stem(lenition: true) + "τα", "'e" + stem_transliterated(lenition: true) + "ta"]
          end

          def _preterite_second_singular_feminine
            ["ε" + stem(lenition: true) + "σ̄ε", "'e" + stem_transliterated(lenition: true) + "še"]
          end

          def _preterite_third_singular_masculine
            ["ε" + stem, "'e" + stem_transliterated]
          end

          def _preterite_third_singular_feminine
            ["ε" + stem + "ω", "'e" + stem_transliterated + "ā"]
          end

          def _preterite_first_plural
            ["ε" + stem + "νω", "'e" + stem_transliterated + "nā"]
          end

          def _preterite_second_plural_masculine
            ["ε" + stem(lenition: true) + "τυν", "'e" + stem_transliterated(lenition: true) + "tun"]
          end

          def _preterite_second_plural_feminine
            ["ε" + stem(lenition: true) + "σ̄ιν", "'e" + stem_transliterated(lenition: true) + "šin"]
          end

          def _preterite_third_plural
            ["ε" + stem + "ου", "'e" + stem_transliterated + "ū"]
          end

          def _imperfect_first_singular
            ["ε" + imperfect_stem(lenition: true), "'e" + imperfect_stem_transliterated(lenition: true)]
          end

          def _imperfect_second_singular_masculine
            ["ε" + imperfect_stem(lenition: true) + "ατ", "'e" + imperfect_stem_transliterated(lenition: true) + "at"]
          end

          def _imperfect_second_singular_feminine
            ["ε" + imperfect_stem(lenition: true) + "ας̄", "'e" + imperfect_stem_transliterated(lenition: true) + "aš"]
          end

          def _imperfect_third_singular_masculine
            ["ε" + imperfect_stem, "'e" + imperfect_stem_transliterated]
          end

          def _imperfect_third_singular_feminine
            ["ε" + imperfect_stem + "ω", "'e" + imperfect_stem_transliterated + "ā"]
          end

          def _imperfect_first_plural
            ["ε" + imperfect_stem(lenition: true) + "αν", "'e" + imperfect_stem_transliterated(lenition: true) + "an"]
          end

          def _imperfect_second_plural_masculine
            ["ε" + imperfect_stem(lenition: true) + "τυν", "'e" + imperfect_stem_transliterated(lenition: true) + "tun"]
          end

          def _imperfect_second_plural_feminine
            ["ε" + imperfect_stem(lenition: true) + "σ̄ιν", "'e" + imperfect_stem_transliterated(lenition: true) + "šin"]
          end

          def _imperfect_third_plural
            ["ε" + imperfect_stem + "ου", "'e" + imperfect_stem_transliterated + "ū"]
          end

          def _pf_subjunctive_first_singular
            ["в̄α" + stem(long_vowel: false), "va" + stem_transliterated(long_vowel: false)]
          end

          def _pf_subjunctive_first_plural
            ["в̄ανι" + stem(long_vowel: false), "vani" + stem_transliterated(long_vowel: false)]
          end

          def _pf_subjunctive_second
            ["в̄ατι" + stem(long_vowel: false), "vati" + stem_transliterated(long_vowel: false)]
          end

          def _pf_subjunctive_third
            ["в̄η" + stem(long_vowel: false), "vē" + stem_transliterated(long_vowel: false)]
          end

          def _impf_subjunctive_first_singular
            ["α" + stem + "α", "'a" + stem_transliterated + "a"]
          end

          def _impf_subjunctive_second_singular_masculine
            ["τι" + stem + "α", "ti" + stem_transliterated + "a"]
          end

          def _impf_subjunctive_second_singular_feminine
            ["τι" + stem + "ια", "ti" + stem_transliterated + "iya"]
          end

          def _impf_subjunctive_third_singular_masculine
            ["ι" + stem + "α", "yi" + stem_transliterated + "a"]
          end

          def _impf_subjunctive_third_singular_feminine
            ["ι" + stem + "ια", "yi" + stem_transliterated + "iya"]
          end

          def _impf_subjunctive_first_plural
            ["νι" + stem + "υ'α", "ni" + stem_transliterated + "uwa"]
          end

          def _impf_subjunctive_second_plural
            ["τι" + stem + "υ'α", "ti" + stem_transliterated + "uwa"]
          end

          def _impf_subjunctive_third_plural
            ["ι" + stem + "υ'α", "yi" + stem_transliterated + "uwa"]
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
            ["μα" + stem, "ma" + stem_transliterated]
          end

          def _passive_participle
            if root.medial_plosive?
              [template("μυννα", :c1_lenited, :c2, "α", :c3), template("munna", :tc1_lenited, :tc2, "a", :tc3)]
            else
              [template("μυννα", :c1, :c2, "α", :c3), template("munna", :tc1, :tc2, "a", :tc3)]
            end
          end

          private

          def stem(long_vowel: true, lenition: false)
            c1 = root.medial_plosive? ? :c1_lenited : :c1
            v = long_vowel ? "ω" : "α"
            c3 = lenition ? :c3_lenited : :c3

            template("ννυ", c1, :c2, v, c3)
          end

          def stem_transliterated(long_vowel: true, lenition: false)
            c1 = root.medial_plosive? ? :tc1_lenited : :tc1
            v = long_vowel ? "ā" : "a"
            c3 = lenition ? :tc3_lenited : :tc3

            template("nnu", c1, :tc2, v, c3)
          end

          def imperfect_stem(lenition: false)
            c1 = root.medial_plosive? ? :c1_lenited : :c1
            c3 = lenition ? :c3_lenited : :c3

            template("ννυ", c1, :c2, "υω", c3)
          end

          def imperfect_stem_transliterated(lenition: false)
            c1 = root.medial_plosive? ? :tc1_lenited : :tc1
            c3 = lenition ? :tc3_lenited : :tc3

            template("nnu", c1, :tc2, "uo", c3)
          end
        end
      end
    end
  end
end
