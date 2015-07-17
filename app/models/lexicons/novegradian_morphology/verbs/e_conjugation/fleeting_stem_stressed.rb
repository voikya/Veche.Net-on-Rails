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
            if palatal_stem?
              [stem + "ти", stem_transliterated[0..-2] + "ti"]
            else
              [stem[0..-2] + "ти", stem_transliterated[0..-2] + "ti"]
            end
          end

          def _supine
            if palatal_stem?
              [stem + "т", stem_transliterated[0..-2] + "t"]
            else
              [stem[0..-2] + "т", stem_transliterated[0..-2] + "t"]
            end
          end

          def _present_first_singular
            if palatal_stem?
              [stem + "юн", stem_transliterated + "un"]
            else
              [stem + "ун", stem_transliterated + "un"]
            end
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
            if palatal_stem?
              [stem + "ют", stem_transliterated + "ut"]
            else
              [stem + "ут", stem_transliterated + "ut"]
            end
          end

          def _past_singular_masculine
            if palatal_stem?
              [stem + "ле", stem_transliterated[0..-2] + "le"]
            else
              [stem[0..-2] + "ле", stem_transliterated[0..-2] + "le"]
            end
          end

          def _past_singular_feminine
            if palatal_stem?
              [stem + "ла", stem_transliterated[0..-2] + "la"]
            else
              [stem[0..-2] + "ла", stem_transliterated[0..-2] + "la"]
            end
          end

          def _past_singular_neuter
            if palatal_stem?
              [stem + "ло", stem_transliterated[0..-2] + "lo"]
            else
              [stem[0..-2] + "ло", stem_transliterated[0..-2] + "lo"]
            end
          end

          def _past_dual
            if palatal_stem?
              [stem + "лѣ", stem_transliterated[0..-2] + "lě"]
            else
              [stem[0..-2] + "лѣ", stem_transliterated[0..-2] + "lě"]
            end
          end

          def _past_plural
            if palatal_stem?
              [stem + "ли", stem_transliterated[0..-2] + "li"]
            else
              [stem[0..-2] + "ли", stem_transliterated[0..-2] + "li"]
            end
          end

          def _imperative_second_singular
            if palatal_stem?
              [desinence[0..-2] + "и", desinence_transliterated[0..-3] + "í"]
            else
              [stem + "и", remove_stress(stem_transliterated) + "í"]
            end
          end

          def _imperative_second_dual
            if palatal_stem?
              [desinence[0..-2] + "ита", desinence_transliterated[0..-3] + "íta"]
            else
              [stem + "ѣта", remove_stress(stem_transliterated) + "ě́ta"]
            end
          end

          def _imperative_second_plural
            if palatal_stem?
              [desinence[0..-2] + "ите", desinence_transliterated[0..-3] + "íte"]
            else
              [stem + "ѣте", remove_stress(stem_transliterated) + "ě́te"]
            end
          end

          def _imperative_first_dual
            if palatal_stem?
              [desinence[0..-2] + "иўта", desinence_transliterated[0..-3] + "íwta"]
            else
              [stem + "ѣута", remove_stress(stem_transliterated) + "ě́uta"]
            end
          end

          def _imperative_first_plural
            if palatal_stem?
              [desinence[0..-2] + "имте", desinence_transliterated[0..-3] + "ímte"]
            else
              [stem + "ѣмте", remove_stress(stem_transliterated) + "ě́mte"]
            end
          end

          def _participle_active_imperfective
            unless perfective?
              if palatal_stem?
                [stem + "якье", remove_stress(stem_transliterated) + "ákje"]
              else
                [stem + "акье", remove_stress(stem_transliterated) + "ákje"]
              end
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
              if palatal_stem?
                [desinence[0..-2] + "и", desinence_transliterated[0..-3] + "í"]
              else
                [stem + "и", remove_stress(stem_transliterated) + "í"]
              end
            end
          end

          def _adv_participle_perfective
            if perfective?
              [stem[0..-2] + "ве", stem_transliterated[0..-2] + "ve"]
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
