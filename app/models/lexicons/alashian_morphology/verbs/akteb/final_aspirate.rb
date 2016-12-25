require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Akteb
        module FinalAspirate
          include Akteb::Regular

          def subtype
            "C3 = PH/TH/KH/TSH/ČH"
          end

          def _present_first_singular
            ["ω" + stem(suffix: false), "'ā" + stem_transliterated(suffix: false)]
          end

          def _present_second_singular_masculine
            ["τω" + stem(suffix: false), "tā" + stem_transliterated(suffix: false)]
          end

          def _present_third_singular_masculine
            ["ιω" + stem(suffix: false), "yā" + stem_transliterated(suffix: false)]
          end

          def _preterite_second_singular_masculine
            ["α" + stem + "αττα", "'a" + stem_transliterated + "ətha"]
          end

          def _preterite_second_singular_feminine
            ["α" + stem + "ατζζε", "'a" + stem_transliterated + "əčhe"]
          end

          def _preterite_third_singular_masculine
            ["α" + stem(suffix: false), "'a" + stem_transliterated(suffix: false)]
          end

          def _preterite_first_plural
            ["α" + stem(suffix: false) + "νω", "'a" + stem_transliterated(suffix: false) + "nā"]
          end

          def _preterite_second_plural_masculine
            ["α" + stem + "αττυν", "'a" + stem_transliterated + "əthun"]
          end

          def _preterite_second_plural_feminine
            ["α" + stem + "ατζζιν", "'a" + stem_transliterated + "əčhin"]
          end

          def _imperfect_first_singular
            ["α" + imperfect_stem(suffix: false), "'a" + imperfect_stem_transliterated(suffix: false)]
          end

          def _imperfect_third_singular_masculine
            ["α" + imperfect_stem(suffix: false), "'a" + imperfect_stem_transliterated(suffix: false)]
          end

          def _imperfect_second_plural_masculine
            ["α" + imperfect_stem + "αττυν", "'a" + imperfect_stem_transliterated + "əthun"]
          end

          def _imperfect_second_plural_feminine
            ["α" + imperfect_stem + "ατζζιν", "'a" + imperfect_stem_transliterated + "əčhin"]
          end

          def _pf_subjunctive_first_singular
            ["в̄ω" + stem(long_vowel: false, suffix: false), "vā" + stem_transliterated(long_vowel: false, suffix: false)]
          end

          def _pf_subjunctive_first_plural
            ["в̄ανω" + stem(long_vowel: false, suffix: false), "vanā" + stem_transliterated(long_vowel: false, suffix: false)]
          end

          def _pf_subjunctive_second
            ["в̄ατω" + stem(long_vowel: false, suffix: false), "vatā" + stem_transliterated(long_vowel: false, suffix: false)]
          end

          def _pf_subjunctive_third
            ["в̄ιω" + stem(long_vowel: false, suffix: false), "vyā" + stem_transliterated(long_vowel: false, suffix: false)]
          end

          def _volitive_first_singular
            ["ω" + stem + "αννα", "'ā" + stem_transliterated + "anna"]
          end

          def _volitive_second_singular_masculine
            ["τω" + stem + "αννα", "tā" + stem_transliterated + "anna"]
          end

          def _volitive_third_singular_masculine
            ["ιω" + stem + "αννα", "yā" + stem_transliterated + "anna"]
          end

          def _imperative_masculine_singular
            ["α" + stem(suffix: false), "'a" + stem_transliterated(suffix: false)]
          end

          def _infinitive
            ["μω" + stem(suffix: false), "mā" + stem_transliterated(suffix: false)]
          end

          def _active_participle
            if root.medial_plosive?
              [template("μω", :c1_lenited, :c2, "α", :c3), template("mā", :tc1_lenited, :tc2, "ə", :tc3)]
            else
              [template("μω", :c1, :c2, "α", :c3), template("mā", :tc1, :tc2, "ə", :tc3)]
            end
          end

          private

          def stem(long_vowel: true, lenition: nil, suffix: true)
            c1 = root.medial_plosive? ? :c1_lenited : :c1
            v = long_vowel ? "η" : "α"
            suf = suffix ? "" : nil

            template(c1, :c2, v, :c3, *suf)
          end

          def stem_transliterated(long_vowel: true, lenition: nil, suffix: true)
            c1 = root.medial_plosive? ? :tc1_lenited : :tc1
            v = long_vowel ? "ē" : "ə"
            suf = suffix ? "" : nil

            template(c1, :tc2, v, :tc3, *suf)
          end

          def imperfect_stem(lenition: nil, suffix: true)
            c1 = root.medial_plosive? ? :c1_lenited : :c1
            suf = suffix ? "" : nil

            template(c1, :c2, "ιη", :c3, *suf)
          end

          def imperfect_stem_transliterated(lenition: nil, suffix: true)
            c1 = root.medial_plosive? ? :tc1_lenited : :tc1
            suf = suffix ? "" : nil

            template(c1, :tc2, "ie", :tc3, *suf)
          end
        end
      end
    end
  end
end
