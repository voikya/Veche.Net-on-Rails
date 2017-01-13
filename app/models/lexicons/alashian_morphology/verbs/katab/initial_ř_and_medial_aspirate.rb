require_relative 'final_aspirate'

module Morphology
  module Alashian
    module Verbs
      module Katab
        module InitialRAndFinalAspirate
          include Katab::FinalAspirate

          def subtype
            "C1 = Ř, C3 = PH/TH/KH/TSH/ČH"
          end

          def _present_second_singular_masculine
            ["τε" + present_stem, "te" + present_stem_transliterated]
          end

          def _present_second_singular_feminine
            ["τε" + present_stem(long_vowel: false, suffix: "ει"), "te" + present_stem_transliterated(long_vowel: false, suffix: "ī")]
          end

          def _present_third_singular_masculine
            ["ιε" + present_stem, "ye" + present_stem_transliterated]
          end

          def _present_third_singular_feminine
            ["ιε" + present_stem(long_vowel: false, suffix: "ει"), "ye" + present_stem_transliterated(long_vowel: false, suffix: "ī")]
          end

          def _present_first_plural
            ["νε" + present_stem(long_vowel: false, suffix: "ου"), "ne" + present_stem_transliterated(long_vowel: false, suffix: "ū")]
          end

          def _present_second_plural
            ["τε" + present_stem(long_vowel: false, suffix: "ου"), "te" + present_stem_transliterated(long_vowel: false, suffix: "ū")]
          end

          def _present_third_plural
            ["ιε" + present_stem(long_vowel: false, suffix: "ου"), "ye" + present_stem_transliterated(long_vowel: false, suffix: "ū")]
          end

          def _imperfect_first_singular
            [template(:c1, "η", :c2, "α", :c3), template(:tc1, "ē", :tc2, "ə", :tc3)]
          end

          def _imperfect_second_singular_masculine
            [template(:c1, "η", :c2_lenited, :c3, "ετ"), template(:tc1, "ē", :tc2_lenited, :tc3, "et")]
          end

          def _imperfect_second_singular_feminine
            [template(:c1, "η", :c2_lenited, :c3, "ες̄"), template(:tc1, "ē", :tc2_lenited, :tc3, "eš")]
          end

          def _imperfect_first_plural
            [template(:c1, "η", :c2_lenited, :c3, "εν"), template(:tc1, "ē", :tc2_lenited, :tc3, "en")]
          end

          def _imperfect_second_plural_masculine
            [template(:c1, "η", :c2_lenited, :c3, "αττυν"), template(:tc1, "ē", :tc2_lenited, :tc3, "əthun")]
          end

          def _imperfect_second_plural_feminine
            [template(:c1, "η", :c2_lenited, :c3, "ατζζιν"), template(:tc1, "ē", :tc2_lenited, :tc3, "əčhin")]
          end

          def _impf_subjunctive_second_singular_masculine
            ["τε" + present_stem(suffix: "α"), "te" + present_stem_transliterated(suffix: "a")]
          end

          def _impf_subjunctive_second_singular_feminine
            ["τε" + present_stem(suffix: "ια"), "te" + present_stem_transliterated(suffix: "iya")]
          end

          def _impf_subjunctive_third_singular_masculine
            ["ιε" + present_stem(suffix: "α"), "ye" + present_stem_transliterated(suffix: "a")]
          end

          def _impf_subjunctive_third_singular_feminine
            ["ιε" + present_stem(suffix: "ια"), "ye" + present_stem_transliterated(suffix: "iya")]
          end

          def _impf_subjunctive_first_plural
            ["νε" + present_stem(suffix: "υ'α"), "ne" + present_stem_transliterated(suffix: "uwa")]
          end

          def _impf_subjunctive_second_plural
            ["τε" + present_stem(suffix: "υ'α"), "te" + present_stem_transliterated(suffix: "uwa")]
          end

          def _impf_subjunctive_third_plural
            ["ιε" + present_stem(suffix: "υ'α"), "ye" + present_stem_transliterated(suffix: "uwa")]
          end

          def _volitive_second_singular_masculine
            ["τε" + present_stem(suffix: "αννα"), "te" + present_stem_transliterated(suffix: "anna")]
          end

          def _volitive_third_singular_masculine
            ["ιε" + present_stem(suffix: "αννα"), "ye" + present_stem_transliterated(suffix: "anna")]
          end
        end
      end
    end
  end
end
