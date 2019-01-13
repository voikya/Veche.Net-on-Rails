require_relative 'strong_preterite_augmented_stem'
require_relative 'final_velar'

module Morphology
  module Tunisian
    module Verbs
      module ThirdConjugation
        module StrongPreteriteAugmentedStemWithFinalVelar
          include ThirdConjugation::StrongPreteriteAugmentedStem
          include ThirdConjugation::FinalVelar

          def subtype
            "Strong Preterite (Augmented Stem) with Final C/G"
          end

          def _preterite_first_singular
            [
              strong_preterite_stem,
              weak + weak[-1] + "ís"
            ].join(", ")
          end

          def _preterite_second_singular
            [
              strong_preterite_stem + "ís",
              weak + weak[-1] + "ís"
            ].join(", ")
          end

          def _preterite_third_singular
            [
              strong_preterite_stem,
              weak + weak[-1] + "ís"
            ].join(", ")
          end

          def _preterite_first_plural
            [
              weak_preterite_stem + "íms",
              weak + weak[-1] + "írims"
            ].join(", ")
          end

          def _preterite_second_plural
            [
              weak_preterite_stem + "íçs",
              weak + weak[-1] + "írisç"
            ].join(", ")
          end

          def _preterite_third_plural
            [
              weak_preterite_stem + "íré",
              weak + weak[-1] + "íré"
            ].join(", ")
          end

          private

          def past_participle_stem
            strong.sub(/g$/, 'c')
          end
        end
      end
    end
  end
end
