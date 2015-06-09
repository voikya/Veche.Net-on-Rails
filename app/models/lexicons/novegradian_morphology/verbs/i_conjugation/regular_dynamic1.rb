require_relative './regular_ending_stressed'

module Morphology
  module Novegradian
    module Verbs
      module IConjugation
        module RegularDynamic1
          include IConjugation::RegularEndingStressed

          def conjugation
            "I Conjugation"
          end

          def subtype
            "Regular Dynamic-Stressed Type 1"
          end

          def _infinitive
            [stem + "ити", stem + "iti"]
          end

          def _supine
            [stem + "ит", stem + "it"]
          end

          def _past_singular_masculine
            [stem + "иле", stem_transliterated + "ile"]
          end

          def _past_singular_feminine
            [stem + "ила", stem_transliterated + "ila"]
          end

          def _past_singular_neuter
            [stem + "ило", stem_transliterated + "ilo"]
          end

          def _past_dual
            [stem + "илѣ", stem_transliterated + "ilě"]
          end

          def _past_plural
            [stem + "или", stem_transliterated + "ili"]
          end

          def _participle_active_imperfective
            unless perfective?
              [stem + "екье", stem_transliterated + "ekje"]
            end
          end

          def _participle_passive_imperfective
            unless perfective?
              [stem + "име", stem_transliterated + "ime"]
            end
          end

          def _participle_passive_perfective
            if perfective?
              if past_participle_in_t?
                [stem + "ите", stem_transliterated + "ite"]
              else
                [stem_mutated(labial_only: true) + "ене", stem_transliterated_mutated(labial_only: true) + "ene"]
              end
            end
          end

          def _adv_participle_imperfective
            unless perfective?
              [stem + "ин", stem_transliterated + "in"]
            end
          end

          def _adv_participle_perfective
            if perfective?
              [stem + "иве", stem_transliterated + "ive"]
            end
          end
        end
      end
    end
  end
end
