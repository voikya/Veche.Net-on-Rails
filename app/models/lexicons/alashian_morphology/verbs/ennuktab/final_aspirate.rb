require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Ennuktab
        module FinalAspirate
          include Ennuktab::Regular

          def subtype
            "C3 = PH/TH/KH/TSH/ČH"
          end

          def _present_first_singular
            ["α" + stem(suffix: false), "'a" + stem_transliterated(suffix: false)]
          end

          def _present_second_singular_masculine
            ["τι" + stem(suffix: false), "ti" + stem_transliterated(suffix: false)]
          end

          def _present_third_singular_masculine
            ["ι" + stem(suffix: false), "yi" + stem_transliterated(suffix: false)]
          end

          def _preterite_second_singular_masculine
            ["ε" + stem + "αττα", "'e" + stem_transliterated + "ətha"]
          end

          def _preterite_second_singular_feminine
            ["ε" + stem + "ατζζε", "'e" + stem_transliterated + "əčhe"]
          end

          def _preterite_third_singular_masculine
            ["ε" + stem(suffix: false), "'e" + stem_transliterated(suffix: false)]
          end

          def _preterite_first_plural
            ["ε" + stem(suffix: false) + "νω", "'e" + stem_transliterated(suffix: false) + "nā"]
          end

          def _preterite_second_plural_masculine
            ["ε" + stem + "αττυν", "'e" + stem_transliterated + "əthun"]
          end

          def _preterite_second_plural_feminine
            ["ε" + stem + "ατζζιν", "'e" + stem_transliterated + "əčhin"]
          end

          def _imperfect_first_singular
            ["ε" + imperfect_stem(suffix: false), "'e" + imperfect_stem_transliterated(suffix: false)]
          end

          def _imperfect_third_singular_masculine
            ["ε" + imperfect_stem(suffix: false), "'e" + imperfect_stem_transliterated(suffix: false)]
          end

          def _imperfect_second_plural_masculine
            ["ε" + imperfect_stem + "αττυν", "'e" + imperfect_stem_transliterated + "əthun"]
          end

          def _imperfect_second_plural_feminine
            ["ε" + imperfect_stem + "ατζζιν", "'e" + imperfect_stem_transliterated + "əčhin"]
          end

          def _pf_subjunctive_first_singular
            ["в̄α" + stem(long_vowel: false, suffix: false), "va" + stem_transliterated(long_vowel: false, suffix: false)]
          end

          def _pf_subjunctive_first_plural
            ["в̄ανι" + stem(long_vowel: false, suffix: false), "vani" + stem_transliterated(long_vowel: false, suffix: false)]
          end

          def _pf_subjunctive_second
            ["в̄ατι" + stem(long_vowel: false, suffix: false), "vati" + stem_transliterated(long_vowel: false, suffix: false)]
          end

          def _pf_subjunctive_third
            ["в̄η" + stem(long_vowel: false, suffix: false), "vē" + stem_transliterated(long_vowel: false, suffix: false)]
          end

          def _volitive_first_singular
            ["α" + stem + "αννα", "'a" + stem_transliterated + "anna"]
          end

          def _volitive_second_singular_masculine
            ["τι" + stem + "αννα", "ti" + stem_transliterated + "anna"]
          end

          def _volitive_third_singular_masculine
            ["ι" + stem + "αννα", "yi" + stem_transliterated + "anna"]
          end

          def _infinitive
            ["μα" + stem(suffix: false), "ma" + stem_transliterated(suffix: false)]
          end

          def _passive_participle
            if root.medial_plosive?
              [template("μυννα", :c1_lenited, :c2, "α", :c3), template("munna", :tc1_lenited, :tc2, "ə", :tc3)]
            else
              [template("μυννα", :c1, :c2, "α", :c3), template("munna", :tc1, :tc2, "ə", :tc3)]
            end
          end

          private

          def stem(long_vowel: true, lenition: nil, suffix: true)
            c1 = root.medial_plosive? ? :c1_lenited : :c1
            v = long_vowel ? "ω" : "α"
            suf = suffix ? "" : nil

            template("ννυ", c1, :c2, v, :c3, *suf)
          end

          def stem_transliterated(long_vowel: true, lenition: nil, suffix: true)
            c1 = root.medial_plosive? ? :tc1_lenited : :tc1
            v = long_vowel ? "ā" : "ə"
            suf = suffix ? "" : nil

            template("nnu", c1, :tc2, v, :tc3, *suf)
          end

          def imperfect_stem(lenition: nil, suffix: true)
            c1 = root.medial_plosive? ? :c1_lenited : :c1
            suf = suffix ? "" : nil

            template("ννυ", c1, :c2, "υω", :c3, *suf)
          end

          def imperfect_stem_transliterated(lenition: nil, suffix: true)
            c1 = root.medial_plosive? ? :tc1_lenited : :tc1
            suf = suffix ? "" : nil

            template("nnu", c1, :tc2, "uo", :tc3, *suf)
          end
        end
      end
    end
  end
end
