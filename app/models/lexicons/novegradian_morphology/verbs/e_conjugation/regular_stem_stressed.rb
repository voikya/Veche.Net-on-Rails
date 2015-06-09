require_relative '../periphrastic_forms'
require_relative '../palatalization'

module Morphology
  module Novegradian
    module Verbs
      module EConjugation
        module RegularStemStressed
          include Verbs::PeriphrasticForms
          include Verbs::Palatalization

          def conjugation
            "E Conjugation"
          end

          def subtype
            "Regular Stem-Stressed"
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
            [stem_mutated + "ун", stem_transliterated_mutated + "un"]
          end

          def _present_first_dual
            [stem_mutated + "ева", stem_transliterated_mutated + "eva"]
          end

          def _present_first_plural
            [stem_mutated + "ем", stem_transliterated_mutated + "em"]
          end

          def _present_second_singular
            [stem_mutated + "еш", stem_transliterated_mutated + "eś"]
          end

          def _present_second_dual
            [stem_mutated + "ета", stem_transliterated_mutated + "eta"]
          end

          def _present_second_plural
            [stem_mutated + "ете", stem_transliterated_mutated + "ete"]
          end

          def _present_third_singular
            [stem_mutated + "ет", stem_transliterated_mutated + "et"]
          end

          def _present_third_dual
            _present_second_dual
          end

          def _present_third_plural
            [stem_mutated + "ут", stem_transliterated_mutated + "ut"]
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
            [stem_mutated + "и", remove_stress(stem_transliterated_mutated) + "í"]
          end

          def _imperative_second_dual
            [stem_mutated + "ѣта", remove_stress(stem_transliterated_mutated) + "ě́ta"]
          end

          def _imperative_second_plural
            [stem_mutated + "ѣте", remove_stress(stem_transliterated_mutated) + "ě́te"]
          end

          def _imperative_first_dual
            [stem_mutated + "ѣута", remove_stress(stem_transliterated_mutated) + "ě́uta"]
          end

          def _imperative_first_plural
            [stem_mutated + "ѣмте", remove_stress(stem_transliterated_mutated) + "ě́mte"]
          end

          def _participle_active_imperfective
            unless perfective?
              [stem_mutated + "акье", remove_stress(stem_transliterated_mutated) + "ákje"]
            end
          end

          def _participle_passive_imperfective
            unless perfective?
              [stem_mutated + "еме", remove_stress(stem_transliterated_mutated) + "éme"]
            end
          end

          def _participle_passive_perfective
            if perfective?
              [desinence + "ане", desinence_transliterated + "áne"]
            end
          end

          def _adv_participle_imperfective
            unless perfective?
              [stem_mutated + "и", remove_stress(stem_transliterated_mutated) + "í"]
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
