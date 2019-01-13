require_relative 'regular'

module Morphology
  module Tunisian
    module Verbs
      module ThirdConjugation
        module StrongPreteriteAugmentedStem
          include ThirdConjugation::Regular

          def subtype
            "Strong Preterite (Augmented Stem)"
          end

          def _past_participle_masculine
            past_participle_stem + "t"
          end

          def _past_participle_feminine
            past_participle_stem + "te"
          end

          def _past_participle_plural
            past_participle_stem + "ts"
          end

          def _preterite_first_singular
            [
              strong_preterite_stem,
              weak + "ís"
            ].join(", ")
          end

          def _preterite_second_singular
            [
              strong_preterite_stem + "ís",
              weak + "ís"
            ].join(", ")
          end

          def _preterite_third_singular
            [
              strong_preterite_stem,
              weak + "ís"
            ].join(", ")
          end

          def _preterite_first_plural
            [
              weak_preterite_stem + "íms",
              weak + "írims"
            ].join(", ")
          end

          def _preterite_second_plural
            [
              weak_preterite_stem + "íçs",
              weak + "írisç"
            ].join(", ")
          end

          def _preterite_third_plural
            [
              weak_preterite_stem + "íré",
              weak + "íré"
            ].join(", ")
          end

          private

          def strong_preterite_stem
            strong + "s"
          end

          def weak_preterite_stem
            weak + "s"
          end

          def past_participle_stem
            # Vowel centralization

            if strong[-2] == "i" || strong[-2] == "a"
              if strong[-3] == "c"
                strong[0...-2] + "hè" + strong[-1]
              else
                strong[0...-2] + "è" + strong[-1]
              end
            else
              strong
            end
          end
        end
      end
    end
  end
end
