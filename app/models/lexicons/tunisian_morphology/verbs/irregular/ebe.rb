require_relative '../second_conjugation/initial_vowel'

module Morphology
  module Tunisian
    module Verbs
      module Irregular
        module Ebe
          include SecondConjugation::InitialVowel

          def conjugation
            "Irregular"
          end

          def subtype
            "ebé"
          end

          def _infinitive_singular
            "ebé"
          end

          def _infinitive_plural
            "evnes"
          end

          def _present_participle_masculine
            "ibèn"
          end

          def _present_participle_feminine
            "ibène"
          end

          def _present_participle_plural
            "ibeis"
          end

          def _past_participle_masculine
            "avut"
          end

          def _past_participle_feminine
            "avute"
          end

          def _past_participle_plural
            "avuts"
          end

          def _present_first_singular
            "ai"
          end

          def _present_second_singular
            "ais"
          end

          def _present_third_singular
            "ae"
          end

          def _present_first_plural
            "ems"
          end

          def _present_second_plural
            "ets"
          end

          def _present_third_plural
            "aié"
          end

          def _imperfect_first_singular
            "ebive"
          end

          def _imperfect_second_singular
            "ebivs"
          end

          def _imperfect_third_singular
            "ebive"
          end

          def _imperfect_first_plural
            "ebivams"
          end

          def _imperfect_second_plural
            "ebivats"
          end

          def _imperfect_third_plural
            "ebivé"
          end

          def _preterite_first_singular
            "avs"
          end

          def _preterite_second_singular
            "avís"
          end

          def _preterite_third_singular
            "avs"
          end

          def _preterite_first_plural
            "avíms"
          end

          def _preterite_second_plural
            "avíts"
          end

          def _preterite_third_plural
            "avíré"
          end

          def _future_simple_first_singular
            "ebray"
          end

          def _future_simple_second_singular
            "ebrais"
          end

          def _future_simple_third_singular
            "ebray"
          end

          def _future_simple_first_plural
            "ebrems"
          end

          def _future_simple_second_plural
            "ebrets"
          end

          def _future_simple_third_plural
            "ebré"
          end

          def _subjunctive_first_singular
            "ai"
          end

          def _subjunctive_second_singular
            "ais"
          end

          def _subjunctive_third_singular
            "ae"
          end

          def _subjunctive_first_plural
            "yams"
          end

          def _subjunctive_second_plural
            "yats"
          end

          def _subjunctive_third_plural
            "aié"
          end

          def _imperative_second_singular
            "ab"
          end

          def _imperative_second_plural
            "abit"
          end
        end
      end
    end
  end
end
