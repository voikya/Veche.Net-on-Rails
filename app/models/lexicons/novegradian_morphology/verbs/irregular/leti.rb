require_relative '../e_conjugation/fleeting_stem_stressed'

module Morphology
  module Novegradian
    module Verbs
      module Irregular
        module Leti
          include EConjugation::FleetingStemStressed

          def subtype
            "Irregular"
          end

          def _past_singular_feminine
            [desinence + "ла", desinence_transliterated[0..-2] + "lá"]
          end

          def _imperative_second_singular
            [stem, stem_transliterated[0..-2]]
          end

          def _imperative_second_dual
            [stem + "та", stem_transliterated[0..-2] + "ta"]
          end

          def _imperative_second_plural
            [stem + "те", stem_transliterated[0..-2] + "te"]
          end

          def _participle_active_imperfective
            unless perfective?
              [desinence[0..-2] + "ивакье", desinence_transliterated[0..-3] + "ivákje"]
            end
          end
        end
      end
    end
  end
end
