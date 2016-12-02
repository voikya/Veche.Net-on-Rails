require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Katab
        module InitialGlottal
          include Katab::Regular

          def subtype
            "C1 = '/H"
          end

          def _present_first_singular
            if root.medial_aspiratable?
              ["α" + present_stem, "'ə" + present_stem_transliterated]
            else
              ["α" + present_stem, "'a" + present_stem_transliterated]
            end
          end

          def _present_second_singular_masculine
            if root.medial_aspiratable?
              ["τα" + present_stem, "tə" + present_stem_transliterated]
            elsif root.tv == "ā"
              ["τι" + present_stem, "ti" + present_stem_transliterated]
            else
              ["τα" + present_stem, "ta" + present_stem_transliterated]
            end
          end

          def _present_second_singular_feminine
            if root.medial_aspiratable?
              ["τα" + present_stem(long_vowel: false) + "ει", "tə" + present_stem_transliterated(long_vowel: false) + "ī"]
            elsif root.tv == "ā"
              ["τι" + present_stem(long_vowel: false) + "ει", "ti" + present_stem_transliterated(long_vowel: false) + "ī"]
            else
              ["τα" + present_stem(long_vowel: false) + "ει", "ta" + present_stem_transliterated(long_vowel: false) + "ī"]
            end
          end

          def _present_third_singular_masculine
            if root.medial_aspiratable?
              ["ια" + present_stem, "yə" + present_stem_transliterated]
            elsif root.tv == "ā"
              ["ι" + present_stem, "yi" + present_stem_transliterated]
            else
              ["ια" + present_stem, "ya" + present_stem_transliterated]
            end
          end

          def _present_second_singular_feminine
            if root.medial_aspiratable?
              ["ια" + present_stem(long_vowel: false) + "ει", "yə" + present_stem_transliterated(long_vowel: false) + "ī"]
            elsif root.tv == "ā"
              ["ι" + present_stem(long_vowel: false) + "ει", "yi" + present_stem_transliterated(long_vowel: false) + "ī"]
            else
              ["ια" + present_stem(long_vowel: false) + "ει", "ya" + present_stem_transliterated(long_vowel: false) + "ī"]
            end
          end

          def _present_first_plural
            if root.medial_aspiratable?
              ["να" + present_stem(long_vowel: false) + "ου", "nə" + present_stem_transliterated(long_vowel: false) + "ū"]
            elsif root.tv == "ā"
              ["νι" + present_stem(long_vowel: false) + "ου", "ni" + present_stem_transliterated(long_vowel: false) + "ū"]
            else
              ["να" + present_stem(long_vowel: false) + "ου", "na" + present_stem_transliterated(long_vowel: false) + "ū"]
            end
          end

          def _present_second_plural
            if root.medial_aspiratable?
              ["τα" + present_stem(long_vowel: false) + "ου", "tə" + present_stem_transliterated(long_vowel: false) + "ū"]
            elsif root.tv == "ā"
              ["τι" + present_stem(long_vowel: false) + "ου", "ti" + present_stem_transliterated(long_vowel: false) + "ū"]
            else
              ["τα" + present_stem(long_vowel: false) + "ου", "ta" + present_stem_transliterated(long_vowel: false) + "ū"]
            end
          end

          def _present_third_plural
            if root.medial_aspiratable?
              ["ια" + present_stem(long_vowel: false) + "ου", "yə" + present_stem_transliterated(long_vowel: false) + "ū"]
            elsif root.tv == "ā"
              ["ι" + present_stem(long_vowel: false) + "ου", "yi" + present_stem_transliterated(long_vowel: false) + "ū"]
            else
              ["ια" + present_stem(long_vowel: false) + "ου", "ya" + present_stem_transliterated(long_vowel: false) + "ū"]
            end
          end

          def _imperfect_first_singular
            [template("ιε", :c2, "ε", :c3_lenited), template("ye", :tc2, "e", :tc3_lenited)]
          end

          def _imperfect_second_singular_masculine
            [template("ιε", :c2, "ε", :c3_lenited, "ετ"), template("ye", :tc2, "e", :tc3_lenited, "et")]
          end

          def _imperfect_second_singular_feminine
            [template("ιε", :c2, "ε", :c3_lenited, "ες̄"), template("ye", :tc2, "e", :tc3_lenited, "eš")]
          end

          def _imperfect_first_plural
            [template("ιε", :c2, "ε", :c3_lenited, "εν"), template("ye", :tc2, "e", :tc3_lenited, "en")]
          end

          def _imperfect_second_plural_masculine
            [template("ιε", :c2, "ε", :c3_lenited, "τυν"), template("ye", :tc2, "e", :tc3_lenited, "tun")]
          end

          def _imperfect_second_plural_feminine
            [template("ιε", :c2, "ε", :c3_lenited, "σ̄ιν"), template("ye", :tc2, "e", :tc3_lenited, "šin")]
          end

          def _pf_subjunctive_first_singular
            if root.medial_aspiratable?
              ["в̄α" + present_stem(long_vowel: false), "və" + present_stem_transliterated(long_vowel: false)]
            else
              ["в̄α" + present_stem(long_vowel: false), "va" + present_stem_transliterated(long_vowel: false)]
            end
          end

          def _pf_subjunctive_first_plural
            if root.medial_aspiratable?
              ["в̄ανα" + present_stem(long_vowel: false), "vanə" + present_stem_transliterated(long_vowel: false)]
            else
              ["в̄ανα" + present_stem(long_vowel: false), "vana" + present_stem_transliterated(long_vowel: false)]
            end
          end

          def _pf_subjunctive_second
            if root.medial_aspiratable?
              ["в̄ατα" + present_stem(long_vowel: false), "vatə" + present_stem_transliterated(long_vowel: false)]
            else
              ["в̄ατα" + present_stem(long_vowel: false), "vata" + present_stem_transliterated(long_vowel: false)]
            end
          end

          def _impf_subjunctive_first_singular
            if root.medial_aspiratable?
              ["α" + present_stem + "α", "'ə" + present_stem_transliterated + "a"]
            else
              ["α" + present_stem + "α", "'a" + present_stem_transliterated + "a"]
            end
          end

          def _impf_subjunctive_second_singular_masculine
            if root.medial_aspiratable?
              ["τα" + present_stem + "α", "tə" + present_stem_transliterated + "a"]
            elsif root.tv == "ā"
              ["τι" + present_stem + "α", "ti" + present_stem_transliterated + "a"]
            else
              ["τα" + present_stem + "α", "ta" + present_stem_transliterated + "a"]
            end
          end

          def _impf_subjunctive_second_singular_feminine
            if root.medial_aspiratable?
              ["τα" + present_stem + "ια", "tə" + present_stem_transliterated + "iya"]
            elsif root.tv == "ā"
              ["τι" + present_stem + "ια", "ti" + present_stem_transliterated + "iya"]
            else
              ["τα" + present_stem + "ια", "ta" + present_stem_transliterated + "iya"]
            end
          end

          def _impf_subjunctive_third_singular_masculine
            if root.medial_aspiratable?
              ["ια" + present_stem + "α", "yə" + present_stem_transliterated + "a"]
            elsif root.tv == "ā"
              ["ι" + present_stem + "α", "yi" + present_stem_transliterated + "a"]
            else
              ["ια" + present_stem + "α", "ya" + present_stem_transliterated + "a"]
            end
          end

          def _impf_subjunctive_third_singular_feminine
            if root.medial_aspiratable?
              ["ια" + present_stem + "ια", "yə" + present_stem_transliterated + "iya"]
            elsif root.tv == "ā"
              ["ι" + present_stem + "ια", "yi" + present_stem_transliterated + "iya"]
            else
              ["ια" + present_stem + "ια", "ya" + present_stem_transliterated + "iya"]
            end
          end

          def _impf_subjunctive_first_plural
            if root.medial_aspiratable?
              ["να" + present_stem + "υ'α", "nə" + present_stem_transliterated + "uwa"]
            elsif root.tv == "ā"
              ["νι" + present_stem + "υ'α", "ni" + present_stem_transliterated + "uwa"]
            else
              ["να" + present_stem + "υ'α", "na" + present_stem_transliterated + "uwa"]
            end
          end

          def _impf_subjunctive_second_plural
            if root.medial_aspiratable?
              ["τα" + present_stem + "υ'α", "tə" + present_stem_transliterated + "uwa"]
            elsif root.tv == "ā"
              ["τι" + present_stem + "υ'α", "ti" + present_stem_transliterated + "uwa"]
            else
              ["τα" + present_stem + "υ'α", "ta" + present_stem_transliterated + "uwa"]
            end
          end

          def _impf_subjunctive_third_plural
            if root.medial_aspiratable?
              ["ια" + present_stem + "υ'α", "yə" + present_stem_transliterated + "uwa"]
            elsif root.tv == "ā"
              ["ι" + present_stem + "υ'α", "yi" + present_stem_transliterated + "uwa"]
            else
              ["ια" + present_stem + "υ'α", "ya" + present_stem_transliterated + "uwa"]
            end
          end

          def _imperative_masculine_singular
            [template(:c2, :v, :c3), template(:tc2, :tv, :tc3)]
          end

          def _imperative_feminine_singular
            [template(:c2, :v, :c3, "ει"), template(:tc2, :tv, :tc3, "ī")]
          end

          def _imperative_plural
            [template(:c2, :v, :c3, "ου"), template(:tc2, :tv, :tc3, "ū")]
          end

          def _passive_participle
            prefix = root.medial_aspiratable? ? "mə" : "ma"
            c2 = root.tc2 == "č" ? "τζζ" : root.c2 * 2
            tc2 = root.medial_aspiratable? ? root.tc2 + "h" : root.tc2 * 2

            [template("μα", c2, "ου", :c3), template(prefix, tc2, "ū", :tc3)]
          end

          private

          def present_stem(long_vowel: true)
            c2 = root.tc2 == "č" ? "τζζ" : root.c2 * 2
            v = long_vowel ? :v : :short_v

            template(c2, v, :c3)
          end

          def present_stem_transliterated(long_vowel: true)
            c2 = root.medial_aspiratable? ? root.tc2 + "h" : root.tc2 * 2
            v = long_vowel ? :tv : :short_tv

            template(c2, v, :tc3)
          end
        end
      end
    end
  end
end
