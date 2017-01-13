require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Katab
        module InitialAspirate
          include Katab::Regular

          def subtype
            "C1 = PH/TH/KH/TSH/ČH"
          end

          def _present_first_singular
            ["α" + present_stem, "'ə" + present_stem_transliterated]
          end

          def _present_second_singular_masculine
            ["τα" + present_stem, "tə" + present_stem_transliterated]
          end

          def _present_second_singular_feminine
            ["τα" + present_stem(long_vowel: false) + "ει", "tə" + present_stem_transliterated(long_vowel: false) + "ī"]
          end

          def _present_third_singular_masculine
            ["ια" + present_stem, "yə" + present_stem_transliterated]
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
            ["в̄α" + present_stem(long_vowel: false), "və" + present_stem_transliterated(long_vowel: false)]
          end

          def _pf_subjunctive_first_plural
            ["в̄ανα" + present_stem(long_vowel: false), "vanə" + present_stem_transliterated(long_vowel: false)]
          end

          def _pf_subjunctive_second
            ["в̄ατα" + present_stem(long_vowel: false), "vatə" + present_stem_transliterated(long_vowel: false)]
          end

          def _impf_subjunctive_first_singular
            ["α" + present_stem + "α", "'ə" + present_stem_transliterated + "a"]
          end

          def _impf_subjunctive_second_singular_masculine
            ["τα" + present_stem + "α", "tə" + present_stem_transliterated + "a"]
          end

          def _impf_subjunctive_second_singular_feminine
            ["τα" + present_stem + "ια", "tə" + present_stem_transliterated + "iya"]
          end

          def _impf_subjunctive_third_singular_masculine
            ["ια" + present_stem + "α", "yə" + present_stem_transliterated + "a"]
          end

          def _impf_subjunctive_third_singular_feminine
            ["ια" + present_stem + "ια", "yə" + present_stem_transliterated + "iya"]
          end

          def _impf_subjunctive_first_plural
            ["να" + present_stem + "υ'α", "nə" + present_stem_transliterated + "uwa"]
          end

          def _impf_subjunctive_second_plural
            ["τα" + present_stem + "υ'α", "tə" + present_stem_transliterated + "uwa"]
          end

          def _impf_subjunctive_third_plural
            ["ια" + present_stem + "υ'α", "yə" + present_stem_transliterated + "uwa"]
          end

          def _passive_participle
            [template("μα", :c1, :c2, "ου", :c3), template("mə", :tc1, :tc2, "ū", :tc3)]
          end

          private

          def present_stem(long_vowel: true)
            v = long_vowel ? :v : :short_v

            template(:c1_unaspirated, :c2, v, :c3)
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
