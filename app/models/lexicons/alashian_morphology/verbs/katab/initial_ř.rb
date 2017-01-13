require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Katab
        module InitialR
          include Katab::Regular

          def subtype
            "C1 = Ř"
          end

          def _present_second_singular_masculine
            ["τε" + present_stem, "te" + present_stem_transliterated]
          end

          def _present_second_singular_feminine
            ["τε" + present_stem(long_vowel: false) + "ει", "te" + present_stem_transliterated(long_vowel: false) + "ī"]
          end

          def _present_third_singular_masculine
            ["ιε" + present_stem, "ye" + present_stem_transliterated]
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
            [template(:c1, "η", :c2, "ε", :c3_lenited), template(:tc1, "ē", :tc2, "e", :tc3_lenited)]
          end

          def _imperfect_second_singular_masculine
            [template(:c1, "η", :c2, "ε", :c3_lenited, "ετ"), template(:tc1, "ē", :tc2, "e", :tc3_lenited, "et")]
          end

          def _imperfect_second_singular_feminine
            [template(:c1, "η", :c2, "ε", :c3_lenited, "ες̄"), template(:tc1, "ē", :tc2, "e", :tc3_lenited, "eš")]
          end

          def _imperfect_first_plural
            [template(:c1, "η", :c2, "ε", :c3_lenited, "εν"), template(:tc1, "ē", :tc2, "e", :tc3_lenited, "en")]
          end

          def _imperfect_second_plural_masculine
            [template(:c1, "η", :c2, "ε", :c3_lenited, "τυν"), template(:tc1, "ē", :tc2, "e", :tc3_lenited, "tun")]
          end

          def _imperfect_second_plural_feminine
            [template(:c1, "η", :c2, "ε", :c3_lenited, "σ̄ιν"), template(:tc1, "ē", :tc2, "e", :tc3_lenited, "šin")]
          end

          def _impf_subjunctive_second_singular_masculine
            ["τε" + present_stem + "α", "te" + present_stem_transliterated + "a"]
          end

          def _impf_subjunctive_second_singular_feminine
            ["τε" + present_stem + "ια", "te" + present_stem_transliterated + "iya"]
          end

          def _impf_subjunctive_third_singular_masculine
            ["ιε" + present_stem + "α", "y" + present_stem_transliterated + "a"]
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
