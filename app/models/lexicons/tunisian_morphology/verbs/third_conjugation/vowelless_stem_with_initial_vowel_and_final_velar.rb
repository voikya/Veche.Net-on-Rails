require_relative 'vowelless_stem'
require_relative 'initial_vowel_and_final_velar'

module Morphology
  module Tunisian
    module Verbs
      module ThirdConjugation
        module VowellessStemWithInitialVowelAndFinalVelar
          include ThirdConjugation::VowellessStem
          include ThirdConjugation::InitialVowelAndFinalVelar

          def subtype
            "Vowelless Stem with Initial Vowel and Final C/G"
          end

          def _infinitive_singular
            weak + (vowel?(weak[-2]) ? weak[-1] : "h") + "ey"
          end
        end
      end
    end
  end
end
