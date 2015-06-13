require_relative '../a_conjugation/regular_ending_stressed'

module Morphology
  module Novegradian
    module Verbs
      module Irregular
        module Sati
          include AConjugation::RegularEndingStressed

          def subtype
            "Irregular"
          end

          def _infinitive
            [desinence[0..-3] + "ати", desinence_transliterated[0..-3] + "áti"]
          end

          def _supine
            [desinence[0..-3] + "ати", desinence_transliterated[0..-3] + "át"]
          end

          def _past_singular_masculine
            [desinence[0..-3] + "але", desinence_transliterated[0..-3] + "ále"]
          end

          def _past_singular_feminine
            [desinence[0..-3] + "ала", desinence_transliterated[0..-3] + "alá"]
          end

          def _past_singular_neuter
            [desinence[0..-3] + "ало", desinence_transliterated[0..-3] + "álo"]
          end

          def _past_dual
            [desinence[0..-3] + "алѣ", desinence_transliterated[0..-3] + "álě"]
          end

          def _past_plural
            [desinence[0..-3] + "али", desinence_transliterated[0..-3] + "áli"]
          end

          def _participle_passive_perfective
            if perfective?
              [desinence[0..-3] + "ане", desinence_transliterated[0..-3] + "áne"]
            end
          end

          def _adv_participle_perfective
            if perfective?
              [desinence[0..-3] + "аве", desinence_transliterated[0..-3] + "áve"]
            end
          end
        end
      end
    end
  end
end
