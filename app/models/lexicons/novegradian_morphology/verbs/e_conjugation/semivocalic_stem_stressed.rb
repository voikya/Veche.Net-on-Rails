require_relative './regular_stem_stressed'

module Morphology
  module Novegradian
    module Verbs
      module EConjugation
        module SemivocalicStemStressed
          include EConjugation::RegularStemStressed

          def conjugation
            "E Conjugation"
          end

          def subtype
            "Semivocalic Stem with Stem Stress"
          end

          def _infinitive
            [stem + "ти", stem_transliterated + "ti"]
          end

          def _supine
            [stem + "т", stem_transliterated + "t"]
          end

          def _present_first_singular
            [stem + "юн", stem_transliterated + "jun"]
          end

          def _present_first_dual
            [stem + "ева", stem_transliterated + "jeva"]
          end

          def _present_first_plural
            [stem + "ем", stem_transliterated + "jem"]
          end

          def _present_second_singular
            [stem + "еш", stem_transliterated + "jeś"]
          end

          def _present_second_dual
            [stem + "ета", stem_transliterated + "jeta"]
          end

          def _present_second_plural
            [stem + "ете", stem_transliterated + "jete"]
          end

          def _present_third_singular
            [stem + "ет", stem_transliterated + "jet"]
          end

          def _present_third_dual
            _present_second_dual
          end

          def _present_third_plural
            [stem + "ют", stem_transliterated + "jut"]
          end

          def _past_singular_masculine
            [stem + "ле", stem_transliterated + "le"]
          end

          def _past_singular_feminine
            [desinence + "ла", desinence_transliterated + "lá"]
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
            [desinence[0..-2] + "ей", desinence_transliterated[0..-2] + "éi"]
          end

          def _imperative_second_dual
            [desinence[0..-2] + "ейта", desinence_transliterated[0..-2] + "éita"]
          end

          def _imperative_second_plural
            [desinence[0..-2] + "ейте", desinence_transliterated[0..-2] + "éite"]
          end

          def _imperative_first_dual
            [desinence + "ѣута", desinence_transliterated + "ě́uta"]
          end

          def _imperative_first_plural
            [desinence + "ѣмте", desinence_transliterated + "ě́mte"]
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
