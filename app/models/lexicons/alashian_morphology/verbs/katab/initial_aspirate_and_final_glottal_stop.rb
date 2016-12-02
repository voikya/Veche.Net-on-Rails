require_relative 'final_glottal_stop'

module Morphology
  module Alashian
    module Verbs
      module Katab
        module InitialAspirateAndFinalGlottalStop
          include Katab::FinalGlottalStop

          def subtype
            "C1 = PH/TH/KH/TSH/ČH, C3 = '"
          end

          def _present_first_singular
            ["α" + present_stem, "'ə" + present_stem_transliterated[0..-2]]
          end

          def _present_second_singular_masculine
            ["τα" + present_stem, "tə" + present_stem_transliterated[0..-2]]
          end

          def _present_second_singular_feminine
            ["τα" + present_stem(long_vowel: false) + "ει", "tə" + present_stem_transliterated(long_vowel: false) + "ī"]
          end

          def _present_third_singular_masculine
            ["ια" + present_stem, "yə" + present_stem_transliterated[0..-2]]
          end

          def _present_third_singular_feminine
            ["ια" + present_stem(long_vowel: false) + "ει", "yə" + present_stem_transliterated(long_vowel: false) + "ī"]
          end

          def _present_first_plural
            ["να" + present_stem(long_vowel: false) + "ου", "nə" + present_stem_transliterated(long_vowel: false) + "ū"]
          end

          def _present_second_plural
            ["τα" + present_stem(long_vowel: false) + "ου", "tə" + present_stem_transliterated(long_vowel: false) + "ū"]
          end

          def _present_third_plural
            ["ια" + present_stem(long_vowel: false) + "ου", "yə" + present_stem_transliterated(long_vowel: false) + "ū"]
          end

          def _pf_subjunctive_first_singular
            ["в̄α" + present_stem(long_vowel: false), "və" + present_stem_transliterated(long_vowel: false)[0..-2]]
          end

          def _pf_subjunctive_first_plural
            ["в̄ανα" + present_stem(long_vowel: false), "vanə" + present_stem_transliterated(long_vowel: false)[0..-2]]
          end

          def _pf_subjunctive_second
            ["в̄ατα" + present_stem(long_vowel: false), "vatə" + present_stem_transliterated(long_vowel: false)[0..-2]]
          end

          def _impf_subjunctive_first_singular
            ["α" + present_stem + "α", "'ə" + present_stem_transliterated + "a"]
          end

          def _impf_subjunctive_second_singular_masculine
            ["τα" + present_stem + "α", "tə" + present_stem_transliterated + "a"]
          end

          def _impf_subjunctive_third_singular_masculine
            ["ια" + present_stem + "α", "yə" + present_stem_transliterated + "a"]
          end

          def _impf_subjunctive_second_singular_feminine
            ["τα" + present_stem + "ιια", "tə" + present_stem_transliterated + "iya"]
          end

          def _impf_subjunctive_third_singular_feminine
            ["ια" + present_stem + "ιια", "yə" + present_stem_transliterated + "iya"]
          end

          def _impf_subjunctive_first_plural
            ["να" + present_stem + "υυα", "nə" + present_stem_transliterated + "uwa"]
          end

          def _impf_subjunctive_second_plural
            ["τα" + present_stem + "υυα", "tə" + present_stem_transliterated + "uwa"]
          end

          def _impf_subjunctive_third_plural
            ["ια" + present_stem + "υυα", "yə" + present_stem_transliterated + "uwa"]
          end

          def _passive_participle
            [template("μα", :c1, :c2, "ου"), template("mə", :tc1, :tc2, "ū")]
          end

          private

          def present_stem(long_vowel: true)
            v = long_vowel ? :v : :short_v

            template(:c1_unaspirated, :c2, v)
          end

          def present_stem_transliterated(long_vowel: true)
            v = long_vowel ? :tv : :short_tv

            template(:tc1_unaspirated, :tc2, v, :tc3)
          end
        end
      end
    end
  end
end
