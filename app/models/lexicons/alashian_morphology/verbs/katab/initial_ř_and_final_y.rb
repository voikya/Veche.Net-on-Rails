require_relative 'final_y'

module Morphology
  module Alashian
    module Verbs
      module Katab
        module InitialRAndFinalY
          include Katab::FinalY

          def subtype
            "C1 = Ř, C3 = Y"
          end

          def _present_second_singular_masculine
            ["τε" + present_stem[0..-2], "te" + present_stem_transliterated[0..-2]]
          end

          def _present_second_singular_feminine
            ["τε" + present_stem(long_vowel: false) + "ει", "te" + present_stem_transliterated(long_vowel: false) + "ī"]
          end

          def _present_third_singular_masculine
            ["ιε" + present_stem[0..-2], "ye" + present_stem_transliterated[0..-2]]
          end

          def _present_third_singular_feminine
            ["ιε" + present_stem(long_vowel: false) + "ει", "ye" + present_stem_transliterated(long_vowel: false) + "ī"]
          end

          def _present_first_plural
            ["νε" + present_stem(long_vowel: false) + "ου", "ne" + present_stem_transliterated(long_vowel: false) + "ū"]
          end

          def _present_second_plural
            ["τε" + present_stem(long_vowel: false) + "ου", "te" + present_stem_transliterated(long_vowel: false) + "ū"]
          end

          def _present_third_plural
            ["ιε" + present_stem(long_vowel: false) + "ου", "ye" + present_stem_transliterated(long_vowel: false) + "ū"]
          end

          def _imperfect_first_singular
            [template(:c1, "η", :c2, "η"), template(:tc1, "ē", :tc2, "ē")]
          end

          def _imperfect_second_singular_masculine
            [template(:c1, "η", :c2, "ητ"), template(:tc1, "ē", :tc2, "ēt")]
          end

          def _imperfect_second_singular_feminine
            [template(:c1, "η", :c2, "ης̄"), template(:tc1, "ē", :tc2, "ēš")]
          end

          def _imperfect_first_plural
            [template(:c1, "η", :c2, "ην"), template(:tc1, "ē", :tc2, "ēn")]
          end

          def _imperfect_second_plural_masculine
            [template(:c1, "η", :c2, "ητυν"), template(:tc1, "ē", :tc2, "ētun")]
          end

          def _imperfect_second_plural_feminine
            [template(:c1, "η", :c2, "ησ̄ιν"), template(:tc1, "ē", :tc2, "ēšin")]
          end

          def _impf_subjunctive_second_singular_masculine
            ["τε" + present_stem + "α", "te" + present_stem_transliterated + "a"]
          end

          def _impf_subjunctive_second_singular_feminine
            ["τε" + present_stem + "ια", "te" + present_stem_transliterated + "iya"]
          end

          def _impf_subjunctive_third_singular_masculine
            ["ιε" + present_stem + "α", "ye" + present_stem_transliterated + "a"]
          end

          def _impf_subjunctive_third_singular_feminine
            ["ιε" + present_stem + "ια", "ye" + present_stem_transliterated + "iya"]
          end

          def _impf_subjunctive_first_plural
            ["νε" + present_stem + "υ'α", "ne" + present_stem_transliterated + "uwa"]
          end

          def _impf_subjunctive_second_plural
            ["τε" + present_stem + "υ'α", "te" + present_stem_transliterated + "uwa"]
          end

          def _impf_subjunctive_third_plural
            ["ιε" + present_stem + "υ'α", "ye" + present_stem_transliterated + "uwa"]
          end
        end
      end
    end
  end
end
