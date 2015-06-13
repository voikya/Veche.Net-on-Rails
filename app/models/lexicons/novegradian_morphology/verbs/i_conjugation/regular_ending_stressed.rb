require_relative '../periphrastic_forms'
require_relative '../palatalization'
require_relative '../neoacute'

module Morphology
  module Novegradian
    module Verbs
      module IConjugation
        module RegularEndingStressed
          include Verbs::PeriphrasticForms
          include Verbs::Palatalization
          include Verbs::Neoacute

          def conjugation
            "I Conjugation"
          end

          def subtype
            "Regular Ending-Stressed"
          end

          def _infinitive
            [desinence + "ити", desinence_transliterated + "íti"]
          end

          def _supine
            [desinence + "ит", desinence_transliterated + "ít"]
          end

          def _perfective
            unless perfective?
              [tertiary, tertiary_transliterated]
            end
          end

          def _imperfective
            if perfective?
              [tertiary, tertiary_transliterated]
            end
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

          def _present_first_dual
            if neoacute?
              [neoacute(desinence) + "ива", neoacute_transliterated(desinence_transliterated) + "íva"]
            else
              [desinence + "ива", desinence_transliterated + "íva"]
            end
          end

          def _present_first_plural
            if neoacute?
              [neoacute(desinence) + "им", neoacute_transliterated(desinence_transliterated) + "ím"]
            else
              [desinence + "им", desinence_transliterated + "ím"]
            end
          end

          def _present_second_singular
            if neoacute?
              [neoacute(desinence) + "иш", neoacute_transliterated(desinence_transliterated) + "íś"]
            else
              [desinence + "иш", desinence_transliterated + "íś"]
            end
          end

          def _present_second_dual
            if neoacute?
              [neoacute(desinence) + "ита", neoacute_transliterated(desinence_transliterated) + "íta"]
            else
              [desinence + "ита", desinence_transliterated + "íta"]
            end
          end

          def _present_second_plural
            if neoacute?
              [neoacute(desinence) + "ите", neoacute_transliterated(desinence_transliterated) + "íte"]
            else
              [desinence + "ите", desinence_transliterated + "íte"]
            end
          end

          def _present_third_singular
            if neoacute?
              [neoacute(desinence) + "ит", neoacute_transliterated(desinence_transliterated) + "ít"]
            else
              [desinence + "ит", desinence_transliterated + "ít"]
            end
          end

          def _present_third_dual
            _present_second_dual
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
            [desinence + "иле", desinence_transliterated + "íle"]
          end

          def _past_singular_feminine
            [desinence + "ила", desinence_transliterated + "íla"]
          end

          def _past_singular_neuter
            [desinence + "ило", desinence_transliterated + "ílo"]
          end

          def _past_dual
            [desinence + "илѣ", desinence_transliterated + "ílě"]
          end

          def _past_plural
            [desinence + "или", desinence_transliterated + "íli"]
          end

          def _imperative_second_singular
            [desinence + "и", desinence_transliterated + "í"]
          end

          def _imperative_second_dual
            [desinence + "ита", desinence_transliterated + "íta"]
          end

          def _imperative_second_plural
            [desinence + "ите", desinence_transliterated + "íte"]
          end

          def _imperative_first_dual
            [desinence + "иўта", desinence_transliterated + "íwta"]
          end

          def _imperative_first_plural
            [desinence + "имте", desinence_transliterated + "ímte"]
          end

          def _participle_active_imperfective
            unless perfective?
              if palatal_stem?
                [desinence + "екье", desinence_transliterated[0..-2] + "iékje"]
              else
                [desinence + "екье", desinence_transliterated + "ékje"]
              end
            end
          end

          def _participle_passive_imperfective
            unless perfective?
              [desinence + "име", desinence_transliterated + "íme"]
            end
          end

          def _participle_passive_perfective
            if perfective?
              if past_participle_in_t?
                [desinence + "ите", desinence_transliterated + "íte"]
              elsif palatal_stem?
                [desinence + "ене", desinence_transliterated[0..-2] + "iéne"]
              else
                [desinence_mutated(labial_only: true) + "ене", desinence_transliterated_mutated(labial_only: true) + "éne"]
              end
            end
          end

          def _adv_participle_imperfective
            unless perfective?
              [desinence + "ин", desinence_transliterated + "ín"]
            end
          end

          def _adv_participle_perfective
            if perfective?
              [desinence + "иве", desinence_transliterated + "íve"]
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
