require_relative '../periphrastic_forms'

module Morphology
  module Novegradian
    module Verbs
      module AConjugation
        module RegularStemStressed
          include Verbs::PeriphrasticForms

          def conjugation
            "A Conjugation"
          end

          def subtype
            "Regular Stem-Stressed"
          end

          def _infinitive
            [stem + "ати", stem_transliterated + "ati"]
          end

          def _supine
            [stem + "ат", stem_transliterated + "at"]
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
            [stem + "ам", stem_transliterated + "am"]
          end

          def _present_first_dual
            [stem + "ава", stem_transliterated + "ava"]
          end

          def _present_first_plural
            [stem + "аме", stem_transliterated + "ame"]
          end

          def _present_second_singular
            [stem + "аш", stem_transliterated + "aś"]
          end

          def _present_second_dual
            [stem + "аста", stem_transliterated + "asta"]
          end

          def _present_second_plural
            [stem + "ате", stem_transliterated + "ate"]
          end

          def _present_third_singular
            [stem + "аст", stem_transliterated + "ast"]
          end

          def _present_third_dual
            _present_second_dual
          end

          def _present_third_plural
            [stem + "ати", stem_transliterated + "ati"]
          end

          def _past_singular_masculine
            [stem + "але", stem_transliterated + "ale"]
          end

          def _past_singular_feminine
            [stem + "ала", stem_transliterated + "ala"]
          end

          def _past_singular_neuter
            [stem + "ало", stem_transliterated + "alo"]
          end

          def _past_dual
            [stem + "алѣ", stem_transliterated + "alě"]
          end

          def _past_plural
            [stem + "али", stem_transliterated + "ali"]
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
              [stem + "акье", stem_transliterated + "akje"]
            end
          end

          def _participle_passive_imperfective
            unless perfective?
              [stem + "аме", stem_transliterated + "ame"]
            end
          end

          def _participle_passive_perfective
            if perfective?
              [stem + "ане", stem_transliterated + "ane"]
            end
          end

          def _adv_participle_imperfective
            unless perfective?
              [stem + "аен", stem_transliterated + "aien"]
            end
          end

          def _adv_participle_perfective
            if perfective?
              [stem + "аве", stem_transliterated + "ave"]
            end
          end
        end
      end
    end
  end
end
