require_relative './regular_ending_stressed'

module Morphology
  module Novegradian
    module Verbs
      module EConjugation
        module SemivocalicStemUnstressed
          include EConjugation::RegularEndingStressed

          def conjugation
            "E Conjugation"
          end

          def subtype
            "Semivocalic Stem with Ending Stress"
          end

          def _infinitive
            [stem + "ти", stem_transliterated + "ti"]
          end

          def _supine
            [stem + "т", stem_transliterated + "t"]
          end

          def _present_first_singular
            if retracted_stress?
              [stem[0..-2] + "юн", stem_transliterated[0..-2] + "iun"]
            else
              [desinence + "юн", desinence_transliterated + "iún"]
            end
          end

          def _present_first_dual
            if retracted_stress?
              [stem[0..-2] + "иева", stem_transliterated[0..-2] + "ieva"]
            else
              [desinence + "иева", desinence_transliterated + "iéva"]
            end
          end

          def _present_first_plural
            if retracted_stress?
              [stem[0..-2] + "ием", stem_transliterated[0..-2] + "iem"]
            else
              [desinence + "ием", desinence_transliterated + "iém"]
            end
          end

          def _present_second_singular
            if retracted_stress?
              [stem[0..-2] + "иеш", stem_transliterated[0..-2] + "ieś"]
            else
              [desinence + "иеш", desinence_transliterated + "iéś"]
            end
          end

          def _present_second_dual
            if retracted_stress?
              [stem[0..-2] + "иета", stem_transliterated[0..-2] + "ieta"]
            else
              [desinence + "иета", desinence_transliterated + "iéta"]
            end
          end

          def _present_second_plural
            if retracted_stress?
              [stem[0..-2] + "иете", stem_transliterated[0..-2] + "iete"]
            else
              [desinence + "иете", desinence_transliterated + "iéte"]
            end
          end

          def _present_third_singular
            if retracted_stress?
              [stem[0..-2] + "иет", stem_transliterated[0..-2] + "iet"]
            else
              [desinence + "иет", desinence_transliterated + "iét"]
            end
          end

          def _present_third_dual
            _present_second_dual
          end

          def _present_third_plural
            if retracted_stress?
              [stem[0..-2] + "ют", stem_transliterated[0..-2] + "iut"]
            else
              [desinence + "ют", desinence_transliterated + "iút"]
            end
          end

          def _past_singular_masculine
            [stem + "ле", stem_transliterated + "le"]
          end

          def _past_singular_feminine
            [stem + "ла", remove_stress(stem_transliterated) + "lá"]
          end

          def _past_singular_neuter
            [stem + "ло", stem_transliterated + "lo"]
          end

          def _past_dual
            [stem + "лѣ", stem_transliterated + "lě"]
          end

          def _past_plural
            [stem + "ли", stem_transliterated + "li"]
          end

          def _imperative_second_singular
            [desinence + "ей", desinence_transliterated + "éi"]
          end

          def _imperative_second_dual
            [desinence + "ейта", desinence_transliterated + "éita"]
          end

          def _imperative_second_plural
            [desinence + "ейте", desinence_transliterated + "éite"]
          end

          def _imperative_first_dual
            [desinence + "иѣута", desinence_transliterated + "iě́uta"]
          end

          def _imperative_first_plural
            [desinence + "иѣмте", desinence_transliterated + "iě́mte"]
          end

          def _participle_active_imperfective
            unless perfective?
              [stem + "кье", stem_transliterated + "kje"]
            end
          end

          def _participle_passive_imperfective
            unless perfective?
              [stem + "ме", stem_transliterated + "me"]
            end
          end

          def _participle_passive_perfective
            if perfective?
              [stem + "те", stem_transliterated + "te"]
            end
          end

          def _adv_participle_imperfective
            unless perfective?
              [stem, stem_transliterated]
            end
          end

          def _adv_participle_perfective
            if perfective?
              [stem + "ве", stem_transliterated + "ve"]
            end
          end
        end
      end
    end
  end
end
