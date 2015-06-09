require_relative './regular_ending_stressed'

module Morphology
  module Novegradian
    module Verbs
      module EConjugation
        module VStem
          include EConjugation::RegularEndingStressed

          def conjugation
            "E Conjugation"
          end

          def subtype
            "V Stem"
          end

          def _infinitive
            [stem + "ти", stem_transliterated + "ti"]
          end

          def _supine
            [stem + "т", stem_transliterated + "t"]
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
