require_relative '../e_conjugation/fleeting_stem_stressed'

module Morphology
  module Novegradian
    module Verbs
      module Irregular
        module Seiati
          include EConjugation::FleetingStemStressed

          def subtype
            "Irregular"
          end

          def _infinitive
            [stem + "яти", stem_transliterated + "ati"]
          end

          def _supine
            [stem + "ят", stem_transliterated + "at"]
          end

          def _past_singular_masculine
            [stem + "яле", stem_transliterated + "ale"]
          end

          def _past_singular_feminine
            [stem + "яла", stem_transliterated + "ala"]
          end

          def _past_singular_neuter
            [stem + "яло", stem_transliterated + "alo"]
          end

          def _past_dual
            [stem + "ялѣ", stem_transliterated + "alě"]
          end

          def _past_plural
            [stem + "яли", stem_transliterated + "ali"]
          end

          def _imperative_second_singular
            [desinence + "и", desinence_transliterated[0..-2] + "jí"]
          end

          def _imperative_second_dual
            [desinence + "ита", desinence_transliterated[0..-2] + "jíta"]
          end

          def _imperative_second_plural
            [desinence + "ите", desinence_transliterated[0..-2] + "jíte"]
          end

          def _imperative_first_dual
            [desinence + "иўта", desinence_transliterated[0..-2] + "jíwta"]
          end

          def _imperative_first_plural
            [desinence + "имте", desinence_transliterated[0..-2] + "jímte"]
          end
        end
      end
    end
  end
end
