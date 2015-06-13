require_relative '../e_conjugation/regular_stem_stressed'

module Morphology
  module Novegradian
    module Verbs
      module Irregular
        module Iehati
          include EConjugation::RegularStemStressed

          def subtype
            "Irregular"
          end

          def _infinitive
            [inf_stem + "ати", inf_stem_transliterated + "ati"]
          end

          def _supine
            [inf_stem + "ат", inf_stem_transliterated + "at"]
          end

          def _past_singular_masculine
            [inf_stem + "але", inf_stem_transliterated + "ale"]
          end

          def _past_singular_feminine
            [inf_stem + "ала", inf_stem_transliterated + "ala"]
          end

          def _past_singular_neuter
            [inf_stem + "ало", inf_stem_transliterated + "alo"]
          end

          def _past_dual
            [inf_stem + "алѣ", inf_stem_transliterated + "alě"]
          end

          def _past_plural
            [inf_stem + "али", inf_stem_transliterated + "ali"]
          end

          def _adv_participle_perfective
            if perfective?
              [inf_stem + "аве", inf_stem_transliterated + "ave"]
            end
          end

          private

          def inf_stem
            stem[0..-2] + "х"
          end

          def inf_stem_transliterated
            stem_transliterated[0..-2] + "h"
          end

          def no_mutation?
            true
          end
        end
      end
    end
  end
end
