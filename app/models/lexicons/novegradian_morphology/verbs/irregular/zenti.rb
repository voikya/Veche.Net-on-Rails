require_relative '../e_conjugation/fleeting_stem_unstressed'

module Morphology
  module Novegradian
    module Verbs
      module Irregular
        module Zenti
          include EConjugation::FleetingStemUnstressed

          def subtype
            "Irregular"
          end

          def _infinitive
            [stem + "ти", stem_transliterated + "ti"]
          end

          def _present_first_singular
            ["вожмун", "voźmún"]
          end

          def _present_first_dual
            ["вожмева", "voźméva"]
          end

          def _present_first_plural
            ["вожмем", "voźmém"]
          end

          def _present_second_singular
            ["вожмеш", "voźméś"]
          end

          def _present_second_dual
            ["вожмета", "voźméta"]
          end

          def _present_second_plural
            ["вожмете", "voźméte"]
          end

          def _present_third_singular
            ["вожмет", "voźmét"]
          end

          def _present_third_plural
            ["вожмут", "voźmút"]
          end

          def _imperative_second_singular
            ["вожми", "voźmí"]
          end

          def _imperative_second_dual
            ["вожмѣта", "voźmě́ta"]
          end

          def _imperative_second_plural
            ["вожмѣте", "voźmě́te"]
          end

          def _imperative_first_dual
            ["вожмѣута", "voźmě́uta"]
          end

          def _imperative_first_plural
            ["вожмѣмте", "voźmě́mte"]
          end

          def _participle_passive_perfective
            ["жете", "źéte"]
          end
        end
      end
    end
  end
end
