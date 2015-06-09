require_relative './regular_ending_stressed'

module Morphology
  module Novegradian
    module Verbs
      module EConjugation
        module ZeroGradeAblaut
          include EConjugation::RegularEndingStressed

          def conjugation
            "E Conjugation"
          end

          def subtype
            "Zero-Grade Ablaut"
          end

          def _infinitive
            [stem + "ати", stem_transliterated + "áti"]
          end

          def _supine
            [stem + "ат", stem_transliterated + "át"]
          end

          def _past_singular_masculine
            [stem + "але", stem_transliterated + "ále"]
          end

          def _past_singular_feminine
            [stem + "ала", remove_stress(stem_transliterated) + "alá"]
          end

          def _past_singular_neuter
            [stem + "ало", stem_transliterated + "álo"]
          end

          def _past_dual
            [stem + "алѣ", stem_transliterated + "álě"]
          end

          def _past_plural
            [stem + "али", stem_transliterated + "áli"]
          end

          def _participle_passive_perfective
            if perfective?
              [stem + "ане", stem_transliterated + "áne"]
            end
          end

          def _adv_participle_perfective
            if perfective?
              [stem + "аве", stem_transliterated + "áve"]
            end
          end
        end
      end
    end
  end
end
