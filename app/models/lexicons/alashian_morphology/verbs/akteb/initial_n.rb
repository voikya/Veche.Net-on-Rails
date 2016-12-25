require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Akteb
        module InitialN
          include Akteb::Regular

          def subtype
            "C1 = N"
          end

          def _preterite_first_singular
            tprefix = root.medial_aspiratable? ? "'ə" : "'a"
            ["α" + stem + "ετ", tprefix + stem_transliterated + "et"]
          end

          def _preterite_second_singular_masculine
            tprefix = root.medial_aspiratable? ? "'ə" : "'a"
            ["α" + stem(lenition: true) + "τα", tprefix + stem_transliterated(lenition: true) + "ta"]
          end

          def _preterite_second_singular_feminine
            tprefix = root.medial_aspiratable? ? "'ə" : "'a"
            ["α" + stem(lenition: true) + "σ̄ε", tprefix + stem_transliterated(lenition: true) + "še"]
          end

          def _preterite_third_singular_masculine
            tprefix = root.medial_aspiratable? ? "'ə" : "'a"
            ["α" + stem, tprefix + stem_transliterated]
          end

          def _preterite_third_singular_feminine
            tprefix = root.medial_aspiratable? ? "'ə" : "'a"
            ["α" + stem + "ω", tprefix + stem_transliterated + "ā"]
          end

          def _preterite_first_plural
            tprefix = root.medial_aspiratable? ? "'ə" : "'a"
            ["α" + stem + "νω", tprefix + stem_transliterated + "nā"]
          end

          def _preterite_second_plural_masculine
            tprefix = root.medial_aspiratable? ? "'ə" : "'a"
            ["α" + stem(lenition: true) + "τυν", tprefix + stem_transliterated(lenition: true) + "tun"]
          end

          def _preterite_second_plural_feminine
            tprefix = root.medial_aspiratable? ? "'ə" : "'a"
            ["α" + stem(lenition: true) + "σ̄ιν", tprefix + stem_transliterated(lenition: true) + "šin"]
          end

          def _preterite_third_plural
            tprefix = root.medial_aspiratable? ? "'ə" : "'a"
            ["α" + stem + "ου", tprefix + stem_transliterated + "ū"]
          end

          def _imperfect_first_singular
            tprefix = root.medial_aspiratable? ? "'ə" : "'a"
            ["α" + imperfect_stem(lenition: true), tprefix + imperfect_stem_transliterated(lenition: true)]
          end

          def _imperfect_second_singular_masculine
            tprefix = root.medial_aspiratable? ? "'ə" : "'a"
            ["α" + imperfect_stem(lenition: true) + "ετ", tprefix + imperfect_stem_transliterated(lenition: true) + "et"]
          end

          def _imperfect_second_singular_feminine
            tprefix = root.medial_aspiratable? ? "'ə" : "'a"
            ["α" + imperfect_stem(lenition: true) + "ες̄", tprefix + imperfect_stem_transliterated(lenition: true) + "eš"]
          end

          def _imperfect_third_singular_masculine
            tprefix = root.medial_aspiratable? ? "'ə" : "'a"
            ["α" + imperfect_stem, tprefix + imperfect_stem_transliterated]
          end

          def _imperfect_third_singular_feminine
            tprefix = root.medial_aspiratable? ? "'ə" : "'a"
            ["α" + imperfect_stem + "ω", tprefix + imperfect_stem_transliterated + "ā"]
          end

          def _imperfect_first_plural
            tprefix = root.medial_aspiratable? ? "'ə" : "'a"
            ["α" + imperfect_stem(lenition: true) + "εν", tprefix + imperfect_stem_transliterated(lenition: true) + "en"]
          end

          def _imperfect_second_plural_masculine
            tprefix = root.medial_aspiratable? ? "'ə" : "'a"
            ["α" + imperfect_stem(lenition: true) + "τυν", tprefix + imperfect_stem_transliterated(lenition: true) + "tun"]
          end

          def _imperfect_second_plural_feminine
            tprefix = root.medial_aspiratable? ? "'ə" : "'a"
            ["α" + imperfect_stem(lenition: true) + "σ̄ιν", tprefix + imperfect_stem_transliterated(lenition: true) + "šin"]
          end

          def _imperfect_third_plural
            tprefix = root.medial_aspiratable? ? "'ə" : "'a"
            ["α" + imperfect_stem + "ου", tprefix + imperfect_stem_transliterated + "ū"]
          end

          def _imperative_masculine_singular
            tprefix = root.medial_aspiratable? ? "'ə" : "'a"
            ["α" + stem, tprefix + stem_transliterated]
          end

          def _imperative_feminine_singular
            tprefix = root.medial_aspiratable? ? "'ə" : "'a"
            ["α" + stem(long_vowel: false) + "ει", tprefix + stem_transliterated(long_vowel: false) + "ī"]
          end

          def _imperative_plural
            tprefix = root.medial_aspiratable? ? "'ə" : "'a"
            ["α" + stem(long_vowel: false) + "ου", tprefix + stem_transliterated(long_vowel: false) + "ū"]
          end

          def _active_participle
            [template("μω", :c2_geminated_or_aspirated, "ι", :c3), template("mā", :tc2_geminated_or_aspirated, "i", :tc3)]
          end

          private

          def stem(long_vowel: true, lenition: false)
            v = long_vowel ? "η" : "ε"
            c3 = lenition ? :c3_lenited : :c3

            template(:c2_geminated_or_aspirated, v, c3)
          end

          def stem_transliterated(long_vowel: true, lenition: false)
            v = long_vowel ? "ē" : "e"
            c3 = lenition ? :tc3_lenited : :tc3

            template(:tc2_geminated_or_aspirated, v, c3)
          end

          def imperfect_stem(lenition: false)
            c3 = lenition ? :c3_lenited : :c3

            template(:c2_geminated_or_aspirated, "ιη", c3)
          end

          def imperfect_stem_transliterated(lenition: false)
            c3 = lenition ? :tc3_lenited : :tc3

            template(:tc2_geminated_or_aspirated, "ie", c3)
          end
        end
      end
    end
  end
end
