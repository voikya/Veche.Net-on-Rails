require_relative 'regular'

module Morphology
  module Tunisian
    module Verbs
      module ThirdConjugation
        module FinalVelar
          include ThirdConjugation::Regular

          def subtype
            "Final C/G"
          end

          def _infinitive_singular
            strong + (vowel?(strong[-2]) ? strong[-1] : "h") + "ey"
          end

          def _present_participle_masculine
            weak + (vowel?(weak[-2]) ? weak[-1] : "h") + "èn"
          end

          def _present_participle_feminine
            weak + (vowel?(weak[-2]) ? weak[-1] : "h") + "ène"
          end

          def _present_participle_plural
            weak + (vowel?(weak[-2]) ? weak[-1] : "h") + "eis"
          end

          def _imperfect_first_singular
            ablaut + (vowel?(ablaut[-2]) ? ablaut[-1] : "h") + "ive"
          end

          def _imperfect_second_singular
            ablaut + (vowel?(ablaut[-2]) ? ablaut[-1] : "h") + "ivs"
          end

          def _imperfect_third_singular
            ablaut + (vowel?(ablaut[-2]) ? ablaut[-1] : "h") + "ive"
          end

          def _imperfect_first_plural
            ablaut + (vowel?(ablaut[-2]) ? ablaut[-1] : "h") + "ivims"
          end

          def _imperfect_second_plural
            ablaut + (vowel?(ablaut[-2]) ? ablaut[-1] : "h") + "ivits"
          end

          def _imperfect_third_plural
            ablaut + (vowel?(ablaut[-2]) ? ablaut[-1] : "h") + "ivé"
          end

          def _preterite_first_singular
            weak + (vowel?(weak[-2]) ? weak[-1] : "h") + "ís"
          end

          def _preterite_second_singular
            weak + (vowel?(weak[-2]) ? weak[-1] : "h") + "ís"
          end

          def _preterite_third_singular
            weak + (vowel?(weak[-2]) ? weak[-1] : "h") + "ís"
          end

          def _preterite_first_plural
            weak + (vowel?(weak[-2]) ? weak[-1] : "h") + "írims"
          end

          def _preterite_second_plural
            weak + (vowel?(weak[-2]) ? weak[-1] : "h") + "írisç"
          end

          def _preterite_third_plural
            weak + (vowel?(weak[-2]) ? weak[-1] : "h") + "íré"
          end

          def _subjunctive_third_plural
            ablaut + (vowel?(ablaut[-2]) ? ablaut[-1] : "h") + "é"
          end

          def _imperative_second_plural
            strong + (vowel?(strong[-2]) ? strong[-1] : "h") + "it"
          end
        end
      end
    end
  end
end
