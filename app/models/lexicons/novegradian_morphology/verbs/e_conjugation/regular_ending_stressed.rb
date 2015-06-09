require_relative '../periphrastic_forms'
require_relative '../palatalization'

module Morphology
  module Novegradian
    module Verbs
      module EConjugation
        module RegularEndingStressed
          include Verbs::PeriphrasticForms
          include Verbs::Palatalization

          def conjugation
            "E Conjugation"
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
            [desinence_mutated + "ун", desinence_transliterated_mutated + "ún"]
          end

          def _present_first_dual
            [desinence_mutated + "ева", desinence_transliterated_mutated + "éva"]
          end

          def _present_first_plural
            [desinence_mutated + "ем", desinence_transliterated_mutated + "ém"]
          end

          def _present_second_singular
            [desinence_mutated + "еш", desinence_transliterated_mutated + "éś"]
          end

          def _present_second_dual
            [desinence_mutated + "ета", desinence_transliterated_mutated + "éta"]
          end

          def _present_second_plural
            [desinence_mutated + "ете", desinence_transliterated_mutated + "éte"]
          end

          def _present_third_singular
            [desinence_mutated + "ет", desinence_transliterated_mutated + "ét"]
          end

          def _present_third_dual
            _present_second_dual
          end

          def _present_third_plural
            [desinence_mutated + "ут", desinence_transliterated_mutated + "út"]
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
            [desinence_mutated + "и", desinence_transliterated_mutated + "í"]
          end

          def _imperative_second_dual
            [desinence_mutated + "ѣта", desinence_transliterated_mutated + "ě́ta"]
          end

          def _imperative_second_plural
            [desinence_mutated + "ѣте", desinence_transliterated_mutated + "ě́te"]
          end

          def _imperative_first_dual
            [desinence_mutated + "ѣута", desinence_transliterated_mutated + "ě́uta"]
          end

          def _imperative_first_plural
            [desinence_mutated + "ѣмте", desinence_transliterated_mutated + "ě́mte"]
          end

          def _participle_active_imperfective
            unless perfective?
              [desinence_mutated + "акье", desinence_transliterated_mutated + "ákje"]
            end
          end

          def _participle_passive_imperfective
            unless perfective?
              [desinence_mutated + "еме", desinence_transliterated_mutated + "éme"]
            end
          end

          def _participle_passive_perfective
            if perfective?
              [desinence + "ане", desinence_transliterated + "áne"]
            end
          end

          def _adv_participle_imperfective
            unless perfective?
              [desinence_mutated + "и", desinence_transliterated_mutated + "í"]
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
