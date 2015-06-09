require_relative './regular_ending_stressed'

module Morphology
  module Novegradian
    module Verbs
      module IConjugation
        module PalatalStem
          include IConjugation::RegularEndingStressed

          def conjugation
            "I Conjugation"
          end

          def subtype
            "Palatal Stem"
          end

          def _infinitive
            [desinence + "ати", desinence_transliterated + "áti"]
          end

          def _supine
            [desinence + "ат", desinence_transliterated + "át"]
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
            [desinence + "ѣ", desinence_transliterated + "ě́"]
          end

          def _imperative_second_dual
            [desinence + "ѣта", desinence_transliterated + "ě́ta"]
          end

          def _imperative_second_plural
            [desinence + "ѣте", desinence_transliterated + "ě́te"]
          end

          def _imperative_first_dual
            [desinence + "ѣута", desinence_transliterated + "ě́uta"]
          end

          def _imperative_first_plural
            [desinence + "ѣмте", desinence_transliterated + "ě́mte"]
          end

          def _participle_active_imperfective
            unless perfective?
              [desinence + "акье", desinence_transliterated + "ákje"]
            end
          end

          def _participle_passive_perfective
            if perfective?
              [desinence + "ане", desinence_transliterated + "áne"]
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
