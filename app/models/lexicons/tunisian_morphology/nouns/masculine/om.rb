require_relative 'initial_vowel'

module Morphology
  module Tunisian
    module Nouns
      module Masculine
        module Om
          include Masculine::InitialVowel

          def subtype
            "Óm Pattern"
          end

          private

          def plural
            strong + "nes"
          end
        end
      end
    end
  end
end
