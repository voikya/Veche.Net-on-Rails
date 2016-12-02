require_relative 'initial_aspirate'

module Morphology
  module Alashian
    module Verbs
      module Katab
        module InitialAspirateAndFinalR
          include Katab::InitialAspirate

          def subtype
            "C1 = PH/TH/KH/TSH/ČH, C3 = Ř"
          end

          def _present_second_singular_feminine
            ["τα" + present_stem(long_vowel: false) + "η'ι", "tə" + present_stem_transliterated(long_vowel: false) + "ēyi"]
          end

          def _present_third_singular_feminine
            ["ια" + present_stem(long_vowel: false) + "η'ι", "yə" + present_stem_transliterated(long_vowel: false) + "ēyi"]
          end

          def _impf_subjunctive_second_singular_feminine
            ["τα" + present_stem + "εια", "tə" + present_stem_transliterated + "eya"]
          end

          def _impf_subjunctive_third_singular_feminine
            ["ια" + present_stem + "εια", "yə" + present_stem_transliterated + "eya"]
          end

          def _volitive_second_singular_feminine
            ["τα" + present_stem(long_vowel: false) + "ηνα", "tə" + present_stem_transliterated(long_vowel: false) + "ēna"]
          end

          def _volitive_third_singular_feminine
            ["ια" + present_stem(long_vowel: false) + "ηνα", "yə" + present_stem_transliterated(long_vowel: false) + "ēna"]
          end

          def _imperative_feminine_singular
            [template(:c1, :short_v, :c2, :c3, "η'ι"), template(:tc1, :short_tv, :tc2, :tc3, "ēyi")]
          end

          def _precative_feminine_singular
            [template(:c1, :short_v, :c2, :c3, "ηνα"), template(:tc1, :short_tv, :tc2, :tc3, "ēna")]
          end

          def _active_participle
            [template(:c1, "ου", :c2, "ε", :c3), template(:tc1, "ū", :tc2, "e", :tc3)]
          end
        end
      end
    end
  end
end
