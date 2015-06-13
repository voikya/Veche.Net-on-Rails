require_relative '../e_conjugation/regular_stem_stressed'

module Morphology
  module Novegradian
    module Verbs
      module Irregular
        module Blevati
          include EConjugation::RegularStemStressed

          def subtype
            "Irregular"
          end

          def _infinitive
            [desinence + "ати", desinence_transliterated + "áti"]
          end

          def _supine
            [desinence + "ат", desinence_transliterated + "át"]
          end

          def _past_singular_masculine
            [desinence + "але", desinence_transliterated + "ále"]
          end

          def _past_singular_feminine
            [desinence + "ала", desinence_transliterated + "ála"]
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

          def _adv_participle_perfective
            if perfective?
              [desinence + "аве", desinence_transliterated + "áve"]
            end
          end
        end
      end
    end
  end
end
