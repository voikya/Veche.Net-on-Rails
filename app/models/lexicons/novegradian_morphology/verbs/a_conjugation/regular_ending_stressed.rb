require_relative '../periphrastic_forms'

module Morphology
  module Novegradian
    module Verbs
      module AConjugation
        module RegularEndingStressed
          include Verbs::PeriphrasticForms

          def conjugation
            "A Conjugation"
          end

          def subtype
            "Regular Ending-Stressed"
          end

          def _infinitive
            [desinence + "ати", desinence_transliterated + "áti"]
          end

          def _supine
            [desinence + "ат", desinence_transliterated + "át"]
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
            [desinence + "ам", desinence_transliterated + "ám"]
          end

          def _present_first_dual
            [desinence + "ава", desinence_transliterated + "áva"]
          end

          def _present_first_plural
            [desinence + "аме", desinence_transliterated + "áme"]
          end

          def _present_second_singular
            [desinence + "аш", desinence_transliterated + "áś"]
          end

          def _present_second_dual
            [desinence + "аста", desinence_transliterated + "ásta"]
          end

          def _present_second_plural
            [desinence + "ате", desinence_transliterated + "áte"]
          end

          def _present_third_singular
            [desinence + "аст", desinence_transliterated + "ást"]
          end

          def _present_third_dual
            _present_second_dual
          end

          def _present_third_plural
            [desinence + "ати", desinence_transliterated + "áti"]
          end

          def _past_singular_masculine
            [desinence + "але", desinence_transliterated + "ále"]
          end

          def _past_singular_feminine
            [desinence + "ала", desinence_transliterated + "ála"]
          end

          def _past_singular_neuter
            [desinence + "ало", desinence_transliterated + "álo"]
          end

          def _past_dual
            [desinence + "алѣ", desinence_transliterated + "álě"]
          end

          def _past_plural
            [desinence + "али", desinence_transliterated + "áli"]
          end

          def _imperative_second_singular
            [desinence + "ай", desinence_transliterated + "ái"]
          end

          def _imperative_second_dual
            [desinence + "айта", desinence_transliterated + "áita"]
          end

          def _imperative_second_plural
            [desinence + "айте", desinence_transliterated + "áite"]
          end

          def _imperative_first_dual
            [desinence + "аута", desinence_transliterated + "áuta"]
          end

          def _imperative_first_plural
            [desinence + "амте", desinence_transliterated + "ámte"]
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
