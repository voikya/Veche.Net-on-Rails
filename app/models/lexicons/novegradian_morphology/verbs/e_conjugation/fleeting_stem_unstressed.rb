require_relative './regular_ending_stressed'

module Morphology
  module Novegradian
    module Verbs
      module EConjugation
        module FleetingStemUnstressed
          include EConjugation::RegularEndingStressed

          def conjugation
            "E Conjugation"
          end

          def subtype
            "Fleeting Stem Consonant with Ending Stress"
          end

          def _infinitive
            [stem[0..-2] + "ти", stem_transliterated[0..-2] + "ti"]
          end

          def _supine
            [stem[0..-2] + "т", stem_transliterated[0..-2] + "t"]
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
            [stem[0..-2] + "ле", stem_transliterated[0..-2] + "le"]
          end

          def _past_singular_feminine
            [stem[0..-2] + "ла", remove_stress(stem_transliterated[0..-2]) + "lá"]
          end

          def _past_singular_neuter
            [stem[0..-2] + "ло", stem_transliterated[0..-2] + "lo"]
          end

          def _past_dual
            [stem[0..-2] + "лѣ", stem_transliterated[0..-2] + "lě"]
          end

          def _past_plural
            [stem[0..-2] + "ли", stem_transliterated[0..-2] + "li"]
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
              [desinence + "ене", desinence_transliterated + "éne"]
            end
          end

          def _adv_participle_imperfective
            unless perfective?
              [desinence + "и", desinence_transliterated + "í"]
            end
          end

          def _adv_participle_perfective
            if perfective?
              [stem[0..-2] + "ве", stem_transliterated[0..-2] + "ve"]
            end
          end
        end
      end
    end
  end
end
