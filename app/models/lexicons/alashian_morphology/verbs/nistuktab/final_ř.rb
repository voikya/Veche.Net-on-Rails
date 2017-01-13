require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Nistuktab
        module FinalR
          include Nistuktab::Regular

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
        end
      end
    end
  end
end
