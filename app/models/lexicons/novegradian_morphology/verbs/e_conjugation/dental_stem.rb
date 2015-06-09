require_relative './regular_ending_stressed'

module Morphology
  module Novegradian
    module Verbs
      module EConjugation
        module DentalStem
          include EConjugation::RegularEndingStressed

          def conjugation
            "E Conjugation"
          end

          def subtype
            "Dental Stem"
          end

          def _infinitive
            if stem[-1] == "з"
              [stem + "ти", stem_transliterated + "ti"]
            else
              [stem[0..-2] + "сти", stem_transliterated[0..-2] + "sti"]
            end
          end

          def _supine
            if stem[-1] == "з"
              [stem, stem_transliterated]
            else
              [stem[0..-2] + "с", stem_transliterated[0..-2] + "s"]
            end
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
            [past_tense_base + "ле", past_tense_base_transliterated + "le"]
          end

          def _past_singular_feminine
            [past_tense_base + "ла", remove_stress(past_tense_base_transliterated) + "lá"]
          end

          def _past_singular_neuter
            [past_tense_base + "ло", past_tense_base_transliterated + "lo"]
          end

          def _past_dual
            [past_tense_base + "лѣ", past_tense_base_transliterated + "lě"]
          end

          def _past_plural
            [past_tense_base + "ли", past_tense_base_transliterated + "li"]
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
              [stem + "оме", stem_transliterated + "ome"]
            end
          end

          def _participle_passive_perfective
            if perfective?
              [stem + "ене", stem_transliterated + "ene"]
            end
          end

          def _adv_participle_imperfective
            unless perfective?
              [desinence + "и", desinence_transliterated + "í"]
            end
          end

          def _adv_participle_perfective
            if perfective?
              [stem + "ове", stem_transliterated + "ove"]
            end
          end

          private

          def past_tense_base
            if %w(с з).include? stem[-1]
              stem
            else
              stem[0..-2]
            end
          end

          def past_tense_base_transliterated
            if %w(с з).include? stem[-1]
              stem_transliterated
            else
              stem_transliterated[0..-2]
            end
          end
        end
      end
    end
  end
end
