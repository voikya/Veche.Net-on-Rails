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
            [stem + (palatal_stem? ? "яти" : "ати"), stem_transliterated + "ati"]
          end

          def _supine
            [stem + (palatal_stem? ? "ят" : "ат"), stem_transliterated + "at"]
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
            [stem + (palatal_stem? ? "ям" : "ам"), stem_transliterated + "am"]
          end

          def _present_first_dual
            [stem + (palatal_stem? ? "ява" : "ава"), stem_transliterated + "ava"]
          end

          def _present_first_plural
            [stem + (palatal_stem? ? "яме" : "аме"), stem_transliterated + "ame"]
          end

          def _present_second_singular
            [stem + (palatal_stem? ? "яш" : "аш"), stem_transliterated + "aś"]
          end

          def _present_second_dual
            [stem + (palatal_stem? ? "яста" : "аста"), stem_transliterated + "asta"]
          end

          def _present_second_plural
            [stem + (palatal_stem? ? "яте" : "ате"), stem_transliterated + "ate"]
          end

          def _present_third_singular
            [stem + (palatal_stem? ? "яст" : "аст"), stem_transliterated + "ast"]
          end

          def _present_third_dual
            _present_second_dual
          end

          def _present_third_plural
            [stem + (palatal_stem? ? "яти" : "ати"), stem_transliterated + "ati"]
          end

          def _past_singular_masculine
            [stem + (palatal_stem? ? "яле" : "але"), stem_transliterated + "ale"]
          end

          def _past_singular_feminine
            [stem + (palatal_stem? ? "яла" : "ала"), stem_transliterated + "ala"]
          end

          def _past_singular_neuter
            [stem + (palatal_stem? ? "яло" : "ало"), stem_transliterated + "alo"]
          end

          def _past_dual
            [stem + (palatal_stem? ? "ялѣ" : "алѣ"), stem_transliterated + "alě"]
          end

          def _past_plural
            [stem + (palatal_stem? ? "яли" : "али"), stem_transliterated + "ali"]
          end

          def _imperative_second_singular
            [desinence + (palatal_stem? ? "яй" : "ай"), desinence_transliterated + "ái"]
          end

          def _imperative_second_dual
            [desinence + (palatal_stem? ? "яйта" : "айта"), desinence_transliterated + "áita"]
          end

          def _imperative_second_plural
            [desinence + (palatal_stem? ? "яйте" : "айте"), desinence_transliterated + "áite"]
          end

          def _imperative_first_dual
            [desinence + (palatal_stem? ? "яута" : "аута"), desinence_transliterated + "áuta"]
          end

          def _imperative_first_plural
            [desinence + (palatal_stem? ? "ямте" : "амте"), desinence_transliterated + "ámte"]
          end

          def _participle_active_imperfective
            unless perfective?
              [stem + (palatal_stem? ? "якье" : "акье"), stem_transliterated + "akje"]
            end
          end

          def _participle_passive_imperfective
            unless perfective?
              [stem + (palatal_stem? ? "яме" : "аме"), stem_transliterated + "ame"]
            end
          end

          def _participle_passive_perfective
            if perfective?
              [stem + (palatal_stem? ? "яне" : "ане"), stem_transliterated + "ane"]
            end
          end

          def _adv_participle_imperfective
            unless perfective?
              [stem + (palatal_stem? ? "яен" : "аен"), stem_transliterated + "aien"]
            end
          end

          def _adv_participle_perfective
            if perfective?
              [stem + (palatal_stem? ? "яве" : "аве"), stem_transliterated + "ave"]
            end
          end

          private

          def palatal_stem?
            stem_transliterated[-1] == "i"
          end
        end
      end
    end
  end
end
