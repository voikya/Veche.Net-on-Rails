require_relative './regular_stem_stressed'

module Morphology
  module Novegradian
    module Verbs
      module EConjugation
        module VelarStem
          include EConjugation::RegularStemStressed

          def conjugation
            "E Conjugation"
          end

          def subtype
            "Velar Stem"
          end

          def _infinitive
            [stem[0..-2] + "йкьи", stem_transliterated[0..-2] + "ikji"]
          end

          def _supine
            [stem, stem_transliterated]
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

          def _participle_active_imperfective
            unless perfective?
              [stem + "акье", remove_stress(stem_transliterated_mutated) + "ákje"]
            end
          end

          def _participle_passive_imperfective
            unless perfective?
              [stem + "оме", stem_transliterated + "ome"]
            end
          end

          def _participle_passive_perfective
            if perfective?
              [stem + "ене", stem_transliterated + "éne"]
            end
          end

          def _adv_participle_perfective
            if perfective?
              [stem + "ове", stem_transliterated + "ove"]
            end
          end
        end
      end
    end
  end
end
