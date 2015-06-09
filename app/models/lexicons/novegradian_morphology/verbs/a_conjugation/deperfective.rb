require_relative '../periphrastic_forms'

module Morphology
  module Novegradian
    module Verbs
      module AConjugation
        module Deperfective
          include Verbs::PeriphrasticForms

          def conjugation
            "A Conjugation"
          end

          def subtype
            "Deperfective"
          end

          def _infinitive
            [desinence + "овати", desinence_transliterated + "ováti"]
          end

          def _supine
            [desinence + "оват", desinence_transliterated + "ovát"]
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
            [desinence + "овам", desinence_transliterated + "ovám"]
          end

          def _present_first_dual
            [desinence + "овава", desinence_transliterated + "ováva"]
          end

          def _present_first_plural
            [desinence + "оваме", desinence_transliterated + "ováme"]
          end

          def _present_second_singular
            [desinence + "оваш", desinence_transliterated + "ováś"]
          end

          def _present_second_dual
            [desinence + "оваста", desinence_transliterated + "ovásta"]
          end

          def _present_second_plural
            [desinence + "овате", desinence_transliterated + "ováte"]
          end

          def _present_third_singular
            [desinence + "оваст", desinence_transliterated + "ovást"]
          end

          def _present_third_dual
            _present_second_dual
          end

          def _present_third_plural
            [desinence + "овати", desinence_transliterated + "ováti"]
          end

          def _past_singular_masculine
            [desinence + "овале", desinence_transliterated + "ovále"]
          end

          def _past_singular_feminine
            [desinence + "овала", desinence_transliterated + "ovála"]
          end

          def _past_singular_neuter
            [desinence + "овало", desinence_transliterated + "oválo"]
          end

          def _past_dual
            [desinence + "овалѣ", desinence_transliterated + "oválě"]
          end

          def _past_plural
            [desinence + "овали", desinence_transliterated + "ováli"]
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
              [desinence + "акье", desinence_transliterated + "ákje"]
            end
          end

          def _participle_passive_imperfective
            unless perfective?
              [desinence + "аме", desinence_transliterated + "áme"]
            end
          end

          def _participle_passive_perfective
            if perfective?
              [desinence + "ане", desinence_transliterated + "áne"]
            end
          end

          def _adv_participle_imperfective
            unless perfective?
              [desinence + "аен", desinence_transliterated + "áien"]
            end
          end

          def _adv_participle_perfective
            if perfective?
              [desinence + "аве", desinence_transliterated + "áve"]
            end
          end
        end
      end
    end
  end
end
