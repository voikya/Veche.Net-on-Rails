require_relative '../e_conjugation/semivocalic_stem_stressed'

module Morphology
  module Novegradian
    module Verbs
      module Irregular
        module Mijati
          include EConjugation::SemivocalicStemStressed

          def subtype
            "Irregular"
          end

          def _infinitive
            [stem + "яти", stem_transliterated + "jati"]
          end

          def _supine
            [stem + "ят", stem_transliterated + "jat"]
          end

          def _past_singular_masculine
            [stem + "яле", stem_transliterated + "jale"]
          end

          def _past_singular_feminine
            [stem + "яла", stem_transliterated + "jala"]
          end

          def _past_singular_neuter
            [stem + "яло", stem_transliterated + "jalo"]
          end

          def _past_dual
            [stem + "ялѣ", stem_transliterated + "jalě"]
          end

          def _past_plural
            [stem + "яли", stem_transliterated + "jali"]
          end

          def _participle_active_imperfective
            unless perfective?
              [stem + "якье", stem_transliterated + "jakje"]
            end
          end
        end
      end
    end
  end
end
