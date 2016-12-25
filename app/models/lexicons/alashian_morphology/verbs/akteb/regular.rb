module Morphology
  module Alashian
    module Verbs
      module Akteb
        module Regular
          def conjugation
            "Active Scale III Verb"
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
            ["α" + stem + "ετ", "'a" + stem_transliterated + "et"]
          end

          def _preterite_second_singular_masculine
            ["α" + stem(lenition: true) + "τα", "'a" + stem_transliterated(lenition: true) + "ta"]
          end

          def _preterite_second_singular_feminine
            ["α" + stem(lenition: true) + "σ̄ε", "'a" + stem_transliterated(lenition: true) + "še"]
          end

          def _preterite_third_singular_masculine
            ["α" + stem, "'a" + stem_transliterated]
          end

          def _preterite_third_singular_feminine
            ["α" + stem + "ω", "'a" + stem_transliterated + "ā"]
          end

          def _preterite_first_plural
            ["α" + stem + "νω", "'a" + stem_transliterated + "nā"]
          end

          def _preterite_second_plural_masculine
            ["α" + stem(lenition: true) + "τυν", "'a" + stem_transliterated(lenition: true) + "tun"]
          end

          def _preterite_second_plural_feminine
            ["α" + stem(lenition: true) + "σ̄ιν", "'a" + stem_transliterated(lenition: true) + "šin"]
          end

          def _preterite_third_plural
            ["α" + stem + "ου", "'a" + stem_transliterated + "ū"]
          end

          def _imperfect_first_singular
            ["α" + imperfect_stem(lenition: true), "'a" + imperfect_stem_transliterated(lenition: true)]
          end

          def _imperfect_second_singular_masculine
            ["α" + imperfect_stem(lenition: true) + "ετ", "'a" + imperfect_stem_transliterated(lenition: true) + "et"]
          end

          def _imperfect_second_singular_feminine
            ["α" + imperfect_stem(lenition: true) + "ες̄", "'a" + imperfect_stem_transliterated(lenition: true) + "eš"]
          end

          def _imperfect_third_singular_masculine
            ["α" + imperfect_stem, "'a" + imperfect_stem_transliterated]
          end

          def _imperfect_third_singular_feminine
            ["α" + imperfect_stem + "ω", "'a" + imperfect_stem_transliterated + "ā"]
          end

          def _imperfect_first_plural
            ["α" + imperfect_stem(lenition: true) + "εν", "'a" + imperfect_stem_transliterated(lenition: true) + "en"]
          end

          def _imperfect_second_plural_masculine
            ["α" + imperfect_stem(lenition: true) + "τυν", "'a" + imperfect_stem_transliterated(lenition: true) + "tun"]
          end

          def _imperfect_second_plural_feminine
            ["α" + imperfect_stem(lenition: true) + "σ̄ιν", "'a" + imperfect_stem_transliterated(lenition: true) + "šin"]
          end

          def _imperfect_third_plural
            ["α" + imperfect_stem + "ου", "'a" + imperfect_stem_transliterated + "ū"]
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
            ["τω" + stem + "ια", "tā" + stem_transliterated + "iya"]
          end

          def _impf_subjunctive_third_singular_masculine
            ["ιω" + stem + "α", "yā" + stem_transliterated + "a"]
          end

          def _impf_subjunctive_third_singular_feminine
            ["ιω" + stem + "ια", "yā" + stem_transliterated + "iya"]
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

          def _imperative_masculine_singular
            if s_imperative?
              [template("ισ", :c1, "ε", :c2, "η", :c3), template("'is", :tc1, "e", :tc2, "ē", :tc3)]
            else
              ["α" + stem, "'a" + stem_transliterated]
            end
          end

          def _imperative_feminine_singular
            if s_imperative?
              [template("ισ", :c1, "ε", :c2, :c3, "ει"), template("'is", :tc1, "e", :tc2, :tc3, "ī")]
            else
              ["α" + stem(long_vowel: false) + "ει", "'a" + stem_transliterated(long_vowel: false) + "ī"]
            end
          end

          def _imperative_plural
            if s_imperative?
              [template("ισ", :c1, "ε", :c2, :c3, "ου"), template("'is", :tc1, "e", :tc2, :tc3, "ū")]
            else
              ["α" + stem(long_vowel: false) + "ου", "'a" + stem_transliterated(long_vowel: false) + "ū"]
            end
          end

          def _precative_masculine_singular
            _imperative_masculine_singular.zip(["να", "na"]).map(&:join)
          end

          def _precative_feminine_singular
            _imperative_feminine_singular.zip(["να", "na"]).map(&:join)
          end

          def _precative_plural
            _imperative_plural.zip(["να", "na"]).map(&:join)
          end

          def _infinitive
            ["μω" + stem, "mā" + stem_transliterated]
          end

          def _active_participle
            if root.medial_plosive?
              [template("μω", :c1_lenited, :c2, "ι", :c3), template("mā", :tc1_lenited, :tc2, "i", :tc3)]
            else
              [template("μω", :c1, :c2, "ι", :c3), template("mā", :tc1, :tc2, "i", :tc3)]
            end
          end

          private

          def stem(long_vowel: true, lenition: false)
            c1 = root.medial_plosive? ? :c1_lenited : :c1
            v = long_vowel ? "η" : "ε"
            c3 = lenition ? :c3_lenited : :c3

            template(c1, :c2, v, c3)
          end

          def stem_transliterated(long_vowel: true, lenition: false)
            c1 = root.medial_plosive? ? :tc1_lenited : :tc1
            v = long_vowel ? "ē" : "e"
            c3 = lenition ? :tc3_lenited : :tc3

            template(c1, :tc2, v, c3)
          end

          def imperfect_stem(lenition: false)
            c1 = root.medial_plosive? ? :c1_lenited : :c1
            c3 = lenition ? :c3_lenited : :c3

            template(c1, :c2, "ιη", c3)
          end

          def imperfect_stem_transliterated(lenition: false)
            c1 = root.medial_plosive? ? :tc1_lenited : :tc1
            c3 = lenition ? :tc3_lenited : :tc3

            template(c1, :tc2, "ie", c3)
          end
        end
      end
    end
  end
end
