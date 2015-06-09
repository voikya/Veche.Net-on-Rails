require_relative './regular_ending_stressed'

module Morphology
  module Novegradian
    module Verbs
      module IConjugation
        module SonanticStem
          include IConjugation::RegularEndingStressed

          def conjugation
            "I Conjugation"
          end

          def subtype
            "Sonantic Stem"
          end

          def _infinitive
            [stem + "ти", stem_transliterated + "ti"]
          end

          def _supine
            [stem + "т", stem_transliterated + "t"]
          end

          def _past_singular_masculine
            [stem + "ле", stem_transliterated + "le"]
          end

          def _past_singular_feminine
            [stem + "ла", remove_stress(stem_transliterated) + "lá"]
          end

          def _past_singular_neuter
            [stem + "ило", stem_transliterated + "lo"]
          end

          def _past_dual
            [stem + "лѣ", stem_transliterated + "lě"]
          end

          def _past_plural
            [stem + "ли", stem_transliterated + "li"]
          end

          def _participle_passive_perfective
            if perfective?
              if past_participle_in_t?
                [stem + "те", stem_transliterated + "te"]
              else
                [stem + "не", stem_transliterated + "ne"]
              end
            end
          end
        end
      end
    end
  end
end
