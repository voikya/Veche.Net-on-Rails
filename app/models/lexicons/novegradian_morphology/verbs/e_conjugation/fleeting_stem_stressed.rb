require_relative './regular_stem_stressed'

module Morphology
  module Novegradian
    module Verbs
      module EConjugation
        module FleetingStemStressed
          include EConjugation::RegularStemStressed

          def conjugation
            "E Conjugation"
          end

          def subtype
            "Fleeting Stem Consonant with Stem Stress"
          end

          def _infinitive
            [stem[0..-2] + "ти", stem_transliterated[0..-2] + "ti"]
          end

          def _supine
            [stem[0..-2] + "т", stem_transliterated[0..-2] + "t"]
          end

          def _present_first_singular
            [stem + "ун", stem_transliterated + "un"]
          end

          def _present_first_dual
            [stem + "ева", stem_transliterated + "eva"]
          end

          def _present_first_plural
            [stem + "ем", stem_transliterated + "em"]
          end

          def _present_second_singular
            [stem + "еш", stem_transliterated + "eś"]
          end

          def _present_second_dual
            [stem + "ета", stem_transliterated + "eta"]
          end

          def _present_second_plural
            [stem + "ете", stem_transliterated + "ete"]
          end

          def _present_third_singular
            [stem + "ет", stem_transliterated + "et"]
          end

          def _present_third_dual
            _present_second_dual
          end

          def _present_third_plural
            [stem + "ут", stem_transliterated + "ut"]
          end

          def _past_singular_masculine
            [stem[0..-2] + "ле", stem_transliterated[0..-2] + "le"]
          end

          def _past_singular_feminine
            [stem[0..-2] + "ла", stem_transliterated[0..-2] + "la"]
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
            [stem + "и", remove_stress(stem_transliterated) + "í"]
          end

          def _imperative_second_dual
            [stem + "ѣта", remove_stress(stem_transliterated) + "ě́ta"]
          end

          def _imperative_second_plural
            [stem + "ѣте", remove_stress(stem_transliterated) + "ě́te"]
          end

          def _imperative_first_dual
            [stem + "ѣута", remove_stress(stem_transliterated) + "ě́uta"]
          end

          def _imperative_first_plural
            [stem + "ѣмте", remove_stress(stem_transliterated) + "ě́mte"]
          end

          def _participle_active_imperfective
            unless perfective?
              [stem + "акье", remove_stress(stem_transliterated) + "ákje"]
            end
          end

          def _participle_passive_imperfective
            unless perfective?
              [stem + "еме", remove_stress(stem_transliterated) + "éme"]
            end
          end

          def _participle_passive_perfective
            if perfective?
              [desinence + "ене", desinence_transliterated + "éne"]
            end
          end

          def _adv_participle_imperfective
            unless perfective?
              [stem + "и", remove_stress(stem_transliterated) + "í"]
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
