require_relative 'strong_preterite_augmented_stem_with_final_velar'
require_relative 'initial_vowel'

module Morphology
  module Tunisian
    module Verbs
      module ThirdConjugation
        module StrongPreteriteAugmentedStemWithInitialVowelAndFinalVelar
          include ThirdConjugation::StrongPreteriteAugmentedStemWithFinalVelar
          include ThirdConjugation::InitialVowel

          def subtype
            "Strong Preterite (Augmented Stem) with Initial Vowel and Final C/G"
          end
        end
      end
    end
  end
end
