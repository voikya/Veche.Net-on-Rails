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
            [stem + "ити", stem_transliterated + "iti"]
          end

          def _supine
            [stem + "ит", stem_transliterated + "it"]
          end

          def _present_first_singular
            if neoacute?
              [neoacute(desinence_mutated) + "ун", neoacute_transliterated(desinence_transliterated_mutated) + "ún"]
            elsif palatal_stem?
              [desinence + "юн", desinence_transliterated[0..-2] + "iún"]
            else
              [desinence_mutated + "ун", desinence_transliterated_mutated + "ún"]
            end
          end

          def _present_third_plural
            if neoacute?
              [neoacute(desinence) + "ат", neoacute_transliterated(desinence_transliterated) + "át"]
            elsif palatal_stem?
              [desinence + "ят", desinence_transliterated[0..-2] + "iát"]
            else
              [desinence + "ат", desinence_transliterated + "át"]
            end
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
              if palatal_stem?
                [stem + "екье", stem_transliterated[0..-2] + "iekje"]
              else
                [stem + "екье", stem_transliterated + "ekje"]
              end
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
              elsif palatal_stem?
                [stem + "ене", stem_transliterated[0..-2] + "iene"]
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

          private

          def palatal_stem?
            stem_transliterated[-1] == "j"
          end
        end
      end
    end
  end
end
