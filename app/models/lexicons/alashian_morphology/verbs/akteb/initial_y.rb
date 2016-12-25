require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Akteb
        module InitialY
          include Akteb::Regular

          def subtype
            "C1 = Y"
          end

          def _preterite_first_singular
            ["η" + stem + "ετ", "'ē" + stem_transliterated + "et"]
          end

          def _preterite_second_singular_masculine
            ["η" + stem(lenition: true) + "τα", "'ē" + stem_transliterated(lenition: true) + "ta"]
          end

          def _preterite_second_singular_feminine
            ["η" + stem(lenition: true) + "σ̄ε", "'ē" + stem_transliterated(lenition: true) + "še"]
          end

          def _preterite_third_singular_masculine
            ["η" + stem, "'ē" + stem_transliterated]
          end

          def _preterite_third_singular_feminine
            ["η" + stem + "ω", "'ē" + stem_transliterated + "ā"]
          end

          def _preterite_first_plural
            ["η" + stem + "νω", "'ē" + stem_transliterated + "nā"]
          end

          def _preterite_second_plural_masculine
            ["η" + stem(lenition: true) + "τυν", "'ē" + stem_transliterated(lenition: true) + "tun"]
          end

          def _preterite_second_plural_feminine
            ["η" + stem(lenition: true) + "σ̄ιν", "'ē" + stem_transliterated(lenition: true) + "šin"]
          end

          def _preterite_third_plural
            ["η" + stem + "ου", "'ē" + stem_transliterated + "ū"]
          end

          def _imperfect_first_singular
            ["η" + imperfect_stem(lenition: true), "'ē" + imperfect_stem_transliterated(lenition: true)]
          end

          def _imperfect_second_singular_masculine
            ["η" + imperfect_stem(lenition: true) + "ετ", "'ē" + imperfect_stem_transliterated(lenition: true) + "et"]
          end

          def _imperfect_second_singular_feminine
            ["η" + imperfect_stem(lenition: true) + "ες̄", "'ē" + imperfect_stem_transliterated(lenition: true) + "eš"]
          end

          def _imperfect_third_singular_masculine
            ["η" + imperfect_stem, "'ē" + imperfect_stem_transliterated]
          end

          def _imperfect_third_singular_feminine
            ["η" + imperfect_stem + "ω", "'ē" + imperfect_stem_transliterated + "ā"]
          end

          def _imperfect_first_plural
            ["η" + imperfect_stem(lenition: true) + "εν", "'ē" + imperfect_stem_transliterated(lenition: true) + "en"]
          end

          def _imperfect_second_plural_masculine
            ["η" + imperfect_stem(lenition: true) + "τυν", "'ē" + imperfect_stem_transliterated(lenition: true) + "tun"]
          end

          def _imperfect_second_plural_feminine
            ["η" + imperfect_stem(lenition: true) + "σ̄ιν", "'ē" + imperfect_stem_transliterated(lenition: true) + "šin"]
          end

          def _imperfect_third_plural
            ["η" + imperfect_stem + "ου", "'ē" + imperfect_stem_transliterated + "ū"]
          end

          def _imperative_masculine_singular
            ["η" + stem, "'ē" + stem_transliterated]
          end

          def _imperative_feminine_singular
            ["η" + stem(long_vowel: false) + "ει", "'ē" + stem_transliterated(long_vowel: false) + "ī"]
          end

          def _imperative_plural
            ["η" + stem(long_vowel: false) + "ου", "'ē" + stem_transliterated(long_vowel: false) + "ū"]
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
