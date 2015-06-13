require_relative './regular_ending_stressed'

module Morphology
  module Novegradian
    module Verbs
      module EConjugation
        module ZeroGradeAblaut
          include EConjugation::RegularEndingStressed

          def conjugation
            "E Conjugation"
          end

          def subtype
            "Zero-Grade Ablaut"
          end

          def _infinitive
            [stem + "ати", stem_transliterated + "áti"]
          end

          def _supine
            [stem + "ат", stem_transliterated + "át"]
          end

          def _present_first_singular
            [desinence + "ун", desinence_transliterated + "ún"]
          end

          def _present_first_dual
            [desinence + "ева", desinence_transliterated + "éva"]
          end

          def _present_first_plural
            [desinence + "ем", desinence_transliterated + "ém"]
          end

          def _present_second_singular
            [desinence + "еш", desinence_transliterated + "éś"]
          end

          def _present_second_dual
            [desinence + "ета", desinence_transliterated + "éta"]
          end

          def _present_second_plural
            [desinence + "ете", desinence_transliterated + "éte"]
          end

          def _present_third_singular
            [desinence + "ет", desinence_transliterated + "ét"]
          end

          def _present_third_dual
            _present_second_dual
          end

          def _present_third_plural
            [desinence + "ут", desinence_transliterated + "út"]
          end

          def _past_singular_masculine
            [stem + "але", stem_transliterated + "ále"]
          end

          def _past_singular_feminine
            [stem + "ала", remove_stress(stem_transliterated) + "alá"]
          end

          def _past_singular_neuter
            [stem + "ало", stem_transliterated + "álo"]
          end

          def _past_dual
            [stem + "алѣ", stem_transliterated + "álě"]
          end

          def _past_plural
            [stem + "али", stem_transliterated + "áli"]
          end

          def _imperative_second_singular
            [desinence + "и", desinence_transliterated + "í"]
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

          def _participle_passive_imperfective
            unless perfective?
              [desinence + "еме", desinence_transliterated + "éme"]
            end
          end

          def _participle_passive_perfective
            if perfective?
              [stem + "ане", stem_transliterated + "áne"]
            end
          end

          def _adv_participle_imperfective
            unless perfective?
              [desinence + "и", desinence_transliterated + "í"]
            end
          end

          def _adv_participle_perfective
            if perfective?
              [stem + "аве", stem_transliterated + "áve"]
            end
          end
        end
      end
    end
  end
end
