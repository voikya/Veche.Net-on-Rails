require_relative 'strong_preterite_augmented_stem'

module Morphology
  module Tunisian
    module Verbs
      module ThirdConjugation
        module StrongPreteriteAugmentedStemWithFinalLabial
          include ThirdConjugation::StrongPreteriteAugmentedStem

          def subtype
            "Strong Preterite (Augmented Stem) with Final P/B"
          end

          private

          def strong_preterite_stem
            strong[0...-1] + "ps"
          end

          def weak_preterite_stem
            weak[0...-1] + "ps"
          end

          def past_participle_stem
            super.sub(/[pb]$/, 'f')
          end
        end
      end
    end
  end
end
