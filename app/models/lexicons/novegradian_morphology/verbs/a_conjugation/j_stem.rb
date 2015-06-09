require_relative '../periphrastic_forms'

module Morphology
  module Novegradian
    module Verbs
      module AConjugation
        module JStem
          include Verbs::PeriphrasticForms

          def conjugation
            "A Conjugation"
          end

          def subtype
            "*-j-/-v- Stem"
          end

          def _infinitive
            [desinence + "овати", desinence_transliterated + "óvati"]
          end

          def _supine
            [desinence + "оват", desinence_transliterated + "óvat"]
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
            [desinence + "уям", desinence_transliterated + "úiam"]
          end

          def _present_first_dual
            [desinence + "уява", desinence_transliterated + "úiava"]
          end

          def _present_first_plural
            [desinence + "уяме", desinence_transliterated + "úiame"]
          end

          def _present_second_singular
            [desinence + "уяш", desinence_transliterated + "úiaś"]
          end

          def _present_second_dual
            [desinence + "уяста", desinence_transliterated + "úiasta"]
          end

          def _present_second_plural
            [desinence + "уяте", desinence_transliterated + "úiate"]
          end

          def _present_third_singular
            [desinence + "уяст", desinence_transliterated + "úiast"]
          end

          def _present_third_dual
            _present_second_dual
          end

          def _present_third_plural
            [desinence + "уяти", desinence_transliterated + "úiati"]
          end

          def _past_singular_masculine
            [desinence + "овале", desinence_transliterated + "óvale"]
          end

          def _past_singular_feminine
            [desinence + "овала", desinence_transliterated + "óvala"]
          end

          def _past_singular_neuter
            [desinence + "овало", desinence_transliterated + "óvalo"]
          end

          def _past_dual
            [desinence + "овалѣ", desinence_transliterated + "óvalě"]
          end

          def _past_plural
            [desinence + "овали", desinence_transliterated + "óvali"]
          end

          def _imperative_second_singular
            [desinence + "овай", desinence_transliterated + "ovái"]
          end

          def _imperative_second_dual
            [desinence + "овайта", desinence_transliterated + "ováita"]
          end

          def _imperative_second_plural
            [desinence + "овайте", desinence_transliterated + "ováite"]
          end

          def _imperative_first_dual
            [desinence + "оваута", desinence_transliterated + "ováuta"]
          end

          def _imperative_first_plural
            [desinence + "овамте", desinence_transliterated + "ovámte"]
          end

          def _participle_active_imperfective
            unless perfective?
              [desinence + "уякье", desinence_transliterated + "úiakje"]
            end
          end

          def _participle_passive_imperfective
            unless perfective?
              [desinence + "уяме", desinence_transliterated + "úiame"]
            end
          end

          def _participle_passive_perfective
            if perfective?
              [desinence + "уяне", desinence_transliterated + "úiane"]
            end
          end

          def _adv_participle_imperfective
            unless perfective?
              [desinence + "уяен", desinence_transliterated + "úiaien"]
            end
          end

          def _adv_participle_perfective
            if perfective?
              [desinence + "оваве", desinence_transliterated + "óvave"]
            end
          end
        end
      end
    end
  end
end
