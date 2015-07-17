require_relative '../e_conjugation/regular_ending_stressed'

module Morphology
  module Novegradian
    module Verbs
      module Irregular
        module Smeiati
          include EConjugation::RegularEndingStressed

          def subtype
            "Irregular"
          end

          def _infinitive
            [inf_desinence + "яти", inf_desinence_transliterated + "áti"]
          end

          def _supine
            [inf_desinence + "ят", inf_desinence_transliterated + "át"]
          end

          def _past_singular_masculine
            [inf_desinence + "яле", inf_desinence_transliterated + "ále"]
          end

          def _past_singular_feminine
            [inf_desinence + "яла", inf_desinence_transliterated + "ála"]
          end

          def _past_singular_neuter
            [inf_desinence + "яло", inf_desinence_transliterated + "álo"]
          end

          def _past_dual
            [inf_desinence + "ялѣ", inf_desinence_transliterated + "álě"]
          end

          def _past_plural
            [inf_desinence + "яли", inf_desinence_transliterated + "áli"]
          end

          def _participle_passive_perfective
            if perfective?
              [inf_desinence + "яне", inf_desinence_transliterated + "áne"]
            end
          end

          def _adv_participle_perfective
            if perfective?
              [inf_desinence + "яве", inf_desinence_transliterated + "áve"]
            end
          end

          private

          def inf_desinence
            desinence.sub("смѣ", "сми")
          end

          def inf_desinence_transliterated
            desinence_transliterated.sub(/směi/, 'smij')
          end
        end
      end
    end
  end
end
