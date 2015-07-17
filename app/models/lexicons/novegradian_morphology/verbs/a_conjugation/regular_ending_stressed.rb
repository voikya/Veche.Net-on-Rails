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
            [desinence + (palatal_stem? ? "яти" : "ати"), desinence_transliterated + "áti"]
          end

          def _supine
            [desinence + (palatal_stem? ? "ят" : "ат"), desinence_transliterated + "át"]
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
            [desinence + (palatal_stem? ? "ям" : "ам"), desinence_transliterated + "ám"]
          end

          def _present_first_dual
            [desinence + (palatal_stem? ? "ява" : "ава"), desinence_transliterated + "áva"]
          end

          def _present_first_plural
            [desinence + (palatal_stem? ? "яме" : "аме"), desinence_transliterated + "áme"]
          end

          def _present_second_singular
            [desinence + (palatal_stem? ? "яш" : "аш"), desinence_transliterated + "áś"]
          end

          def _present_second_dual
            [desinence + (palatal_stem? ? "яста" : "аста"), desinence_transliterated + "ásta"]
          end

          def _present_second_plural
            [desinence + (palatal_stem? ? "яте" : "ате"), desinence_transliterated + "áte"]
          end

          def _present_third_singular
            [desinence + (palatal_stem? ? "яст" : "аст"), desinence_transliterated + "ást"]
          end

          def _present_third_dual
            _present_second_dual
          end

          def _present_third_plural
            [desinence + (palatal_stem? ? "яти" : "ати"), desinence_transliterated + "áti"]
          end

          def _past_singular_masculine
            [desinence + (palatal_stem? ? "яле" : "але"), desinence_transliterated + "ále"]
          end

          def _past_singular_feminine
            [desinence + (palatal_stem? ? "яла" : "ала"), desinence_transliterated + "ála"]
          end

          def _past_singular_neuter
            [desinence + (palatal_stem? ? "яло" : "ало"), desinence_transliterated + "álo"]
          end

          def _past_dual
            [desinence + (palatal_stem? ? "ялѣ" : "алѣ"), desinence_transliterated + "álě"]
          end

          def _past_plural
            [desinence + (palatal_stem? ? "яли" : "али"), desinence_transliterated + "áli"]
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
              [desinence + (palatal_stem? ? "якье" : "акье"), desinence_transliterated + "ákje"]
            end
          end

          def _participle_passive_imperfective
            unless perfective?
              [desinence + (palatal_stem? ? "яме" : "аме"), desinence_transliterated + "áme"]
            end
          end

          def _participle_passive_perfective
            if perfective?
              [desinence + (palatal_stem? ? "яне" : "ане"), desinence_transliterated + "áne"]
            end
          end

          def _adv_participle_imperfective
            unless perfective?
              [desinence + (palatal_stem? ? "яен" : "аен"), desinence_transliterated + "áien"]
            end
          end

          def _adv_participle_perfective
            if perfective?
              [desinence + (palatal_stem? ? "яве" : "аве"), desinence_transliterated + "áve"]
            end
          end

          private

          def palatal_stem?
            stem_transliterated[-1] == "i" || stem_transliterated[-1] == "j"
          end
        end
      end
    end
  end
end
