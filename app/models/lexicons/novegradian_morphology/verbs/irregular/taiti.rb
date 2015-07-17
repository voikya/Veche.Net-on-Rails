require_relative '../i_conjugation/regular_stem_stressed'

module Morphology
  module Novegradian
    module Verbs
      module Irregular
        module Taiti
          include IConjugation::RegularStemStressed

          def subtype
            "Irregular"
          end

          def _infinitive
            [stem + "йти", stem_transliterated[0..-2] + "iti"]
          end

          def _supine
            [stem + "йт", stem_transliterated[0..-2] + "it"]
          end

          def _past_singular_masculine
            [stem + "ле", stem_transliterated[0..-2] + "le"]
          end

          def _past_singular_feminine
            [stem + "йла", stem_transliterated[0..-2] + "la"]
          end

          def _past_singular_neuter
            [stem + "йло", stem_transliterated[0..-2] + "lo"]
          end

          def _past_dual
            [stem + "йлѣ", stem_transliterated[0..-2] + "lě"]
          end

          def _past_plural
            [stem + "йли", stem_transliterated[0..-2] + "li"]
          end
        end
      end
    end
  end
end
