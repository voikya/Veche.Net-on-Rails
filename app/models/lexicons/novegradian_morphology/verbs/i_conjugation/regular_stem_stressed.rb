require_relative '../periphrastic_forms'
require_relative '../palatalization'

module Morphology
  module Novegradian
    module Verbs
      module IConjugation
        module RegularStemStressed
          include Verbs::PeriphrasticForms
          include Verbs::Palatalization

          def conjugation
            "I Conjugation"
          end

          def subtype
            "Regular Stem-Stressed"
          end

          def _infinitive
            [stem + "ити", stem_transliterated + "iti"]
          end

          def _supine
            [stem + "ит", stem_transliterated + "it"]
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
            [stem_mutated + "ун", stem_transliterated_mutated + "un"]
          end

          def _present_first_dual
            [stem + "ива", stem_transliterated + "iva"]
          end

          def _present_first_plural
            [stem + "им", stem_transliterated + "im"]
          end

          def _present_second_singular
            [stem + "иш", stem_transliterated + "iś"]
          end

          def _present_second_dual
            [stem + "ита", stem_transliterated + "ita"]
          end

          def _present_second_plural
            [stem + "ите", stem_transliterated + "ite"]
          end

          def _present_third_singular
            [stem + "ит", stem_transliterated + "it"]
          end

          def _present_third_dual
            _present_second_dual
          end

          def _present_third_plural
            [stem + "ат", stem_transliterated + "at"]
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
