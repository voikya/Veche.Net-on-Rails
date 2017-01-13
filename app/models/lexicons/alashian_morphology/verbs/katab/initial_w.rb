require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Katab
        module InitialW
          include Katab::Regular

          def subtype
            "C1 = W"
          end

          def _present_first_singular
            ["ου" + present_stem, "'ū" + present_stem_transliterated]
          end

          def _present_second_singular_masculine
            if root.tv == "ā"
              ["τει" + present_stem, "tī" + present_stem_transliterated]
            else
              ["του" + present_stem, "tū" + present_stem_transliterated]
            end
          end

          def _present_second_singular_feminine
            if root.tv == "ā"
              ["τει" + present_stem(long_vowel: false) + "ει", "tī" + present_stem_transliterated(long_vowel: false) + "ī"]
            else
              ["του" + present_stem(long_vowel: false) + "ει", "tū" + present_stem_transliterated(long_vowel: false) + "ī"]
            end
          end

          def _present_third_singular_masculine
            if root.tv == "ā"
              ["ιει" + present_stem, "yī" + present_stem_transliterated]
            else
              ["ιου" + present_stem, "yū" + present_stem_transliterated]
            end
          end

          def _present_third_singular_feminine
            if root.tv == "ā"
              ["ιει" + present_stem(long_vowel: false) + "ει", "yī" + present_stem_transliterated(long_vowel: false) + "ī"]
            else
              ["ιου" + present_stem(long_vowel: false) + "ει", "yū" + present_stem_transliterated(long_vowel: false) + "ī"]
            end
          end

          def _present_first_plural
            if root.tv == "ā"
              ["νει" + present_stem(long_vowel: false) + "ου", "nī" + present_stem_transliterated(long_vowel: false) + "ū"]
            else
              ["νου" + present_stem(long_vowel: false) + "ου", "nū" + present_stem_transliterated(long_vowel: false) + "ū"]
            end
          end

          def _present_second_plural
            if root.tv == "ā"
              ["τει" + present_stem(long_vowel: false) + "ου", "tī" + present_stem_transliterated(long_vowel: false) + "ū"]
            else
              ["του" + present_stem(long_vowel: false) + "ου", "tū" + present_stem_transliterated(long_vowel: false) + "ū"]
            end
          end

          def _present_third_plural
            if root.tv == "ā"
              ["ιει" + present_stem(long_vowel: false) + "ου", "yī" + present_stem_transliterated(long_vowel: false) + "ū"]
            else
              ["ιου" + present_stem(long_vowel: false) + "ου", "yū" + present_stem_transliterated(long_vowel: false) + "ū"]
            end
          end

          def _preterite_first_singular
            [template("в̄α", :c2, "α", :c3, "ετ"), template("va", :tc2, "a", :tc3, "et")]
          end

          def _preterite_second_singular_masculine
            [template("в̄α", :c2, "α", :c3_lenited, "τα"), template("va", :tc2, "a", :tc3_lenited, "ta")]
          end

          def _preterite_second_singular_feminine
            [template("в̄α", :c2, "α", :c3_lenited, "σ̄ε"), template("va", :tc2, "a", :tc3_lenited, "še")]
          end

          def _preterite_third_singular_masculine
            [template("в̄α", :c2, "α", :c3), template("va", :tc2, "a", :tc3)]
          end

          def _preterite_third_singular_feminine
            [template("в̄α", :c2, "α", :c3, "ω"), template("va", :tc2, "a", :tc3, "ā")]
          end

          def _preterite_first_plural
            [template("в̄α", :c2, "α", :c3, "νω"), template("va", :tc2, "a", :tc3, "nā")]
          end

          def _preterite_second_plural_masculine
            [template("в̄α", :c2, "α", :c3_lenited, "τυν"), template("va", :tc2, "a", :tc3_lenited, "tun")]
          end

          def _preterite_second_plural_feminine
            [template("в̄α", :c2, "α", :c3_lenited, "σ̄ιν"), template("va", :tc2, "a", :tc3_lenited, "šin")]
          end

          def _preterite_third_plural
            [template("в̄α", :c2, "α", :c3, "ου"), template("va", :tc2, "a", :tc3, "ū")]
          end

          def _imperfect_first_singular
            [template("ιη", :c2, "ε", :c3_lenited), template("yē", :tc2, "e", :tc3_lenited)]
          end

          def _imperfect_second_singular_masculine
            [template("ιη", :c2, "ε", :c3_lenited, "ετ"), template("yē", :tc2, "e", :tc3_lenited, "et")]
          end

          def _imperfect_second_singular_feminine
            [template("ιη", :c2, "ε", :c3_lenited, "ες̄"), template("yē", :tc2, "e", :tc3_lenited, "eš")]
          end

          def _imperfect_third_singular_masculine
            [template("ιη", :c2, "ε", :c3), template("yē", :tc2, "e", :tc3)]
          end

          def _imperfect_third_singular_feminine
            if root.final_plosive?
              [template("ιη", :c2_lenited, :c3, "ω"), template("yē", :tc2_lenited, :tc3, "ā")]
            else
              [template("ιη", :c2, :c3, "ω"), template("yē", :tc2, :tc3, "ā")]
            end
          end

          def _imperfect_first_plural
            [template("ιη", :c2, "ε", :c3_lenited, "εν"), template("yē", :tc2, "e", :tc3_lenited, "en")]
          end

          def _imperfect_second_plural_masculine
            [template("ιη", :c2, "ε", :c3_lenited, "τυν"), template("yē", :tc2, "e", :tc3_lenited, "tun")]
          end

          def _imperfect_second_plural_feminine
            [template("ιη", :c2, "ε", :c3_lenited, "σ̄ιν"), template("yē", :tc2, "e", :tc3_lenited, "šin")]
          end

          def _imperfect_third_plural
            if root.final_plosive?
              [template("ιη", :c2_lenited, :c3, "ου"), template("yē", :tc2_lenited, :tc3, "ū")]
            else
              [template("ιη", :c2, :c3, "ου"), template("yē", :tc2, :tc3, "ū")]
            end
          end

          def _pf_subjunctive_first_singular
            ["в̄ου" + present_stem(long_vowel: false), "vū" + present_stem_transliterated(long_vowel: false)]
          end

          def _pf_subjunctive_first_plural
            ["в̄ανου" + present_stem(long_vowel: false), "vanū" + present_stem_transliterated(long_vowel: false)]
          end

          def _pf_subjunctive_second
            ["в̄ατου" + present_stem(long_vowel: false), "vatū" + present_stem_transliterated(long_vowel: false)]
          end

          def _impf_subjunctive_first_singular
            ["ου" + present_stem + "α", "'ū" + present_stem_transliterated + "a"]
          end

          def _impf_subjunctive_second_singular_masculine
            if root.tv == "ā"
              ["τει" + present_stem + "α", "tī" + present_stem_transliterated + "a"]
            else
              ["του" + present_stem + "α", "tū" + present_stem_transliterated + "a"]
            end
          end

          def _impf_subjunctive_second_singular_feminine
            if root.tv == "ā"
              ["τει" + present_stem + "ια", "tī" + present_stem_transliterated + "iya"]
            else
              ["του" + present_stem + "ια", "tū" + present_stem_transliterated + "iya"]
            end
          end

          def _impf_subjunctive_third_singular_masculine
            if root.tv == "ā"
              ["ιει" + present_stem + "α", "yī" + present_stem_transliterated + "a"]
            else
              ["ιου" + present_stem + "α", "yū" + present_stem_transliterated + "a"]
            end
          end

          def _impf_subjunctive_third_singular_feminine
            if root.tv == "ā"
              ["ιει" + present_stem + "ια", "yī" + present_stem_transliterated + "iya"]
            else
              ["ιου" + present_stem + "ια", "yū" + present_stem_transliterated + "iya"]
            end
          end

          def _impf_subjunctive_first_plural
            if root.tv == "ā"
              ["νει" + present_stem + "υ'α", "nī" + present_stem_transliterated + "uwa"]
            else
              ["νου" + present_stem + "υ'α", "nū" + present_stem_transliterated + "uwa"]
            end
          end

          def _impf_subjunctive_second_plural
            if root.tv == "ā"
              ["τει" + present_stem + "υ'α", "tī" + present_stem_transliterated + "uwa"]
            else
              ["του" + present_stem + "υ'α", "tū" + present_stem_transliterated + "uwa"]
            end
          end

          def _impf_subjunctive_third_plural
            if root.tv == "ā"
              ["ιει" + present_stem + "υ'α", "yī" + present_stem_transliterated + "uwa"]
            else
              ["ιου" + present_stem + "υ'α", "yū" + present_stem_transliterated + "uwa"]
            end
          end

          def _imperative_masculine_singular
            [template(:c2, :v, :c3), template(:tc2, :tv, :tc3)]
          end

          def _imperative_feminine_singular
            [template(:c2, :short_v, :c3, "ει"), template(:tc2, :short_tv, :tc3, "ī")]
          end

          def _imperative_plural
            [template(:c2, :short_v, :c3, "ου"), template(:tc2, :short_tv, :tc3, "ū")]
          end

          def _infinitive
            [template("в̄α", :c2, "ου", :c3), template("va", :tc2, "ū", :tc3)]
          end

          def _active_participle
            [template("в̄ου", :c2, "ι", :c3), template("vū", :tc2, "i", :tc3)]
          end

          def _passive_participle
            [template("μου", :c2, "ου", :c3), template("mū", :tc2, "ū", :tc3)]
          end

          private

          def present_stem(long_vowel: true)
            v = long_vowel ? :v : :short_v

            template(:c2, v, :c3)
          end

          def present_stem_transliterated(long_vowel: true)
            v = long_vowel ? :tv : :short_tv

            template(:tc2, v, :tc3)
          end
        end
      end
    end
  end
end
