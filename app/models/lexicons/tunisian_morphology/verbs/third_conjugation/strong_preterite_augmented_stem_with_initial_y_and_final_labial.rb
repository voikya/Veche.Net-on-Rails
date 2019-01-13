require_relative 'strong_preterite_augmented_stem_with_final_labial'
require_relative 'initial_y'

module Morphology
  module Tunisian
    module Verbs
      module ThirdConjugation
        module StrongPreteriteAugmentedStemWithInitialYAndFinalLabial
          include ThirdConjugation::StrongPreteriteAugmentedStemWithFinalLabial
          include ThirdConjugation::InitialY

          def subtype
            "Strong Preterite (Augmented Stem) with Initial Y and Final P/B"
          end
        end
      end
    end
  end
end
