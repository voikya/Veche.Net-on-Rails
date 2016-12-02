require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Katab
        module InitialY
          include Katab::Regular

          def subtype
            "C1 = Y"
          end

          def _present_first_singular
            ["η" + present_stem, "'ē" + present_stem_transliterated]
          end

          def _present_second_singular_masculine
            if root.tv == "ā"
              ["τει" + present_stem, "tī" + present_stem_transliterated]
            else
              ["τη" + present_stem, "tē" + present_stem_transliterated]
            end
          end

          def _present_second_singular_feminine
            if root.tv == "ā"
              ["τει" + present_stem(long_vowel: false) + "ει", "tī" + present_stem_transliterated(long_vowel: false) + "ī"]
            else
              ["τη" + present_stem(long_vowel: false) + "ει", "tē" + present_stem_transliterated(long_vowel: false) + "ī"]
            end
          end

          def _present_third_singular_masculine
            if root.tv == "ā"
              ["ιει" + present_stem, "yī" + present_stem_transliterated]
            else
              ["ιη" + present_stem, "yē" + present_stem_transliterated]
            end
          end

          def _present_third_singular_feminine
            if root.tv == "ā"
              ["ιει" + present_stem(long_vowel: false) + "ει", "yī" + present_stem_transliterated(long_vowel: false) + "ī"]
            else
              ["ιη" + present_stem(long_vowel: false) + "ει", "yē" + present_stem_transliterated(long_vowel: false) + "ī"]
            end
          end

          def _present_first_plural
            if root.tv == "ā"
              ["νει" + present_stem(long_vowel: false) + "ου", "nī" + present_stem_transliterated(long_vowel: false) + "ū"]
            else
              ["νη" + present_stem(long_vowel: false) + "ου", "nē" + present_stem_transliterated(long_vowel: false) + "ū"]
            end
          end

          def _present_second_plural
            if root.tv == "ā"
              ["τει" + present_stem(long_vowel: false) + "ου", "tī" + present_stem_transliterated(long_vowel: false) + "ū"]
            else
              ["τη" + present_stem(long_vowel: false) + "ου", "tē" + present_stem_transliterated(long_vowel: false) + "ū"]
            end
          end

          def _present_third_plural
            if root.tv == "ā"
              ["ιει" + present_stem(long_vowel: false) + "ου", "yī" + present_stem_transliterated(long_vowel: false) + "ū"]
            else
              ["ιη" + present_stem(long_vowel: false) + "ου", "yē" + present_stem_transliterated(long_vowel: false) + "ū"]
            end
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

          def _imperfect_first_plural
            [template("ιη", :c2, "ε", :c3_lenited, "εν"), template("yē", :tc2, "e", :tc3_lenited, "en")]
          end

          def _imperfect_second_plural_masculine
            [template("ιη", :c2, "ε", :c3_lenited, "τυν"), template("yē", :tc2, "e", :tc3_lenited, "tun")]
          end

          def _imperfect_second_plural_feminine
            [template("ιη", :c2, "ε", :c3_lenited, "σ̄ιν"), template("yē", :tc2, "e", :tc3_lenited, "šin")]
          end

          def _pf_subjunctive_first_singular
            ["в̄η" + present_stem(long_vowel: false), "vē" + present_stem_transliterated(long_vowel: false)]
          end

          def _pf_subjunctive_first_plural
            ["в̄ανη" + present_stem(long_vowel: false), "vanē" + present_stem_transliterated(long_vowel: false)]
          end

          def _pf_subjunctive_second
            ["в̄ατη" + present_stem(long_vowel: false), "vatē" + present_stem_transliterated(long_vowel: false)]
          end

          def _impf_subjunctive_first_singular
            ["η" + present_stem + "α", "'ē" + present_stem_transliterated + "a"]
          end

          def _impf_subjunctive_second_singular_masculine
            if root.tv == "ā"
              ["τει" + present_stem + "α", "tī" + present_stem_transliterated + "a"]
            else
              ["τη" + present_stem + "α", "tē" + present_stem_transliterated + "a"]
            end
          end

          def _impf_subjunctive_second_singular_feminine
            if root.tv == "ā"
              ["τει" + present_stem + "ια", "tī" + present_stem_transliterated + "iya"]
            else
              ["τη" + present_stem + "ια", "tē" + present_stem_transliterated + "iya"]
            end
          end

          def _impf_subjunctive_third_singular_masculine
            if root.tv == "ā"
              ["ιει" + present_stem + "α", "yī" + present_stem_transliterated + "a"]
            else
              ["ιη" + present_stem + "α", "yē" + present_stem_transliterated + "a"]
            end
          end

          def _impf_subjunctive_third_singular_feminine
            if root.tv == "ā"
              ["ιει" + present_stem + "ια", "yī" + present_stem_transliterated + "iya"]
            else
              ["ιη" + present_stem + "ια", "yē" + present_stem_transliterated + "iya"]
            end
          end

          def _impf_subjunctive_first_plural
            if root.tv == "ā"
              ["νει" + present_stem + "υ'α", "nī" + present_stem_transliterated + "uwa"]
            else
              ["νη" + present_stem + "υ'α", "nē" + present_stem_transliterated + "uwa"]
            end
          end

          def _impf_subjunctive_second_plural
            if root.tv == "ā"
              ["τει" + present_stem + "υ'α", "tī" + present_stem_transliterated + "uwa"]
            else
              ["τη" + present_stem + "υ'α", "tē" + present_stem_transliterated + "uwa"]
            end
          end

          def _impf_subjunctive_third_plural
            if root.tv == "ā"
              ["ιει" + present_stem + "υ'α", "yī" + present_stem_transliterated + "uwa"]
            else
              ["ιη" + present_stem + "υ'α", "yē" + present_stem_transliterated + "uwa"]
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

          def _passive_participle
            [template("μη", :c2, "ου", :c3), template("mē", :tc2, "ū", :tc3)]
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
