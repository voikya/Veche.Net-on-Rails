require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Ennuktab
        module FinalGlottalStop
          include Ennuktab::Regular

          def subtype
            "C3 = '"
          end

          def _present_first_singular
            ["α" + stem, "'a" + stem_transliterated[0..-2]]
          end

          def _present_second_singular_masculine
            ["τι" + stem, "ti" + stem_transliterated[0..-2]]
          end

          def _present_third_singular_masculine
            ["ι" + stem, "yi" + stem_transliterated[0..-2]]
          end

          def _preterite_first_singular
            ["ε" + stem + "τ", "'e" + stem_transliterated[0..-2] + "t"]
          end

          def _preterite_second_singular_masculine
            ["ε" + stem + "ττα", "'e" + stem_transliterated[0..-2] + "tha"]
          end

          def _preterite_second_singular_feminine
            ["ε" + stem + "τζζε", "'e" + stem_transliterated[0..-2] + "čhe"]
          end

          def _preterite_third_singular_masculine
            ["ε" + stem, "'e" + stem_transliterated[0..-2]]
          end

          def _preterite_first_plural
            ["ε" + stem + "ννω", "'e" + stem_transliterated[0..-2] + "nnā"]
          end

          def _preterite_second_plural_masculine
            ["ε" + stem + "ττυν", "'e" + stem_transliterated[0..-2] + "thun"]
          end

          def _preterite_second_plural_feminine
            ["ε" + stem + "τζζιν", "'e" + stem_transliterated[0..-2] + "čhin"]
          end

          def _imperfect_first_singular
            ["ε" + imperfect_stem, "'e" + imperfect_stem_transliterated[0..-2]]
          end

          def _imperfect_second_singular_masculine
            ["ε" + imperfect_stem + "τ", "'e" + imperfect_stem_transliterated[0..-2] + "t"]
          end

          def _imperfect_second_singular_feminine
            ["ε" + imperfect_stem + "ς̄", "'e" + imperfect_stem_transliterated[0..-2] + "š"]
          end

          def _imperfect_third_singular_masculine
            ["ε" + imperfect_stem, "'e" + imperfect_stem_transliterated[0..-2]]
          end

          def _imperfect_first_plural
            ["ε" + imperfect_stem + "ν", "'e" + imperfect_stem_transliterated[0..-2] + "n"]
          end

          def _imperfect_second_plural_masculine
            ["ε" + imperfect_stem + "ττυν", "'e" + imperfect_stem_transliterated[0..-2] + "thun"]
          end

          def _imperfect_second_plural_feminine
            ["ε" + imperfect_stem + "τζζιν", "'e" + imperfect_stem_transliterated[0..-2] + "čhin"]
          end

          def _pf_subjunctive_first_singular
            ["в̄α" + stem(long_vowel: false), "va" + stem_transliterated(long_vowel: false)[0..-2]]
          end

          def _pf_subjunctive_first_plural
            ["в̄ανι" + stem(long_vowel: false), "vani" + stem_transliterated(long_vowel: false)[0..-2]]
          end

          def _pf_subjunctive_second
            ["в̄ατι" + stem(long_vowel: false), "vati" + stem_transliterated(long_vowel: false)[0..-2]]
          end

          def _pf_subjunctive_third
            ["в̄η" + stem(long_vowel: false), "vē" + stem_transliterated(long_vowel: false)[0..-2]]
          end

          def _impf_subjunctive_first_singular
            ["α" + stem + "'α", "'a" + stem_transliterated + "a"]
          end

          def _impf_subjunctive_second_singular_masculine
            ["τι" + stem + "'α", "ti" + stem_transliterated + "a"]
          end

          def _impf_subjunctive_second_singular_feminine
            ["τι" + stem + "ιια", "ti" + stem_transliterated + "iya"]
          end

          def _impf_subjunctive_third_singular_masculine
            ["ι" + stem + "'α", "yi" + stem_transliterated + "a"]
          end

          def _impf_subjunctive_third_singular_feminine
            ["ι" + stem + "ιια", "yi" + stem_transliterated + "iya"]
          end

          def _impf_subjunctive_first_plural
            ["νι" + stem + "υυ'α", "ni" + stem_transliterated + "uwa"]
          end

          def _impf_subjunctive_second_plural
            ["τι" + stem + "υυ'α", "ti" + stem_transliterated + "uwa"]
          end

          def _impf_subjunctive_third_plural
            ["ι" + stem + "υυ'α", "yi" + stem_transliterated + "uwa"]
          end

          def _volitive_first_singular
            _present_first_singular.zip(["να", "na"]).map(&:join)
          end

          def _volitive_second_singular_masculine
            _present_second_singular_masculine.zip(["να", "na"]).map(&:join)
          end

          def _volitive_third_singular_masculine
            _present_third_singular_masculine.zip(["να", "na"]).map(&:join)
          end

          def _infinitive
            ["μα" + stem, "ma" + stem_transliterated[0..-2]]
          end

          def _passive_participle
            if root.medial_plosive?
              [template("μυννα", :c1_lenited, :c2, "α"), template("munna", :tc1_lenited, :tc2, "a")]
            else
              [template("μυννα", :c1, :c2, "α"), template("munna", :tc1, :tc2, "a")]
            end
          end
        end
      end
    end
  end
end
