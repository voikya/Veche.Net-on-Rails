require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Katab
        module MedialGlottal
          include Katab::Regular

          def subtype
            "C2 = '/H"
          end

          def _present_first_singular
            if root.initial_aspiratable?
              ["α" + present_stem, "'ə" + present_stem_transliterated]
            else
              ["α" + present_stem, "'a" + present_stem_transliterated]
            end
          end

          def _present_second_singular_masculine
            if root.initial_aspiratable?
              ["τα" + present_stem, "tə" + present_stem_transliterated]
            elsif root.tv == "ā"
              ["τι" + present_stem, "ti" + present_stem_transliterated]
            else
              ["τα" + present_stem, "ta" + present_stem_transliterated]
            end
          end

          def _present_second_singular_feminine
            if root.initial_aspiratable?
              ["τα" + present_stem(long_vowel: false) + "ει", "tə" + present_stem_transliterated(long_vowel: false) + "ī"]
            elsif root.tv == "ā"
              ["τι" + present_stem(long_vowel: false) + "ει", "ti" + present_stem_transliterated(long_vowel: false) + "ī"]
            else
              ["τα" + present_stem(long_vowel: false) + "ει", "ta" + present_stem_transliterated(long_vowel: false) + "ī"]
            end
          end

          def _present_third_singular_masculine
            if root.initial_aspiratable?
              ["ια" + present_stem, "yə" + present_stem_transliterated]
            elsif root.tv == "ā"
              ["ι" + present_stem, "yi" + present_stem_transliterated]
            else
              ["ια" + present_stem, "ya" + present_stem_transliterated]
            end
          end

          def _present_third_singular_feminine
            if root.initial_aspiratable?
              ["ια" + present_stem(long_vowel: false) + "ει", "yə" + present_stem_transliterated(long_vowel: false) + "ī"]
            elsif root.tv == "ā"
              ["ι" + present_stem(long_vowel: false) + "ει", "yi" + present_stem_transliterated(long_vowel: false) + "ī"]
            else
              ["ια" + present_stem(long_vowel: false) + "ει", "ya" + present_stem_transliterated(long_vowel: false) + "ī"]
            end
          end

          def _present_first_plural
            if root.initial_aspiratable?
              ["να" + present_stem(long_vowel: false) + "ου", "nə" + present_stem_transliterated(long_vowel: false) + "ū"]
            elsif root.tv == "ā"
              ["νι" + present_stem(long_vowel: false) + "ου", "ni" + present_stem_transliterated(long_vowel: false) + "ū"]
            else
              ["να" + present_stem(long_vowel: false) + "ου", "na" + present_stem_transliterated(long_vowel: false) + "ū"]
            end
          end

          def _present_second_plural
            if root.initial_aspiratable?
              ["τα" + present_stem(long_vowel: false) + "ου", "tə" + present_stem_transliterated(long_vowel: false) + "ū"]
            elsif root.tv == "ā"
              ["τι" + present_stem(long_vowel: false) + "ου", "ti" + present_stem_transliterated(long_vowel: false) + "ū"]
            else
              ["τα" + present_stem(long_vowel: false) + "ου", "ta" + present_stem_transliterated(long_vowel: false) + "ū"]
            end
          end

          def _present_third_plural
            if root.initial_aspiratable?
              ["ια" + present_stem(long_vowel: false) + "ου", "yə" + present_stem_transliterated(long_vowel: false) + "ū"]
            elsif root.tv == "ā"
              ["ι" + present_stem(long_vowel: false) + "ου", "yi" + present_stem_transliterated(long_vowel: false) + "ū"]
            else
              ["ια" + present_stem(long_vowel: false) + "ου", "ya" + present_stem_transliterated(long_vowel: false) + "ū"]
            end
          end

          def _preterite_first_singular
            c2 = root.tc2 == "'" ? "'" : root.c2
            [template(:c1, "α", c2, "α", :c3, "ετ"), template(:tc1, "a", :tc2, "a", :tc3, "et")]
          end

          def _preterite_second_singular_masculine
            c2 = root.tc2 == "'" ? "'" : root.c2
            [template(:c1, "α", c2, "α", :c3_lenited, "τα"), template(:tc1, "a", :tc2, "a", :tc3_lenited, "ta")]
          end

          def _preterite_second_singular_feminine
            c2 = root.tc2 == "'" ? "'" : root.c2
            [template(:c1, "α", c2, "α", :c3_lenited, "σ̄ε"), template(:tc1, "a", :tc2, "a", :tc3_lenited, "še")]
          end

          def _preterite_third_singular_masculine
            c2 = root.tc2 == "'" ? "'" : root.c2
            [template(:c1, "α", c2, "α", :c3), template(:tc1, "a", :tc2, "a", :tc3)]
          end

          def _preterite_second_plural_masculine
            c2 = root.tc2 == "'" ? "'" : root.c2
            [template(:c1, "α", c2, "α", :c3_lenited, "τυν"), template(:tc1, "a", :tc2, "a", :tc3_lenited, "tun")]
          end

          def _preterite_second_plural_feminine
            c2 = root.tc2 == "'" ? "'" : root.c2
            [template(:c1, "α", c2, "α", :c3_lenited, "σ̄ιν"), template(:tc1, "a", :tc2, "a", :tc3_lenited, "šin")]
          end

          def _imperfect_first_singular
            [template(:c1, "ιη", :c3_lenited), template(:tc1, "ie", :tc3_lenited)]
          end

          def _imperfect_second_singular_masculine
            [template(:c1, "ιη", :c3_lenited, "ετ"), template(:tc1, "ie", :tc3_lenited, "et")]
          end

          def _imperfect_second_singular_feminine
            [template(:c1, "ιη", :c3_lenited, "ες̄"), template(:tc1, "ie", :tc3_lenited, "eš")]
          end

          def _imperfect_third_singular_masculine
            [template(:c1, "η", :c3), template(:tc1, "ē", :tc3)]
          end

          def _imperfect_third_singular_feminine
            [template(:c1, "η", :c3, "ω"), template(:tc1, "ē", :tc3, "ā")]
          end

          def _imperfect_first_plural
            [template(:c1, "ιη", :c3_lenited, "εν"), template(:tc1, "ie", :tc3_lenited, "en")]
          end

          def _imperfect_second_plural_masculine
            [template(:c1, "ιη", :c3_lenited, "τυν"), template(:tc1, "ie", :tc3_lenited, "tun")]
          end

          def _imperfect_second_plural_feminine
            [template(:c1, "ιη", :c3_lenited, "σ̄ιν"), template(:tc1, "ie", :tc3_lenited, "šin")]
          end

          def _imperfect_third_plural
            [template(:c1, "η", :c3, "ου"), template(:tc1, "ē", :tc3, "ū")]
          end


          def _pf_subjunctive_first_singular
            if root.initial_aspiratable?
              ["в̄α" + present_stem(long_vowel: false), "və" + present_stem_transliterated(long_vowel: false)]
            else
              ["в̄α" + present_stem(long_vowel: false), "va" + present_stem_transliterated(long_vowel: false)]
            end
          end

          def _pf_subjunctive_first_plural
            if root.initial_aspiratable?
              ["в̄ανα" + present_stem(long_vowel: false), "vanə" + present_stem_transliterated(long_vowel: false)]
            else
              ["в̄ανα" + present_stem(long_vowel: false), "vana" + present_stem_transliterated(long_vowel: false)]
            end
          end

          def _pf_subjunctive_second
            if root.initial_aspiratable?
              ["в̄ατα" + present_stem(long_vowel: false), "vatə" + present_stem_transliterated(long_vowel: false)]
            else
              ["в̄ατα" + present_stem(long_vowel: false), "vata" + present_stem_transliterated(long_vowel: false)]
            end
          end

          def _impf_subjunctive_first_singular
            if root.initial_aspiratable?
              ["α" + present_stem + "α", "'ə" + present_stem_transliterated + "a"]
            else
              ["α" + present_stem + "α", "'a" + present_stem_transliterated + "a"]
            end
          end

          def _impf_subjunctive_second_singular_masculine
            if root.initial_aspiratable?
              ["τα" + present_stem + "α", "tə" + present_stem_transliterated + "a"]
            elsif root.tv == "ā"
              ["τι" + present_stem + "α", "ti" + present_stem_transliterated + "a"]
            else
              ["τα" + present_stem + "α", "ta" + present_stem_transliterated + "a"]
            end
          end

          def _impf_subjunctive_second_singular_feminine
            if root.initial_aspiratable?
              ["τα" + present_stem + "ια", "tə" + present_stem_transliterated + "iya"]
            elsif root.tv == "ā"
              ["τι" + present_stem + "ια", "ti" + present_stem_transliterated + "iya"]
            else
              ["τα" + present_stem + "ια", "ta" + present_stem_transliterated + "iya"]
            end
          end

          def _impf_subjunctive_third_singular_masculine
            if root.initial_aspiratable?
              ["ια" + present_stem + "α", "yə" + present_stem_transliterated + "a"]
            elsif root.tv == "ā"
              ["ι" + present_stem + "α", "yi" + present_stem_transliterated + "a"]
            else
              ["ια" + present_stem + "α", "ya" + present_stem_transliterated + "a"]
            end
          end

          def _impf_subjunctive_third_singular_feminine
            if root.initial_aspiratable?
              ["ια" + present_stem + "ια", "yə" + present_stem_transliterated + "iya"]
            elsif root.tv == "ā"
              ["ι" + present_stem + "ια", "yi" + present_stem_transliterated + "iya"]
            else
              ["ια" + present_stem + "ια", "ya" + present_stem_transliterated + "iya"]
            end
          end

          def _impf_subjunctive_first_plural
            if root.initial_aspiratable?
              ["να" + present_stem + "υ'α", "nə" + present_stem_transliterated + "uwa"]
            elsif root.tv == "ā"
              ["νι" + present_stem + "υ'α", "ni" + present_stem_transliterated + "uwa"]
            else
              ["να" + present_stem + "υ'α", "na" + present_stem_transliterated + "uwa"]
            end
          end

          def _impf_subjunctive_second_plural
            if root.initial_aspiratable?
              ["τα" + present_stem + "υ'α", "tə" + present_stem_transliterated + "uwa"]
            elsif root.tv == "ā"
              ["τι" + present_stem + "υ'α", "ti" + present_stem_transliterated + "uwa"]
            else
              ["τα" + present_stem + "υ'α", "ta" + present_stem_transliterated + "uwa"]
            end
          end

          def _impf_subjunctive_third_plural
            if root.initial_aspiratable?
              ["ια" + present_stem + "υ'α", "yə" + present_stem_transliterated + "uwa"]
            elsif root.tv == "ā"
              ["ι" + present_stem + "υ'α", "yi" + present_stem_transliterated + "uwa"]
            else
              ["ια" + present_stem + "υ'α", "ya" + present_stem_transliterated + "uwa"]
            end
          end

          def _imperative_feminine_singular
            [template(:c1, :v, :c3, "ει"), template(:tc1, :tv, :tc3, "ī")]
          end

          def _imperative_plural
            [template(:c1, :v, :c3, "ου"), template(:tc1, :tv, :tc3, "ū")]
          end

          def _passive_participle
            prefix = root.initial_aspiratable? ? "mə" : "ma"
            c1 = root.tc1 == "č" ? "τζζ" : root.c1 * 2
            tc1 = root.initial_aspiratable? ? root.tc1 + "h" : root.tc1 * 2

            [template("μα", c1, "ου", :c3), template(prefix, tc1, "ū", :tc3)]
          end

          private

          def present_stem(long_vowel: true)
            c1 = root.tc1 == "č" ? "τζζ" : root.c1 * 2
            v = long_vowel ? :v : :short_v

            template(c1, v, :c3)
          end

          def present_stem_transliterated(long_vowel: true)
            c1 = root.initial_aspiratable? ? root.tc1 + "h" : root.tc1 * 2
            v = long_vowel ? :tv : :short_tv

            template(c1, v, :tc3)
          end
        end
      end
    end
  end
end
