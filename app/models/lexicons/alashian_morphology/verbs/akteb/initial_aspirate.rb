require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Akteb
        module InitialAspirate
          include Akteb::Regular

          def subtype
            "C1 = PH/TH/KH/TSH/ČH"
          end

          def _preterite_first_singular
            ["α" + stem + "ετ", "'ə" + stem_transliterated + "et"]
          end

          def _preterite_second_singular_masculine
            ["α" + stem(lenition: true) + "τα", "'ə" + stem_transliterated(lenition: true) + "ta"]
          end

          def _preterite_second_singular_feminine
            ["α" + stem(lenition: true) + "σ̄ε", "'ə" + stem_transliterated(lenition: true) + "še"]
          end

          def _preterite_third_singular_masculine
            ["α" + stem, "'ə" + stem_transliterated]
          end

          def _preterite_third_singular_feminine
            ["α" + stem + "ω", "'ə" + stem_transliterated + "ā"]
          end

          def _preterite_first_plural
            ["α" + stem + "νω", "'ə" + stem_transliterated + "nā"]
          end

          def _preterite_second_plural_masculine
            ["α" + stem(lenition: true) + "τυν", "'ə" + stem_transliterated(lenition: true) + "tun"]
          end

          def _preterite_second_plural_feminine
            ["α" + stem(lenition: true) + "σ̄ιν", "'ə" + stem_transliterated(lenition: true) + "šin"]
          end

          def _preterite_third_plural
            ["α" + stem + "ου", "'ə" + stem_transliterated + "ū"]
          end

          def _imperfect_first_singular
            ["α" + imperfect_stem(lenition: true), "'ə" + imperfect_stem_transliterated(lenition: true)]
          end

          def _imperfect_second_singular_masculine
            ["α" + imperfect_stem(lenition: true) + "ετ", "'ə" + imperfect_stem_transliterated(lenition: true) + "et"]
          end

          def _imperfect_second_singular_feminine
            ["α" + imperfect_stem(lenition: true) + "ες̄", "'ə" + imperfect_stem_transliterated(lenition: true) + "eš"]
          end

          def _imperfect_third_singular_masculine
            ["α" + imperfect_stem, "'ə" + imperfect_stem_transliterated]
          end

          def _imperfect_third_singular_feminine
            ["α" + imperfect_stem + "ω", "'ə" + imperfect_stem_transliterated + "ā"]
          end

          def _imperfect_first_plural
            ["α" + imperfect_stem(lenition: true) + "εν", "'ə" + imperfect_stem_transliterated(lenition: true) + "en"]
          end

          def _imperfect_second_plural_masculine
            ["α" + imperfect_stem(lenition: true) + "τυν", "'ə" + imperfect_stem_transliterated(lenition: true) + "tun"]
          end

          def _imperfect_second_plural_feminine
            ["α" + imperfect_stem(lenition: true) + "σ̄ιν", "'ə" + imperfect_stem_transliterated(lenition: true) + "šin"]
          end

          def _imperfect_third_plural
            ["α" + imperfect_stem + "ου", "'ə" + imperfect_stem_transliterated + "ū"]
          end

          def _imperative_masculine_singular
            ["α" + stem, "'ə" + stem_transliterated]
          end

          def _imperative_feminine_singular
            ["α" + stem(long_vowel: false) + "ει", "'ə" + stem_transliterated(long_vowel: false) + "ī"]
          end

          def _imperative_plural
            ["α" + stem(long_vowel: false) + "ου", "'ə" + stem_transliterated(long_vowel: false) + "ū"]
          end
        end
      end
    end
  end
end
