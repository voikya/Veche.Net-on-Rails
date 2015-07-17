require_relative '../i_conjugation/regular_ending_stressed'

module Morphology
  module Novegradian
    module Verbs
      module Irregular
        module Spati
          include IConjugation::RegularEndingStressed

          def subtype
            "Irregular"
          end

          def _infinitive
            [desinence + "ати", desinence_transliterated + "áti"]
          end

          def _supine
            [desinence + "ат", desinence_transliterated + "át"]
          end

          def _present_first_singular
            [desinence[0..-2] + "о" + desinence[-1] + "лун",
             desinence_transliterated[0..-2] + "o" + desinence_transliterated[-1] + "lún"]
          end

          def _past_singular_masculine
            [desinence + "але", desinence_transliterated + "ále"]
          end

          def _past_singular_feminine
            [desinence + "ала", desinence_transliterated + "alá"]
          end

          def _past_singular_neuter
            [desinence + "ало", desinence_transliterated + "álo"]
          end

          def _past_dual
            [desinence + "алѣ", desinence_transliterated + "álě"]
          end

          def _past_plural
            [desinence + "али", desinence_transliterated + "áli"]
          end
        end
      end
    end
  end
end
