require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Akteb
        module InitialW
          include Akteb::Regular

          def subtype
            "C1 = W"
          end

          def _preterite_first_singular
            ["ου" + stem + "ετ", "'ū" + stem_transliterated + "et"]
          end

          def _preterite_second_singular_masculine
            ["ου" + stem(lenition: true) + "τα", "'ū" + stem_transliterated(lenition: true) + "ta"]
          end

          def _preterite_second_singular_feminine
            ["ου" + stem(lenition: true) + "σ̄ε", "'ū" + stem_transliterated(lenition: true) + "še"]
          end

          def _preterite_third_singular_masculine
            ["ου" + stem, "'ū" + stem_transliterated]
          end

          def _preterite_third_singular_feminine
            ["ου" + stem + "ω", "'ū" + stem_transliterated + "ā"]
          end

          def _preterite_first_plural
            ["ου" + stem + "νω", "'ū" + stem_transliterated + "nā"]
          end

          def _preterite_second_plural_masculine
            ["ου" + stem(lenition: true) + "τυν", "'ū" + stem_transliterated(lenition: true) + "tun"]
          end

          def _preterite_second_plural_feminine
            ["ου" + stem(lenition: true) + "σ̄ιν", "'ū" + stem_transliterated(lenition: true) + "šin"]
          end

          def _preterite_third_plural
            ["ου" + stem + "ου", "'ū" + stem_transliterated + "ū"]
          end

          def _imperfect_first_singular
            ["ου" + imperfect_stem(lenition: true), "'ū" + imperfect_stem_transliterated(lenition: true)]
          end

          def _imperfect_second_singular_masculine
            ["ου" + imperfect_stem(lenition: true) + "ετ", "'ū" + imperfect_stem_transliterated(lenition: true) + "et"]
          end

          def _imperfect_second_singular_feminine
            ["ου" + imperfect_stem(lenition: true) + "ες̄", "'ū" + imperfect_stem_transliterated(lenition: true) + "eš"]
          end

          def _imperfect_third_singular_masculine
            ["ου" + imperfect_stem, "'ū" + imperfect_stem_transliterated]
          end

          def _imperfect_third_singular_feminine
            ["ου" + imperfect_stem + "ω", "'ū" + imperfect_stem_transliterated + "ā"]
          end

          def _imperfect_first_plural
            ["ου" + imperfect_stem(lenition: true) + "εν", "'ū" + imperfect_stem_transliterated(lenition: true) + "en"]
          end

          def _imperfect_second_plural_masculine
            ["ου" + imperfect_stem(lenition: true) + "τυν", "'ū" + imperfect_stem_transliterated(lenition: true) + "tun"]
          end

          def _imperfect_second_plural_feminine
            ["ου" + imperfect_stem(lenition: true) + "σ̄ιν", "'ū" + imperfect_stem_transliterated(lenition: true) + "šin"]
          end

          def _imperfect_third_plural
            ["ου" + imperfect_stem + "ου", "'ū" + imperfect_stem_transliterated + "ū"]
          end

          def _imperative_masculine_singular
            if s_imperative?
              [template("ισ", :c1, "ε", :c2, "η", :c3), template("'is", :tc1, "e", :tc2, "ē", :tc3)]
            else
              ["ου" + stem, "'ū" + stem_transliterated]
            end
          end

          def _imperative_feminine_singular
            if s_imperative?
              [template("ισ", :c1, "ε", :c2, :c3, "ει"), template("'is", :tc1, "e", :tc2, :tc3, "ī")]
            else
              ["ου" + stem(long_vowel: false) + "ει", "'ū" + stem_transliterated(long_vowel: false) + "ī"]
            end
          end

          def _imperative_plural
            if s_imperative?
              [template("ισ", :c1, "ε", :c2, :c3, "ου"), template("'is", :tc1, "e", :tc2, :tc3, "ū")]
            else
              ["ου" + stem(long_vowel: false) + "ου", "'ū" + stem_transliterated(long_vowel: false) + "ū"]
            end
          end

          def _active_participle
            [template("μω", :c2, "ι", :c3), template("mā", :tc2, "i", :tc3)]
          end

          private

          def stem(long_vowel: true, lenition: false)
            v = long_vowel ? "η" : "ε"
            c3 = lenition ? :c3_lenited : :c3

            template(:c2, v, c3)
          end

          def stem_transliterated(long_vowel: true, lenition: false)
            v = long_vowel ? "ē" : "e"
            c3 = lenition ? :tc3_lenited : :tc3

            template(:tc2, v, c3)
          end

          def imperfect_stem(lenition: false)
            c3 = lenition ? :c3_lenited : :c3

            template(:c2, "ιη", c3)
          end

          def imperfect_stem_transliterated(lenition: false)
            c3 = lenition ? :tc3_lenited : :tc3

            template(:tc2, "ie", c3)
          end
        end
      end
    end
  end
end
