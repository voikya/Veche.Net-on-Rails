require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Akteb
        module FinalR
          include Akteb::Regular

          def subtype
            "C3 = Ř"
          end

          def _present_second_singular_feminine
            ["τω" + stem(long_vowel: false) + "η'ι", "tā" + stem_transliterated(long_vowel: false) + "ēyi"]
          end

          def _present_third_singular_feminine
            ["ιω" + stem(long_vowel: false) + "η'ι", "yā" + stem_transliterated(long_vowel: false) + "ēyi"]
          end

          def _impf_subjunctive_second_singular_feminine
            ["τω" + stem + "εια", "tā" + stem_transliterated + "eya"]
          end

          def _impf_subjunctive_third_singular_feminine
            ["ιω" + stem + "εια", "yā" + stem_transliterated + "eya"]
          end

          def _volitive_second_singular_feminine
            ["τω" + stem(long_vowel: false) + "ηνα", "tā" + stem_transliterated(long_vowel: false) + "ēna"]
          end

          def _volitive_third_singular_feminine
            ["ιω" + stem(long_vowel: false) + "ηνα", "yā" + stem_transliterated(long_vowel: false) + "ēna"]
          end

          def _imperative_feminine_singular
            ["α" + stem(long_vowel: false) + "η'ι", "'a" + stem_transliterated(long_vowel: false) + "ēyi"]
          end

          def _precative_feminine_singular
            ["α" + stem(long_vowel: false) + "ηνα", "'a" + stem_transliterated(long_vowel: false) + "ēna"]
          end

          def _active_participle
            if root.medial_plosive?
              [template("μω", :c1_lenited, :c2, "ε", :c3), template("mā", :tc1_lenited, :tc2, "e", :tc3)]
            else
              [template("μω", :c1, :c2, "ε", :c3), template("mā", :tc1, :tc2, "e", :tc3)]
            end
          end
        end
      end
    end
  end
end
