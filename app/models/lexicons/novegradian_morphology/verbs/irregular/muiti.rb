require_relative '../e_conjugation/semivocalic_stem_stressed'

module Morphology
  module Novegradian
    module Verbs
      module Irregular
        module Muiti
          include EConjugation::SemivocalicStemStressed

          def subtype
            "Irregular"
          end

          def _infinitive
            [inf_stem + "ти", inf_stem_transliterated + "ti"]
          end

          def _supine
            [inf_stem + "т", inf_stem_transliterated + "t"]
          end

          def _past_singular_masculine
            [inf_stem + "ле", inf_stem_transliterated + "le"]
          end

          def _past_singular_feminine
            [inf_stem + "ла", remove_stress(inf_stem_transliterated) + "lá"]
          end

          def _past_singular_neuter
            [inf_stem + "ло", inf_stem_transliterated + "lo"]
          end

          def _past_dual
            [inf_stem + "лѣ", inf_stem_transliterated + "lě"]
          end

          def _past_plural
            [inf_stem + "ли", inf_stem_transliterated + "li"]
          end

          def _participle_active_imperfective
            unless perfective?
              [inf_stem + "кье", inf_stem_transliterated + "kje"]
            end
          end

          def _participle_passive_imperfective
            unless perfective?
              [inf_stem + "ме", inf_stem_transliterated + "me"]
            end
          end

          def _participle_passive_perfective
            if perfective?
              [inf_stem + "те", inf_stem_transliterated + "te"]
            end
          end

          def _adv_participle_perfective
            if perfective?
              [inf_stem + "ве", inf_stem_transliterated + "ve"]
            end
          end

          private

          def inf_stem
            stem.sub('ми', 'муи')
          end

          def inf_stem_transliterated
            stem_transliterated.sub('mí', 'muí')
          end
        end
      end
    end
  end
end
