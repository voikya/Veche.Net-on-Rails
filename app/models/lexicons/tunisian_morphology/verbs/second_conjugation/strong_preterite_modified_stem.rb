require_relative 'regular'

module Morphology
  module Tunisian
    module Verbs
      module SecondConjugation
        module StrongPreteriteModifiedStem
          include SecondConjugation::Regular

          def subtype
            "Strong Preterite (Modified Stem)"
          end

          def _past_participle_masculine
            strong_preterite_stem + "t"
          end

          def _past_participle_feminine
            strong_preterite_stem + "te"
          end

          def _past_participle_plural
            strong_preterite_stem[0...-1] + "çs"
          end

          def _preterite_first_singular
            [
              strong_preterite_stem + "s",
              weak + "ís"
            ].join(", ")
          end

          def _preterite_second_singular
            [
              weak_preterite_stem + "ís",
              weak + "ís"
            ].join(", ")
          end

          def _preterite_third_singular
            [
              strong_preterite_stem + "s",
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
            strong[0...-1] + "s"
          end

          def weak_preterite_stem
            weak[0...-1] + "s"
          end
        end
      end
    end
  end
end
