require_relative '../i_conjugation/regular_stem_stressed'

module Morphology
  module Novegradian
    module Verbs
      module Irregular
        module Liti
          include IConjugation::RegularStemStressed

          def subtype
            "Irregular"
          end

          def _infinitive
            [stem[0..-3] + "ти", stem_transliterated[0..-3] + "ti"]
          end

          def _supine
            [stem[0..-3] + "т", stem_transliterated[0..-3] + "t"]
          end

          def _past_singular_masculine
            [stem[0..-3] + "ле", stem_transliterated[0..-3] + "le"]
          end

          def _past_singular_feminine
            [stem[0..-3] + "ла", stem_transliterated[0..-3] + "la"]
          end

          def _past_singular_neuter
            [stem[0..-3] + "ло", stem_transliterated[0..-3] + "lo"]
          end

          def _past_dual
            [stem[0..-3] + "лѣ", stem_transliterated[0..-3] + "lě"]
          end

          def _past_plural
            [stem[0..-3] + "ли", stem_transliterated[0..-3] + "li"]
          end
        end
      end
    end
  end
end
