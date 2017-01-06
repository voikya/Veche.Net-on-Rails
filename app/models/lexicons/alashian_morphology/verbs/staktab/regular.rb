module Morphology
  module Alashian
    module Verbs
      module Staktab
        module Regular
          def conjugation
            "Active Scale VI Verb"
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
            ["τι" + stem + "ει", "ti" + stem_transliterated + "ī"]
          end

          def _present_third_singular_masculine
            ["ι" + stem, "yi" + stem_transliterated]
          end

          def _present_third_singular_feminine
            ["ι" + stem + "ει", "yi" + stem_transliterated + "ī"]
          end

          def _present_first_plural
            ["νι" + stem + "ου", "ni" + stem_transliterated + "ū"]
          end

          def _present_second_plural
            ["τι" + stem + "ου", "ti" + stem_transliterated + "ū"]
          end

          def _present_third_plural
            ["ι" + stem + "ου", "yi" + stem_transliterated + "ū"]
          end

          def _preterite_first_singular
            [stem + "ετ", stem_transliterated + "et"]
          end

          def _preterite_second_singular_masculine
            [stem(lenition: true) + "τα", stem_transliterated(lenition: true) + "ta"]
          end

          def _preterite_second_singular_feminine
            [stem(lenition: true) + "σ̄ε", stem_transliterated(lenition: true) + "še"]
          end

          def _preterite_third_singular_masculine
            [stem, stem_transliterated]
          end

          def _preterite_third_singular_feminine
            [stem + "ω", stem_transliterated + "ā"]
          end

          def _preterite_first_plural
            [stem + "νω", stem_transliterated + "nā"]
          end

          def _preterite_second_plural_masculine
            [stem(lenition: true) + "τυν", stem_transliterated(lenition: true) + "tun"]
          end

          def _preterite_second_plural_feminine
            [stem(lenition: true) + "σ̄ιν", stem_transliterated(lenition: true) + "šin"]
          end

          def _preterite_third_plural
            [stem + "ου", stem_transliterated + "ū"]
          end

          def _imperfect_first_singular
            [imperfect_stem(lenition: true), imperfect_stem_transliterated(lenition: true)]
          end

          def _imperfect_second_singular_masculine
            [imperfect_stem(lenition: true) + "ετ", imperfect_stem_transliterated(lenition: true) + "et"]
          end

          def _imperfect_second_singular_feminine
            [imperfect_stem(lenition: true) + "ες̄", imperfect_stem_transliterated(lenition: true) + "eš"]
          end

          def _imperfect_third_singular_masculine
            [imperfect_stem, imperfect_stem_transliterated]
          end

          def _imperfect_third_singular_feminine
            [imperfect_stem + "ω", imperfect_stem_transliterated + "ā"]
          end

          def _imperfect_first_plural
            [imperfect_stem(lenition: true) + "εν", imperfect_stem_transliterated(lenition: true) + "en"]
          end

          def _imperfect_second_plural_masculine
            [imperfect_stem(lenition: true) + "τυν", imperfect_stem_transliterated(lenition: true) + "tun"]
          end

          def _imperfect_second_plural_feminine
            [imperfect_stem(lenition: true) + "σ̄ιν", imperfect_stem_transliterated(lenition: true) + "šin"]
          end

          def _imperfect_third_plural
            [imperfect_stem + "ου", imperfect_stem_transliterated + "ū"]
          end

          def _pf_subjunctive_first_singular
            ["в̄ω" + stem, "vā" + stem_transliterated]
          end

          def _pf_subjunctive_first_plural
            ["в̄ενι" + stem, "veni" + stem_transliterated]
          end

          def _pf_subjunctive_second
            ["в̄ετι" + stem, "veti" + stem_transliterated]
          end

          def _pf_subjunctive_third
            ["в̄η" + stem, "vē" + stem_transliterated]
          end

          def _impf_subjunctive_first_singular
            ["α" + stem + "α", "'a" + stem_transliterated + "a"]
          end

          def _impf_subjunctive_second_singular_masculine
            ["τι" + stem + "α", "ti" + stem_transliterated + "a"]
          end

          def _impf_subjunctive_second_singular_feminine
            ["τι" + stem + "ι'α", "ti" + stem_transliterated + "iya"]
          end

          def _impf_subjunctive_third_singular_masculine
            ["ι" + stem + "α", "yi" + stem_transliterated + "a"]
          end

          def _impf_subjunctive_third_singular_feminine
            ["ι" + stem + "ι'α", "yi" + stem_transliterated + "iya"]
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

          def _imperative_masculine_singular
            ["ε" + stem, "'e" + stem_transliterated]
          end

          def _imperative_feminine_singular
            ["ε" + stem + "ει", "'e" + stem_transliterated + "ī"]
          end

          def _imperative_plural
            ["ε" + stem + "ου", "'e" + stem_transliterated + "ū"]
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
            ["μα" + stem, "ma" + stem_transliterated]
          end

          def _active_participle
            if root.medial_plosive?
              [template("μυστα", :c1_lenited, :c2, "ι", :c3), template("musta", :tc1_lenited, :tc2, "i", :tc3)]
            else
              [template("μυστα", :c1, :c2, "ι", :c3), template("musta", :tc1, :tc2, "i", :tc3)]
            end
          end

          private

          def stem(lenition: false)
            c3 = lenition ? :c3_lenited : :c3
            if root.medial_plosive?
              template("στα", :c1_lenited, :c2, "α", c3)
            else
              template("στα", :c1, :c2, "α", c3)
            end
          end

          def stem_transliterated(lenition: false)
            tc3 = lenition ? :tc3_lenited : :tc3
            if root.medial_plosive?
              template("sta", :tc1_lenited, :tc2, "a", tc3)
            else
              template("sta", :tc1, :tc2, "a", tc3)
            end
          end

          def imperfect_stem(lenition: false)
            c3 = lenition ? :c3_lenited : :c3
            if root.medial_plosive?
              template("στα", :c1_lenited, :c2, "ιη", c3)
            else
              template("στα", :c1, :c2, "ιη", c3)
            end
          end

          def imperfect_stem_transliterated(lenition: false)
            tc3 = lenition ? :tc3_lenited : :tc3
            if root.medial_plosive?
              template("sta", :tc1_lenited, :tc2, "ie", tc3)
            else
              template("sta", :tc1, :tc2, "ie", tc3)
            end
          end
        end
      end
    end
  end
end
