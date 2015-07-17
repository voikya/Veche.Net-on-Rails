require_relative './regular_ending_stressed'

module Morphology
  module Novegradian
    module Verbs
      module EConjugation
        module SonanticStem
          include EConjugation::RegularEndingStressed

          def conjugation
            "E Conjugation"
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
            [stem + "ла", stem_transliterated + "la"]
          end

          def _past_singular_neuter
            [stem + "ло", stem_transliterated + "lo"]
          end

          def _past_dual
            [stem + "лѣ", stem_transliterated + "lě"]
          end

          def _past_plural
            [stem + "ли", stem_transliterated + "li"]
          end

          def _participle_passive_perfective
            if perfective?
              [stem + "не", stem_transliterated + "ne"]
            end
          end

          def _adv_participle_perfective
            if perfective?
              [stem + "ве", stem_transliterated + "ve"]
            end
          end
        end
      end
    end
  end
end
