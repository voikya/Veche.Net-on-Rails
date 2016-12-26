require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Ennuktab
        module FinalGlide
          include Ennuktab::Regular

          def subtype
            "C3 = Y/W"
          end

          def _present_first_singular
            ["α" + stem[0..-2], "'a" + stem_transliterated[0..-2]]
          end

          def _present_second_singular_masculine
            ["τι" + stem[0..-2], "ti" + stem_transliterated[0..-2]]
          end

          def _present_third_singular_masculine
            ["ι" + stem[0..-2], "yi" + stem_transliterated[0..-2]]
          end

          def _preterite_second_singular_masculine
            ["ε" + stem[0..-2] + "τα", "'e" + stem_transliterated[0..-2] + "ta"]
          end

          def _preterite_second_singular_feminine
            ["ε" + stem[0..-2] + "σ̄ε", "'e" + stem_transliterated[0..-2] + "še"]
          end

          def _preterite_third_singular_masculine
            ["ε" + stem[0..-2], "'e" + stem_transliterated[0..-2]]
          end

          def _preterite_first_plural
            ["ε" + stem[0..-2] + "νω", "'e" + stem_transliterated[0..-2] + "nā"]
          end

          def _preterite_second_plural_masculine
            ["ε" + stem[0..-2] + "τυν", "'e" + stem_transliterated[0..-2] + "tun"]
          end

          def _preterite_second_plural_feminine
            ["ε" + stem[0..-2] + "σ̄ιν", "'e" + stem_transliterated[0..-2] + "šin"]
          end

          def _imperfect_first_singular
            ["ε" + imperfect_stem[0..-2], "'e" + imperfect_stem_transliterated[0..-2]]
          end

          def _imperfect_third_singular_masculine
            ["ε" + imperfect_stem[0..-2], "'e" + imperfect_stem_transliterated[0..-2]]
          end

          def _imperfect_second_plural_masculine
            ["ε" + imperfect_stem[0..-2] + "τυν", "'e" + imperfect_stem_transliterated[0..-2] + "tun"]
          end

          def _imperfect_second_plural_feminine
            ["ε" + imperfect_stem[0..-2] + "σ̄ιν", "'e" + imperfect_stem_transliterated[0..-2] + "šin"]
          end

          def _pf_subjunctive_first_singular
            ["в̄α" + stem(long_vowel: false)[0..-2], "va" + stem_transliterated(long_vowel: false)[0..-2]]
          end

          def _pf_subjunctive_first_plural
            ["в̄ανι" + stem(long_vowel: false)[0..-2], "vani" + stem_transliterated(long_vowel: false)[0..-2]]
          end

          def _pf_subjunctive_second
            ["в̄ατι" + stem(long_vowel: false)[0..-2], "vati" + stem_transliterated(long_vowel: false)[0..-2]]
          end

          def _pf_subjunctive_third
            ["в̄η" + stem(long_vowel: false)[0..-2], "vē" + stem_transliterated(long_vowel: false)[0..-2]]
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
            ["μα" + stem[0..-2], "ma" + stem_transliterated[0..-2]]
          end

          def _passive_participle
            c1 = root.medial_plosive? ? :c1_lenited : :c1
            tc1 = root.medial_plosive? ? :tc1_lenited : :tc1

            if root.tc3 == "y"
              [template("μυννα", c1, :c2, "ἠ"), template("munna", tc1, :tc2, "ē")]
            else
              [template("μυννα", c1, :c2, "οὐ"), template("munna", tc1, :tc2, "ū")]
            end
          end

          private

          def stem(long_vowel: true, lenition: nil)
            c1 = root.medial_plosive? ? :c1_lenited : :c1
            v = long_vowel ? "ω" : "α"

            template("ννυ", c1, :c2, v, :c3)
          end
        end
      end
    end
  end
end
