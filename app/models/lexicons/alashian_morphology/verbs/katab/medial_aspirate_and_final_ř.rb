require_relative 'medial_aspirate'

module Morphology
  module Alashian
    module Verbs
      module Katab
        module MedialAspirateAndFinalR
          include Katab::MedialAspirate

          def subtype
            "C2 = PH/TH/KH/TSH/ČH, C3 = Ř"
          end

          def _present_second_singular_feminine
            ["τι" + present_stem(long_vowel: false) + "η'ι", "ti" + present_stem_transliterated(long_vowel: false) + "ēyi"]
          end

          def _present_third_singular_feminine
            ["ι" + present_stem(long_vowel: false) + "η'ι", "yi" + present_stem_transliterated(long_vowel: false) + "ēyi"]
          end

          def _impf_subjunctive_second_singular_feminine
            ["τι" + present_stem + "εια", "ti" + present_stem_transliterated + "eya"]
          end

          def _impf_subjunctive_third_singular_feminine
            ["ι" + present_stem + "εια", "yi" + present_stem_transliterated + "eya"]
          end

          def _volitive_second_singular_feminine
            ["τι" + present_stem(long_vowel: false) + "ηνα", "ti" + present_stem_transliterated(long_vowel: false) + "ēna"]
          end

          def _volitive_third_singular_feminine
            ["ι" + present_stem(long_vowel: false) + "ηνα", "yi" + present_stem_transliterated(long_vowel: false) + "ēna"]
          end

          def _imperative_feminine_singular
            [template(:c1, "α", :c2, :c3, "η'ι"), template(:tc1, "ə", :tc2, :tc3, "ēyi")]
          end

          def _precative_feminine_singular
            [template(:c1, "α", :c2, :c3, "ηνα"), template(:tc1, "a", :tc2, :tc3, "ēna")]
          end

          def _active_participle
            [template(:c1, "ου", :c2, "ε", :c3), template(:tc1, "ū", :tc2, "e", :tc3)]
          end
        end
      end
    end
  end
end
