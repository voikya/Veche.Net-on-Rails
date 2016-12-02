module Morphology
  module Alashian
    module Verbs
      module Katab
        module Regular
          def conjugation
            "Active Scale I Verb"
          end

          def subtype
            "Regular"
          end

          def _present_first_singular
            ["α" + present_stem, "'a" + present_stem_transliterated]
          end

          def _present_second_singular_masculine
            if root.tv == "ā"
              ["τι" + present_stem, "ti" + present_stem_transliterated]
            else
              ["τα" + present_stem, "ta" + present_stem_transliterated]
            end
          end

          def _present_second_singular_feminine
            if root.tv == "ā"
              ["τι" + present_stem(long_vowel: false) + "ει", "ti" + present_stem_transliterated(long_vowel: false) + "ī"]
            else
              ["τα" + present_stem(long_vowel: false) + "ει", "ta" + present_stem_transliterated(long_vowel: false) + "ī"]
            end
          end

          def _present_third_singular_masculine
            if root.tv == "ā"
              ["ι" + present_stem, "yi" + present_stem_transliterated]
            else
              ["ια" + present_stem, "ya" + present_stem_transliterated]
            end
          end

          def _present_third_singular_feminine
            if root.tv == "ā"
              ["ι" + present_stem(long_vowel: false) + "ει", "yi" + present_stem_transliterated(long_vowel: false) + "ī"]
            else
              ["ια" + present_stem(long_vowel: false) + "ει", "ya" + present_stem_transliterated(long_vowel: false) + "ī"]
            end
          end

          def _present_first_plural
            if root.tv == "ā"
              ["νι" + present_stem(long_vowel: false) + "ου", "ni" + present_stem_transliterated(long_vowel: false) + "ū"]
            else
              ["να" + present_stem(long_vowel: false) + "ου", "na" + present_stem_transliterated(long_vowel: false) + "ū"]
            end
          end

          def _present_second_plural
            if root.tv == "ā"
              ["τι" + present_stem(long_vowel: false) + "ου", "ti" + present_stem_transliterated(long_vowel: false) + "ū"]
            else
              ["τα" + present_stem(long_vowel: false) + "ου", "ta" + present_stem_transliterated(long_vowel: false) + "ū"]
            end
          end

          def _present_third_plural
            if root.tv == "ā"
              ["ι" + present_stem(long_vowel: false) + "ου", "yi" + present_stem_transliterated(long_vowel: false) + "ū"]
            else
              ["ια" + present_stem(long_vowel: false) + "ου", "ya" + present_stem_transliterated(long_vowel: false) + "ū"]
            end
          end

          def _preterite_first_singular
            [template(:c1, "α", :c2, "α", :c3, "ετ"), template(:tc1, "a", :tc2, "a", :tc3, "et")]
          end

          def _preterite_second_singular_masculine
            [template(:c1, "α", :c2, "α", :c3_lenited, "τα"), template(:tc1, "a", :tc2, "a", :tc3_lenited, "ta")]
          end

          def _preterite_second_singular_feminine
            [template(:c1, "α", :c2, "α", :c3_lenited, "σ̄ε"), template(:tc1, "a", :tc2, "a", :tc3_lenited, "še")]
          end

          def _preterite_third_singular_masculine
            [template(:c1, "α", :c2, "α", :c3), template(:tc1, "a", :tc2, "a", :tc3)]
          end

          def _preterite_third_singular_feminine
            if epenthetic_vowel?
              [template(:c1, "α", :c2, "α", :c3, "ω"), template(:tc1, "a", :tc2, "a", :tc3, "ā")]
            else
              [template(:c1, :c2, "α", :c3, "ω"), template(:tc1, :tc2, "a", :tc3, "ā")]
            end
          end

          def _preterite_first_plural
            if epenthetic_vowel?
              [template(:c1, "α", :c2, "α", :c3, "νω"), template(:tc1, "a", :tc2, "a", :tc3, "nā")]
            else
              [template(:c1, :c2, "α", :c3, "νω"), template(:tc1, :tc2, "a", :tc3, "nā")]
            end
          end

          def _preterite_second_plural_masculine
            [template(:c1, "α", :c2, "α", :c3_lenited, "τυν"), template(:tc1, "a", :tc2, "a", :tc3_lenited, "tun")]
          end

          def _preterite_second_plural_feminine
            [template(:c1, "α", :c2, "α", :c3_lenited, "σ̄ιν"), template(:tc1, "a", :tc2, "a", :tc3_lenited, "šin")]
          end

          def _preterite_third_plural
            if epenthetic_vowel?
              [template(:c1, "α", :c2, "α", :c3, "ου"), template(:tc1, "a", :tc2, "a", :tc3, "ū")]
            else
              [template(:c1, :c2, "α", :c3, "ου"), template(:tc1, :tc2, "a", :tc3, "ū")]
            end
          end

          def _imperfect_first_singular
            [template(:c1, "ιη", :c2, "ε", :c3_lenited), template(:tc1, "ie", :tc2, "e", :tc3_lenited)]
          end

          def _imperfect_second_singular_masculine
            [template(:c1, "ιη", :c2, "ε", :c3_lenited, "ετ"), template(:tc1, "ie", :tc2, "e", :tc3_lenited, "et")]
          end

          def _imperfect_second_singular_feminine
            [template(:c1, "ιη", :c2, "ε", :c3_lenited, "ες̄"), template(:tc1, "ie", :tc2, "e", :tc3_lenited, "eš")]
          end

          def _imperfect_third_singular_masculine
            [template(:c1, "η", :c2, "ε", :c3), template(:tc1, "ē", :tc2, "e", :tc3)]
          end

          def _imperfect_third_singular_feminine
            if root.final_plosive? && !root.geminate_stem?
              [template(:c1, "η", :c2_lenited, :c3, "ω"), template(:tc1, "ē", :tc2_lenited, :tc3, "ā")]
            else
              [template(:c1, "η", :c2, :c3, "ω"), template(:tc1, "ē", :tc2, :tc3, "ā")]
            end
          end

          def _imperfect_first_plural
            [template(:c1, "ιη", :c2, "ε", :c3_lenited, "εν"), template(:tc1, "ie", :tc2, "e", :tc3_lenited, "en")]
          end

          def _imperfect_second_plural_masculine
            [template(:c1, "ιη", :c2, "ε", :c3_lenited, "τυν"), template(:tc1, "ie", :tc2, "e", :tc3_lenited, "tun")]
          end

          def _imperfect_second_plural_feminine
            [template(:c1, "ιη", :c2, "ε", :c3_lenited, "σ̄ιν"), template(:tc1, "ie", :tc2, "e", :tc3_lenited, "šin")]
          end

          def _imperfect_third_plural
            if root.final_plosive? && !root.geminate_stem?
              [template(:c1, "η", :c2_lenited, :c3, "ου"), template(:tc1, "ē", :tc2_lenited, :tc3, "ū")]
            else
              [template(:c1, "η", :c2, :c3, "ου"), template(:tc1, "ē", :tc2, :tc3, "ū")]
            end
          end

          def _pf_subjunctive_first_singular
            ["в̄α" + present_stem(long_vowel: false), "va" + present_stem_transliterated(long_vowel: false)]
          end

          def _pf_subjunctive_first_plural
            ["в̄ανα" + present_stem(long_vowel: false), "vana" + present_stem_transliterated(long_vowel: false)]
          end

          def _pf_subjunctive_second
            ["в̄ατα" + present_stem(long_vowel: false), "vata" + present_stem_transliterated(long_vowel: false)]
          end

          def _pf_subjunctive_third
            ["в̄η" + present_stem(long_vowel: false), "vē" + present_stem_transliterated(long_vowel: false)]
          end

          def _impf_subjunctive_first_singular
            ["α" + present_stem + "α", "'a" + present_stem_transliterated + "a"]
          end

          def _impf_subjunctive_second_singular_masculine
            if root.tv == "ā"
              ["τι" + present_stem + "α", "ti" + present_stem_transliterated + "a"]
            else
              ["τα" + present_stem + "α", "ta" + present_stem_transliterated + "a"]
            end
          end

          def _impf_subjunctive_second_singular_feminine
            if root.tv == "ā"
              ["τι" + present_stem + "ια", "ti" + present_stem_transliterated + "iya"]
            else
              ["τα" + present_stem + "ια", "ta" + present_stem_transliterated + "iya"]
            end
          end

          def _impf_subjunctive_third_singular_masculine
            if root.tv == "ā"
              ["ι" + present_stem + "α", "yi" + present_stem_transliterated + "a"]
            else
              ["ια" + present_stem + "α", "ya" + present_stem_transliterated + "a"]
            end
          end

          def _impf_subjunctive_third_singular_feminine
            if root.tv == "ā"
              ["ι" + present_stem + "ια", "yi" + present_stem_transliterated + "iya"]
            else
              ["ια" + present_stem + "ια", "ya" + present_stem_transliterated + "iya"]
            end
          end

          def _impf_subjunctive_first_plural
            if root.tv == "ā"
              ["νι" + present_stem + "υ'α", "ni" + present_stem_transliterated + "uwa"]
            else
              ["να" + present_stem + "υ'α", "na" + present_stem_transliterated + "uwa"]
            end
          end

          def _impf_subjunctive_second_plural
            if root.tv == "ā"
              ["τι" + present_stem + "υ'α", "ti" + present_stem_transliterated + "uwa"]
            else
              ["τα" + present_stem + "υ'α", "ta" + present_stem_transliterated + "uwa"]
            end
          end

          def _impf_subjunctive_third_plural
            if root.tv == "ā"
              ["ι" + present_stem + "υ'α", "yi" + present_stem_transliterated + "uwa"]
            else
              ["ια" + present_stem + "υ'α", "ya" + present_stem_transliterated + "uwa"]
            end
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
            if epenthetic_vowel?
              [template(:c1, "α", :c2, :v, :c3), template(:tc1, "a", :tc2, :tv, :tc3)]
            else
              [template(:c1, :c2, :v, :c3), template(:tc1, :tc2, :tv, :tc3)]
            end
          end

          def _imperative_feminine_singular
            if root.final_plosive?
              [template(:c1, :short_v, :c2_lenited, :c3, "ει"), template(:tc1, :short_tv, :tc2_lenited, :tc3, "ī")]
            else
              [template(:c1, :short_v, :c2, :c3, "ει"), template(:tc1, :short_tv, :tc2, :tc3, "ī")]
            end
          end

          def _imperative_plural
            if root.final_plosive?
              [template(:c1, :short_v, :c2_lenited, :c3, "ου"), template(:tc1, :short_tv, :tc2_lenited, :tc3, "ū")]
            else
              [template(:c1, :short_v, :c2, :c3, "ου"), template(:tc1, :short_tv, :tc2, :tc3, "ū")]
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
            [template(:c1, "α", :c2, "ου", :c3), template(:tc1, "a", :tc2, "ū", :tc3)]
          end

          def _active_participle
            [template(:c1, "ου", :c2, "ι", :c3), template(:tc1, "ū", :tc2, "i", :tc3)]
          end

          def _passive_participle
            if root.medial_plosive?
              [template("μα", :c1_lenited, :c2, "ου", :c3), template("ma", :tc1_lenited, :tc2, "ū", :tc3)]
            else
              [template("μα", :c1, :c2, "ου", :c3), template("ma", :tc1, :tc2, "ū", :tc3)]
            end
          end

          private

          def present_stem(long_vowel: true)
            c1 = root.medial_plosive? ? :c1_lenited : :c1
            v = long_vowel ? :v : :short_v

            template(c1, :c2, v, :c3)
          end

          def present_stem_transliterated(long_vowel: true)
            c1 = root.medial_plosive? ? :tc1_lenited : :tc1
            v = long_vowel ? :tv : :short_tv

            template(c1, :tc2, v, :tc3)
          end
        end
      end
    end
  end
end
