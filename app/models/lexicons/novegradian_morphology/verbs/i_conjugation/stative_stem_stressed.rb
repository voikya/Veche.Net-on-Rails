require_relative './regular_stem_stressed'

module Morphology
  module Novegradian
    module Verbs
      module IConjugation
        module StativeStemStressed
          include IConjugation::RegularStemStressed

          def conjugation
            "I Conjugation"
          end

          def subtype
            "Stative Stem-Stressed"
          end

          def _infinitive
            [stem + "ѣти", stem_transliterated + "ěti"]
          end

          def _supine
            [stem + "ѣт", stem_transliterated + "ět"]
          end

          def _past_singular_masculine
            [stem + "ѣле", stem_transliterated + "ěle"]
          end

          def _past_singular_feminine
            [stem + "ѣла", stem_transliterated + "ěla"]
          end

          def _past_singular_neuter
            [stem + "ѣло", stem_transliterated + "ělo"]
          end

          def _past_dual
            [stem + "ѣлѣ", stem_transliterated + "ělě"]
          end

          def _past_plural
            [stem + "ѣли", stem_transliterated + "ěli"]
          end

          def _adv_participle_perfective
            if perfective?
              [stem + "ѣве", stem_transliterated + "ěve"]
            end
          end
        end
      end
    end
  end
end
