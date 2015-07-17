require_relative '../a_conjugation/regular_stem_stressed'

module Morphology
  module Novegradian
    module Verbs
      module Irregular
        module Sijati
          include AConjugation::RegularStemStressed

          def subtype
            "Irregular"
          end

          def _infinitive
            [stem + "ти", stem_transliterated[0..-2] + "ti"]
          end

          def _supine
            [stem + "т", stem_transliterated[0..-2] + "t"]
          end

          def _past_singular_masculine
            [stem + "ле", stem_transliterated[0..-2] + "le"]
          end

          def _past_singular_feminine
            [stem + "ла", stem_transliterated[0..-2] + "la"]
          end

          def _past_singular_neuter
            [stem + "ло", stem_transliterated[0..-2] + "lo"]
          end

          def _past_dual
            [stem + "лѣ", stem_transliterated[0..-2] + "lě"]
          end

          def _past_plural
            [stem + "ли", stem_transliterated[0..-2] + "li"]
          end

          def _imperative_second_singular
            [stem + "й", stem_transliterated]
          end

          def _imperative_second_dual
            [stem + "йта", stem_transliterated + "ta"]
          end

          def _imperative_second_plural
            [stem + "йте", stem_transliterated + "te"]
          end

          def _imperative_first_dual
            [stem + "ута", stem_transliterated[0..-2] + "uta"]
          end

          def _imperative_first_plural
            [stem + "мте", stem_transliterated[0..-2] + "mte"]
          end

          def _participle_active_imperfective
            unless perfective?
              [stem + "кье", stem_transliterated[0..-2] + "kje"]
            end
          end

          def _adv_participle_imperfective
            unless perfective?
              [stem + "ен", stem_transliterated + "en"]
            end
          end
        end
      end
    end
  end
end
