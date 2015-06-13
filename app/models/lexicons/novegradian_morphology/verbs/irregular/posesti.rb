require_relative '../e_conjugation/dental_stem'

module Morphology
  module Novegradian
    module Verbs
      module Irregular
        module Posesti
          include EConjugation::DentalStem

          def subtype
            "Irregular"
          end

          def _infinitive
            [desinence[0..-3] + "ѣсти", desinence_transliterated[0..-3] + "ě́sti"]
          end

          def _supine
            [desinence[0..-3] + "ѣс", desinence_transliterated[0..-3] + "ě́s"]
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

          def _present_third_plural
            [stem + "ут", stem_transliterated + "ut"]
          end

          def _past_singular_masculine
            [desinence[0..-3] + "але", desinence_transliterated[0..-3] + "ále"]
          end

          def _past_singular_feminine
            [desinence[0..-3] + "ала", desinence_transliterated[0..-3] + "alá"]
          end

          def _past_singular_neuter
            [desinence[0..-3] + "ало", desinence_transliterated[0..-3] + "álo"]
          end

          def _past_dual
            [desinence[0..-3] + "алѣ", desinence_transliterated[0..-3] + "álě"]
          end

          def _past_plural
            [desinence[0..-3] + "али", desinence_transliterated[0..-3] + "áli"]
          end

          def _adv_participle_perfective
            if perfective?
              [desinence[0..-3] + "ѣдове", desinence_transliterated[0..-3] + "ě́dove"]
            end
          end
        end
      end
    end
  end
end
