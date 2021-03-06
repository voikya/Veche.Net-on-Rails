require_relative 'final_aspirate'

module Morphology
  module Alashian
    module Verbs
      module Katab
        module InitialWAndFinalAspirate
          include Katab::FinalAspirate

          def subtype
            "C1 = W, C3 = PH/TH/KH/TSH/ČH"
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
              ["τει" + present_stem(long_vowel: false, suffix: "ει"), "tī" + present_stem_transliterated(long_vowel: false, suffix: "ī")]
            else
              ["του" + present_stem(long_vowel: false, suffix: "ει"), "tū" + present_stem_transliterated(long_vowel: false, suffix: "ī")]
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
              ["ιει" + present_stem(long_vowel: false, suffix: "ει"), "yī" + present_stem_transliterated(long_vowel: false, suffix: "ī")]
            else
              ["ιου" + present_stem(long_vowel: false, suffix: "ει"), "yū" + present_stem_transliterated(long_vowel: false, suffix: "ī")]
            end
          end

          def _present_first_plural
            if root.tv == "ā"
              ["νει" + present_stem(long_vowel: false, suffix: "ου"), "nī" + present_stem_transliterated(long_vowel: false, suffix: "ī")]
            else
              ["νου" + present_stem(long_vowel: false, suffix: "ου"), "nū" + present_stem_transliterated(long_vowel: false, suffix: "ī")]
            end
          end

          def _present_second_plural
            if root.tv == "ā"
              ["τει" + present_stem(long_vowel: false, suffix: "ου"), "tī" + present_stem_transliterated(long_vowel: false, suffix: "ī")]
            else
              ["του" + present_stem(long_vowel: false, suffix: "ου"), "tū" + present_stem_transliterated(long_vowel: false, suffix: "ī")]
            end
          end

          def _present_third_plural
            if root.tv == "ā"
              ["ιει" + present_stem(long_vowel: false, suffix: "ου"), "yī" + present_stem_transliterated(long_vowel: false, suffix: "ī")]
            else
              ["ιου" + present_stem(long_vowel: false, suffix: "ου"), "yū" + present_stem_transliterated(long_vowel: false, suffix: "ī")]
            end
          end

          def _preterite_first_singular
            [template("в̄α", :c2_lenited, :c3, "ωτ"), template("va", :tc2_lenited, :tc3, "āt")]
          end

          def _preterite_second_singular_masculine
            [template("в̄α", :c2_lenited, :c3, "αττα"), template("va", :tc2_lenited, :tc3, "əttha")]
          end

          def _preterite_second_singular_feminine
            [template("в̄α", :c2_lenited, :c3, "ατζζε"), template("va", :tc2_lenited, :tc3, "əčhe")]
          end

          def _preterite_third_singular_masculine
            [template("в̄α", :c2, "α", :c3), template("va", :tc2, "ə", :tc3)]
          end

          def _preterite_third_singular_feminine
            [template("в̄α", :c2, "α", :c3, "ω"), template("va", :tc2, "ə", :tc3, "ā")]
          end

          def _preterite_first_plural
            [template("в̄α", :c2, "α", :c3_unaspirated, "νω"), template("va", :tc2, "ə", :tc3_unaspirated, "nā")]
          end

          def _preterite_second_plural_masculine
            [template("в̄α", :c2_lenited, :c3, "αττυν"), template("va", :tc2_lenited, :tc3, "əthun")]
          end

          def _preterite_second_plural_feminine
            [template("в̄α", :c2_lenited, :c3, "ατζζιν"), template("va", :tc2_lenited, :tc3, "əčhin")]
          end

          def _preterite_third_plural
            [template("в̄α", :c2, "α", :c3, "ου"), template("va", :tc2, "ə", :tc3, "ū")]
          end

          def _imperfect_first_singular
            [template("ιη", :c2, "α", :c3), template("yē", :tc2, "ə", :tc3)]
          end

          def _imperfect_second_singular_masculine
            [template("ιη", :c2_lenited, :c3, "ετ"), template("yē", :tc2_lenited, :tc3, "et")]
          end

          def _imperfect_second_singular_feminine
            [template("ιη", :c2_lenited, :c3, "ες̄"), template("yē", :tc2_lenited, :tc3, "eš")]
          end

          def _imperfect_third_singular_masculine
            [template("ιη", :c2, "α", :c3), template("yē", :tc2, "ə", :tc3)]
          end

          def _imperfect_third_singular_feminine
            [template("ιη", :c2_lenited, :c3, "ω"), template("yē", :tc2_lenited, :tc3, "ā")]
          end

          def _imperfect_first_plural
            [template("ιη", :c2_lenited, :c3, "εν"), template("yē", :tc2_lenited, :tc3, "en")]
          end

          def _imperfect_second_plural_masculine
            [template("ιη", :c2_lenited, :c3, "αττυν"), template("yē", :tc2_lenited, :tc3, "əthun")]
          end

          def _imperfect_second_plural_feminine
            [template("ιη", :c2_lenited, :c3, "ατζζιν"), template("yē", :tc2_lenited, :tc3, "əčhin")]
          end

          def _imperfect_third_plural
            [template("ιη", :c2_lenited, :c3, "ου"), template("yē", :tc2_lenited, :tc3, "ū")]
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
            ["ου" + present_stem(suffix: "α"), "'ū" + present_stem_transliterated(suffix: "a")]
          end

          def _impf_subjunctive_second_singular_masculine
            if root.tv == "ā"
              ["τει" + present_stem(suffix: "α"), "tī" + present_stem_transliterated(suffix: "a")]
            else
              ["του" + present_stem(suffix: "α"), "tū" + present_stem_transliterated(suffix: "a")]
            end
          end

          def _impf_subjunctive_second_singular_feminine
            if root.tv == "ā"
              ["τει" + present_stem(suffix: "ια"), "tī" + present_stem_transliterated(suffix: "iya")]
            else
              ["του" + present_stem(suffix: "ια"), "tū" + present_stem_transliterated(suffix: "iya")]
            end
          end

          def _impf_subjunctive_third_singular_masculine
            if root.tv == "ā"
              ["ιει" + present_stem(suffix: "α"), "yī" + present_stem_transliterated(suffix: "a")]
            else
              ["ιου" + present_stem(suffix: "α"), "yū" + present_stem_transliterated(suffix: "a")]
            end
          end

          def _impf_subjunctive_third_singular_feminine
            if root.tv == "ā"
              ["ιει" + present_stem(suffix: "ια"), "yī" + present_stem_transliterated(suffix: "iya")]
            else
              ["ιου" + present_stem(suffix: "ια"), "yū" + present_stem_transliterated(suffix: "iya")]
            end
          end

          def _impf_subjunctive_first_plural
            if root.tv == "ā"
              ["νει" + present_stem(suffix: "υ'α"), "nī" + present_stem_transliterated(suffix: "uwa")]
            else
              ["νου" + present_stem(suffix: "υ'α"), "nū" + present_stem_transliterated(suffix: "uwa")]
            end
          end

          def _impf_subjunctive_second_plural
            if root.tv == "ā"
              ["τει" + present_stem(suffix: "υ'α"), "tī" + present_stem_transliterated(suffix: "uwa")]
            else
              ["του" + present_stem(suffix: "υ'α"), "tū" + present_stem_transliterated(suffix: "uwa")]
            end
          end

          def _impf_subjunctive_third_plural
            if root.tv == "ā"
              ["ιει" + present_stem(suffix: "υ'α"), "yī" + present_stem_transliterated(suffix: "uwa")]
            else
              ["ιου" + present_stem(suffix: "υ'α"), "yū" + present_stem_transliterated(suffix: "uwa")]
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
            [template("в̄ου", :c2, "α", :c3), template("vū", :tc2, "ə", :tc3)]
          end

          def _passive_participle
            [template("μου", :c2, "ου", :c3), template("mū", :tc2, "ū", :tc3)]
          end

          private

          def present_stem(long_vowel: true, suffix: nil)
            v = long_vowel ? :v : "α"

            # Pass suffix to template to properly handle aspiration
            if suffix
              template(:c2, v, :c3, suffix)
            else
              template(:c2, v, :c3)
            end
          end

          def present_stem_transliterated(long_vowel: true, suffix: nil)
            v = long_vowel ? :tv : "ə"

            # Pass suffix to template to properly handle aspiration
            if suffix
              template(:tc2, v, :tc3, suffix)
            else
              template(:tc2, v, :tc3)
            end
          end
        end
      end
    end
  end
end
