require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Akteb
        module FinalGlottalStop
          include Akteb::Regular

          def subtype
            "C3 = '"
          end

          def _present_first_singular
            ["ω" + stem, "'ā" + stem_transliterated[0..-2]]
          end

          def _present_second_singular_masculine
            ["τω" + stem, "tā" + stem_transliterated[0..-2]]
          end

          def _present_third_singular_masculine
            ["ιω" + stem, "yā" + stem_transliterated[0..-2]]
          end

          def _preterite_first_singular
            ["α" + stem + "τ", "'a" + stem_transliterated[0..-2] + "t"]
          end

          def _preterite_second_singular_masculine
            ["α" + stem + "ττα", "'a" + stem_transliterated[0..-2] + "tha"]
          end

          def _preterite_second_singular_feminine
            ["α" + stem + "τζζε", "'a" + stem_transliterated[0..-2] + "čhe"]
          end

          def _preterite_third_singular_masculine
            ["α" + stem, "'a" + stem_transliterated[0..-2]]
          end

          def _preterite_first_plural
            ["α" + stem + "ννω", "'a" + stem_transliterated[0..-2] + "nnā"]
          end

          def _preterite_second_plural_masculine
            ["α" + stem + "ττυν", "'a" + stem_transliterated[0..-2] + "thun"]
          end

          def _preterite_second_plural_feminine
            ["α" + stem + "τζζιν", "'a" + stem_transliterated[0..-2] + "čhin"]
          end

          def _imperfect_first_singular
            ["α" + imperfect_stem, "'a" + imperfect_stem_transliterated[0..-2]]
          end

          def _imperfect_second_singular_masculine
            ["α" + imperfect_stem + "τ", "'a" + imperfect_stem_transliterated[0..-2] + "t"]
          end

          def _imperfect_second_singular_feminine
            ["α" + imperfect_stem + "ς̄", "'a" + imperfect_stem_transliterated[0..-2] + "š"]
          end

          def _imperfect_third_singular_masculine
            ["α" + imperfect_stem, "'a" + imperfect_stem_transliterated[0..-2]]
          end

          def _imperfect_first_plural
            ["α" + imperfect_stem + "ν", "'a" + imperfect_stem_transliterated[0..-2] + "n"]
          end

          def _imperfect_second_plural_masculine
            ["α" + imperfect_stem + "ττυν", "'a" + imperfect_stem_transliterated[0..-2] + "thun"]
          end

          def _imperfect_second_plural_feminine
            ["α" + imperfect_stem + "τζζιν", "'a" + imperfect_stem_transliterated[0..-2] + "čhin"]
          end

          def _pf_subjunctive_first_singular
            ["в̄ω" + stem(long_vowel: false), "vā" + stem_transliterated(long_vowel: false)[0..-2]]
          end

          def _pf_subjunctive_first_plural
            ["в̄ανω" + stem(long_vowel: false), "vanā" + stem_transliterated(long_vowel: false)[0..-2]]
          end

          def _pf_subjunctive_second
            ["в̄ατω" + stem(long_vowel: false), "vatā" + stem_transliterated(long_vowel: false)[0..-2]]
          end

          def _pf_subjunctive_third
            ["в̄ιω" + stem(long_vowel: false), "vyā" + stem_transliterated(long_vowel: false)[0..-2]]
          end

          def _impf_subjunctive_first_singular
            ["ω" + stem + "'α", "'ā" + stem_transliterated + "a"]
          end

          def _impf_subjunctive_second_singular_masculine
            ["τω" + stem + "'α", "tā" + stem_transliterated + "a"]
          end

          def _impf_subjunctive_second_singular_feminine
            ["τω" + stem + "ιια", "tā" + stem_transliterated + "iya"]
          end

          def _impf_subjunctive_third_singular_masculine
            ["ιω" + stem + "'α", "yā" + stem_transliterated + "a"]
          end

          def _impf_subjunctive_third_singular_feminine
            ["ιω" + stem + "ιια", "yā" + stem_transliterated + "iya"]
          end

          def _impf_subjunctive_first_plural
            ["νω" + stem + "υυ'α", "nā" + stem_transliterated + "uwa"]
          end

          def _impf_subjunctive_second_plural
            ["τω" + stem + "υυ'α", "tā" + stem_transliterated + "uwa"]
          end

          def _impf_subjunctive_third_plural
            ["ιω" + stem + "υυ'α", "yā" + stem_transliterated + "uwa"]
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
            if s_imperative?
              [template("ισ", :c1, "ε", :c2, "η"), template("'is", :tc1, "e", :tc2, "ē")]
            else
              ["α" + stem, "'a" + stem_transliterated[0..-2]]
            end
          end

          def _imperative_feminine_singular
            if s_imperative?
              [template("ισ", :c1, "ε", :c2_geminated_or_aspirated, "ει"), template("'is", :tc1, "e", :tc2_geminated_or_aspirated, "ī")]
            else
              ["α" + stem(long_vowel: false) + "ει", "'a" + stem_transliterated(long_vowel: false) + "ī"]
            end
          end

          def _imperative_plural
            if s_imperative?
              [template("ισ", :c1, "ε", :c2_geminated_or_aspirated, "ου"), template("'is", :tc1, "e", :tc2_geminated_or_aspirated, "ū")]
            else
              ["α" + stem(long_vowel: false) + "ου", "'a" + stem_transliterated(long_vowel: false) + "ū"]
            end
          end

          def _infinitive
            ["μω" + stem, "mā" + stem_transliterated[0..-2]]
          end

          def _active_participle
            if root.medial_plosive?
              [template("μω", :c1_lenited, :c2, "ι"), template("mā", :tc1_lenited, :tc2, "i")]
            else
              [template("μω", :c1, :c2, "ι"), template("mā", :tc1, :tc2, "i")]
            end
          end
        end
      end
    end
  end
end
