require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Ennuktab
        module FinalR
          include Ennuktab::Regular

          def subtype
            "C3 = Ř"
          end

          def _present_second_singular_feminine
            ["τι" + stem(long_vowel: false) + "η'ι", "ti" + stem_transliterated(long_vowel: false) + "ēyi"]
          end

          def _present_third_singular_feminine
            ["ι" + stem(long_vowel: false) + "η'ι", "yi" + stem_transliterated(long_vowel: false) + "ēyi"]
          end

          def _impf_subjunctive_second_singular_feminine
            ["τι" + stem + "εια", "ti" + stem_transliterated + "eya"]
          end

          def _impf_subjunctive_third_singular_feminine
            ["ι" + stem + "εια", "yi" + stem_transliterated + "eya"]
          end

          def _volitive_second_singular_feminine
            ["τι" + stem(long_vowel: false) + "ηνα", "ti" + stem_transliterated(long_vowel: false) + "ēna"]
          end

          def _volitive_third_singular_feminine
            ["ι" + stem(long_vowel: false) + "ηνα", "yi" + stem_transliterated(long_vowel: false) + "ēna"]
          end
        end
      end
    end
  end
end
