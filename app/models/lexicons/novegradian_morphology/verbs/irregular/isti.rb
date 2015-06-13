require_relative '../e_conjugation/dental_stem'

module Morphology
  module Novegradian
    module Verbs
      module Irregular
        module Isti
          include EConjugation::DentalStem

          def subtype
            "Irregular"
          end

          def _supine
            if stem[-3..-1] == "ѣйд"
              [stem[0..-4] + "ис", stem_transliterated[0..-4] + "is"]
            else
              [stem[0..-3] + "ис", stem_transliterated[0..-3] + "jis"]
            end
          end

          def _past_singular_masculine
            [desinence[0..-3] + "шле", desinence_transliterated[0..-3] + "ślé"]
          end

          def _past_singular_feminine
            [desinence[0..-3] + "шла", desinence_transliterated[0..-3] + "ślá"]
          end

          def _past_singular_neuter
            [desinence[0..-3] + "шло", desinence_transliterated[0..-3] + "śló"]
          end

          def _past_dual
            [desinence[0..-3] + "шлѣ", desinence_transliterated[0..-3] + "ślě́"]
          end

          def _past_plural
            [desinence[0..-3] + "шли", desinence_transliterated[0..-3] + "ślí"]
          end
        end
      end
    end
  end
end
