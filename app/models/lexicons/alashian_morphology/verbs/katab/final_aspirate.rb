require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Katab
        module FinalAspirate
          include Katab::Regular

          def subtype
            "C3 = PH/TH/KH/TSH/ČH"
          end

          def _present_second_singular_feminine
            if root.tv == "ā"
              ["τι" + present_stem(long_vowel: false, suffix: "ει"), "ti" + present_stem_transliterated(long_vowel: false, suffix: "ī")]
            else
              ["τα" + present_stem(long_vowel: false, suffix: "ει"), "ta" + present_stem_transliterated(long_vowel: false, suffix: "ī")]
            end
          end

          def _present_third_singular_feminine
            if root.tv == "ā"
              ["ι" + present_stem(long_vowel: false, suffix: "ει"), "yi" + present_stem_transliterated(long_vowel: false, suffix: "ī")]
            else
              ["ια" + present_stem(long_vowel: false, suffix: "ει"), "ya" + present_stem_transliterated(long_vowel: false, suffix: "ī")]
            end
          end

          def _present_first_plural
            if root.tv == "ā"
              ["νι" + present_stem(long_vowel: false, suffix: "ου"), "ni" + present_stem_transliterated(long_vowel: false, suffix: "ū")]
            else
              ["να" + present_stem(long_vowel: false, suffix: "ου"), "na" + present_stem_transliterated(long_vowel: false, suffix: "ū")]
            end
          end

          def _present_second_plural
            if root.tv == "ā"
              ["τι" + present_stem(long_vowel: false, suffix: "ου"), "ti" + present_stem_transliterated(long_vowel: false, suffix: "ū")]
            else
              ["τα" + present_stem(long_vowel: false, suffix: "ου"), "ta" + present_stem_transliterated(long_vowel: false, suffix: "ū")]
            end
          end

          def _present_third_plural
            if root.tv == "ā"
              ["ι" + present_stem(long_vowel: false, suffix: "ου"), "yi" + present_stem_transliterated(long_vowel: false, suffix: "ū")]
            else
              ["ια" + present_stem(long_vowel: false, suffix: "ου"), "ya" + present_stem_transliterated(long_vowel: false, suffix: "ū")]
            end
          end

          def _preterite_first_singular
            [template(:c1, "α", :c2_lenited, :c3, "ωτ"), template(:tc1, "a", :tc2_lenited, :tc3, "āt")]
          end

          def _preterite_second_singular_masculine
            [template(:c1, "α", :c2_lenited, :c3, "αττα"), template(:tc1, "a", :tc2_lenited, :tc3, "əttha")]
          end

          def _preterite_second_singular_feminine
            [template(:c1, "α", :c2_lenited, :c3, "ατζζε"), template(:tc1, "a", :tc2_lenited, :tc3, "əčhe")]
          end

          def _preterite_third_singular_masculine
            [template(:c1, "α", :c2, "α", :c3), template(:tc1, "a", :tc2, "ə", :tc3)]
          end

          def _preterite_third_singular_feminine
            if epenthetic_vowel?
              [template(:c1, "α", :c2, "α", :c3, "ω"), template(:tc1, "a", :tc2, "ə", :tc3, "ā")]
            else
              [template(:c1, :c2, "α", :c3, "ω"), template(:tc1, :tc2, "ə", :tc3, "ā")]
            end
          end

          def _preterite_first_plural
            if epenthetic_vowel?
              [template(:c1, "α", :c2, "α", :c3_unaspirated, "νω"), template(:tc1, "a", :tc2, "ə", :tc3_unaspirated, "nā")]
            else
              [template(:c1, :c2, "α", :c3_unaspirated, "νω"), template(:tc1, :tc2, "ə", :tc3_unaspirated, "nā")]
            end
          end

          def _preterite_second_plural_masculine
            [template(:c1, "α", :c2_lenited, :c3, "αττυν"), template(:tc1, "a", :tc2_lenited, :tc3, "əthun")]
          end

          def _preterite_second_plural_feminine
            [template(:c1, "α", :c2_lenited, :c3, "ατζζιν"), template(:tc1, "a", :tc2_lenited, :tc3, "əčhin")]
          end

          def _preterite_third_plural
            if epenthetic_vowel?
              [template(:c1, "α", :c2, "α", :c3, "ου"), template(:tc1, "a", :tc2, "ə", :tc3, "ū")]
            else
              [template(:c1, :c2, "α", :c3, "ου"), template(:tc1, :tc2, "ə", :tc3, "ū")]
            end
          end

          def _imperfect_first_singular
            [template(:c1, "ιη", :c2, "α", :c3), template(:tc1, "ie", :tc2, "ə", :tc3)]
          end

          def _imperfect_second_singular_masculine
            [template(:c1, "ιη", :c2_lenited, :c3, "ετ"), template(:tc1, "ie", :tc2_lenited, :tc3, "et")]
          end

          def _imperfect_second_singular_feminine
            [template(:c1, "ιη", :c2_lenited, :c3, "ες̄"), template(:tc1, "ie", :tc2_lenited, :tc3, "eš")]
          end

          def _imperfect_third_singular_masculine
            [template(:c1, "η", :c2, "α", :c3), template(:tc1, "ē", :tc2, "ə", :tc3)]
          end

          def _imperfect_third_singular_feminine
            [template(:c1, "η", :c2_lenited, :c3, "ω"), template(:tc1, "ē", :tc2_lenited, :tc3, "ā")]
          end

          def _imperfect_first_plural
            [template(:c1, "ιη", :c2_lenited, :c3, "εν"), template(:tc1, "ie", :tc2_lenited, :tc3, "en")]
          end

          def _imperfect_second_plural_masculine
            [template(:c1, "ιη", :c2_lenited, :c3, "αττυν"), template(:tc1, "ie", :tc2_lenited, :tc3, "əthun")]
          end

          def _imperfect_second_plural_feminine
            [template(:c1, "ιη", :c2_lenited, :c3, "ατζζιν"), template(:tc1, "ie", :tc2_lenited, :tc3, "əčhin")]
          end

          def _imperfect_third_plural
            [template(:c1, "η", :c2_lenited, :c3, "ου"), template(:tc1, "ē", :tc2_lenited, :tc3, "ū")]
          end

          def _impf_subjunctive_first_singular
            ["α" + present_stem(suffix: "α"), "'a" + present_stem_transliterated(suffix: "a")]
          end

          def _impf_subjunctive_second_singular_masculine
            if root.tv == "ā"
              ["τι" + present_stem(suffix: "α"), "ti" + present_stem_transliterated(suffix: "a")]
            else
              ["τα" + present_stem(suffix: "α"), "ta" + present_stem_transliterated(suffix: "a")]
            end
          end

          def _impf_subjunctive_second_singular_feminine
            if root.tv == "ā"
              ["τι" + present_stem(suffix: "ια"), "ti" + present_stem_transliterated(suffix: "iya")]
            else
              ["τα" + present_stem(suffix: "ια"), "ta" + present_stem_transliterated(suffix: "iya")]
            end
          end

          def _impf_subjunctive_third_singular_masculine
            if root.tv == "ā"
              ["ι" + present_stem(suffix: "α"), "yi" + present_stem_transliterated(suffix: "a")]
            else
              ["ια" + present_stem(suffix: "α"), "ya" + present_stem_transliterated(suffix: "a")]
            end
          end

          def _impf_subjunctive_third_singular_feminine
            if root.tv == "ā"
              ["ι" + present_stem(suffix: "ια"), "yi" + present_stem_transliterated(suffix: "iya")]
            else
              ["ια" + present_stem(suffix: "ια"), "ya" + present_stem_transliterated(suffix: "iya")]
            end
          end

          def _impf_subjunctive_first_plural
            if root.tv == "ā"
              ["νι" + present_stem(suffix: "υ'α"), "ni" + present_stem_transliterated(suffix: "uwa")]
            else
              ["να" + present_stem(suffix: "υ'α"), "na" + present_stem_transliterated(suffix: "uwa")]
            end
          end

          def _impf_subjunctive_second_plural
            if root.tv == "ā"
              ["τι" + present_stem(suffix: "υ'α"), "ti" + present_stem_transliterated(suffix: "uwa")]
            else
              ["τα" + present_stem(suffix: "υ'α"), "ta" + present_stem_transliterated(suffix: "uwa")]
            end
          end

          def _impf_subjunctive_third_plural
            if root.tv == "ā"
              ["ι" + present_stem(suffix: "υ'α"), "yi" + present_stem_transliterated(suffix: "uwa")]
            else
              ["ια" + present_stem(suffix: "υ'α"), "ya" + present_stem_transliterated(suffix: "uwa")]
            end
          end

          def _volitive_first_singular
            ["α" + present_stem(suffix: "αννα"), "'a" + present_stem_transliterated(suffix: "anna")]
          end

          def _volitive_second_singular_masculine
            if root.tv == "ā"
              ["τι" + present_stem(suffix: "αννα"), "ti" + present_stem_transliterated(suffix: "anna")]
            else
              ["τα" + present_stem(suffix: "αννα"), "ta" + present_stem_transliterated(suffix: "anna")]
            end
          end

          def _volitive_third_singular_masculine
            if root.tv == "ā"
              ["ι" + present_stem(suffix: "αννα"), "yi" + present_stem_transliterated(suffix: "anna")]
            else
              ["ια" + present_stem(suffix: "αννα"), "ya" + present_stem_transliterated(suffix: "anna")]
            end
          end

          def _active_participle
            [template(:c1, "ου", :c2, "α", :c3), template(:tc1, "ū", :tc2, "ə", :tc3)]
          end

          private

          def present_stem(long_vowel: true, suffix: nil)
            c1 = root.medial_plosive? ? :c1_lenited : :c1
            v = long_vowel ? :v : "α"

            # Pass suffix to template to properly handle aspiration
            if suffix
              template(c1, :c2, v, :c3, suffix)
            else
              template(c1, :c2, v, :c3)
            end
          end

          def present_stem_transliterated(long_vowel: true, suffix: nil)
            c1 = root.medial_plosive? ? :tc1_lenited : :tc1
            v = long_vowel ? :tv : "ə"

            # Pass suffix to template to properly handle aspiration
            if suffix
              template(c1, :tc2, v, :tc3, suffix)
            else
              template(c1, :tc2, v, :tc3)
            end
          end
        end
      end
    end
  end
end
