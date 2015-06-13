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
            if retracted_stress?
              [stem + "ати", stem_transliterated + "ati"]
            else
              [desinence + "ати", desinence_transliterated + "áti"]
            end
          end

          def _supine
            if retracted_stress?
              [stem + "ат", stem_transliterated + "at"]
            else
              [desinence + "ат", desinence_transliterated + "át"]
            end
          end

          def _present_first_singular
            [desinence_mutated + "ун", desinence_transliterated_mutated + "ún"]
          end

          def _past_singular_masculine
            if retracted_stress?
              [stem + "але", stem_transliterated + "ale"]
            else
              [desinence + "але", desinence_transliterated + "ále"]
            end
          end

          def _past_singular_feminine
            if retracted_stress?
              [stem + "ала", stem_transliterated + "ala"]
            else
              [desinence + "ала", desinence_transliterated + "ála"]
            end
          end

          def _past_singular_neuter
            if retracted_stress?
              [stem + "ало", stem_transliterated + "alo"]
            else
              [desinence + "ало", desinence_transliterated + "álo"]
            end
          end

          def _past_dual
            if retracted_stress?
              [stem + "алѣ", stem_transliterated + "alě"]
            else
              [desinence + "алѣ", desinence_transliterated + "álě"]
            end
          end

          def _past_plural
            if retracted_stress?
              [stem + "али", stem_transliterated + "ali"]
            else
              [desinence + "али", desinence_transliterated + "áli"]
            end
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
              if retracted_stress?
                [stem + "ане", stem_transliterated + "ane"]
              else
                [desinence + "ане", desinence_transliterated + "áne"]
              end
            end
          end

          def _adv_participle_perfective
            if perfective?
              if retracted_stress?
                [stem + "аве", stem_transliterated + "ave"]
              else
                [desinence + "аве", desinence_transliterated + "áve"]
              end
            end
          end
        end
      end
    end
  end
end
