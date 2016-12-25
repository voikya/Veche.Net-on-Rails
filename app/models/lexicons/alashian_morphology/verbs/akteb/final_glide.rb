require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Akteb
        module FinalGlide
          include Akteb::Regular

          def subtype
            "C3 = Y/W"
          end

          def _present_first_singular
            ["ω" + stem[0..-2], "'ā" + stem_transliterated[0..-2]]
          end

          def _present_second_singular_masculine
            ["τω" + stem[0..-2], "tā" + stem_transliterated[0..-2]]
          end

          def _present_third_singular_masculine
            ["ιω" + stem[0..-2], "yā" + stem_transliterated[0..-2]]
          end

          def _preterite_second_singular_masculine
            ["α" + stem[0..-2] + "τα", "'a" + stem_transliterated[0..-2] + "ta"]
          end

          def _preterite_second_singular_feminine
            ["α" + stem[0..-2] + "σ̄ε", "'a" + stem_transliterated[0..-2] + "še"]
          end

          def _preterite_third_singular_masculine
            ["α" + stem[0..-2], "'a" + stem_transliterated[0..-2]]
          end

          def _preterite_first_plural
            ["α" + stem[0..-2] + "νω", "'a" + stem_transliterated[0..-2] + "nā"]
          end

          def _preterite_second_plural_masculine
            ["α" + stem[0..-2] + "τυν", "'a" + stem_transliterated[0..-2] + "tun"]
          end

          def _preterite_second_plural_feminine
            ["α" + stem[0..-2] + "σ̄ιν", "'a" + stem_transliterated[0..-2] + "šin"]
          end

          def _imperfect_first_singular
            ["α" + imperfect_stem[0..-2], "'a" + imperfect_stem_transliterated[0..-2]]
          end

          def _imperfect_third_singular_masculine
            ["α" + imperfect_stem[0..-2], "'a" + imperfect_stem_transliterated[0..-2]]
          end

          def _imperfect_second_plural_masculine
            ["α" + imperfect_stem[0..-2] + "τυν", "'a" + imperfect_stem_transliterated[0..-2] + "tun"]
          end

          def _imperfect_second_plural_feminine
            ["α" + imperfect_stem[0..-2] + "σ̄ιν", "'a" + imperfect_stem_transliterated[0..-2] + "šin"]
          end

          def _pf_subjunctive_first_singular
            ["в̄ω" + stem(long_vowel: false)[0..-2], "vā" + stem_transliterated(long_vowel: false)[0..-2]]
          end

          def _pf_subjunctive_first_plural
            ["в̄ανω" + stem(long_vowel: false)[0..-2], "vanā" + stem_transliterated(long_vowel: false)[0..-2]]
          end

          def _pf_subjunctive_second
            ["в̄ατω" + stem(long_vowel: false)[0..-2], "vatā" + stem_transliterated(long_vowel: false)[0..-2]]
          end

          def _pf_subjunctive_third
            ["в̄ιω" + stem(long_vowel: false)[0..-2], "vyā" + stem_transliterated(long_vowel: false)[0..-2]]
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

          def _imperative_masculine_singular
            ["α" + stem[0..-2], "'a" + stem_transliterated[0..-2]]
          end

          def _infinitive
            ["μω" + stem[0..-2], "mā" + stem_transliterated[0..-2]]
          end

          def _active_participle
            if root.medial_plosive?
              [template("μω", :c1_lenited, :c2, "εἰ"), template("mā", :tc1_lenited, :tc2, "ī")]
            else
              [template("μω", :c1, :c2, "εἰ"), template("mā", :tc1, :tc2, "ī")]
            end
          end

          private

          def stem(long_vowel: true, lenition: nil)
            c1 = root.medial_plosive? ? :c1_lenited : :c1
            v = long_vowel ? "η" : "ε"
            if root.tc3 == "y"
              # The long_vowel attribute marks the presence/absence of a suffix,
              # which serves as an effective proxy for the need for diaeresis.
              c3 = long_vowel ? "ι" : "ϊ"
            else
              c3 = "υ"
            end

            template(c1, :c2, v, c3)
          end
        end
      end
    end
  end
end
