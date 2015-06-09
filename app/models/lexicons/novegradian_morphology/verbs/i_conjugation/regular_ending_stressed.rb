require_relative '../periphrastic_forms'
require_relative '../palatalization'

module Morphology
  module Novegradian
    module Verbs
      module IConjugation
        module RegularEndingStressed
          include Verbs::PeriphrasticForms
          include Verbs::Palatalization

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
            [desinence_mutated + "ун", desinence_transliterated_mutated + "ún"]
          end

          def _present_first_dual
            [desinence + "ива", desinence_transliterated + "íva"]
          end

          def _present_first_plural
            [desinence + "им", desinence_transliterated + "ím"]
          end

          def _present_second_singular
            [desinence + "иш", desinence_transliterated + "íś"]
          end

          def _present_second_dual
            [desinence + "ита", desinence_transliterated + "íta"]
          end

          def _present_second_plural
            [desinence + "ите", desinence_transliterated + "íte"]
          end

          def _present_third_singular
            [desinence + "ит", desinence_transliterated + "ít"]
          end

          def _present_third_dual
            _present_second_dual
          end

          def _present_third_plural
            [desinence + "ат", desinence_transliterated + "át"]
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
              [desinence + "екье", desinence_transliterated + "ékje"]
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
        end
      end
    end
  end
end
