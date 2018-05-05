require_relative 'regular'

module Morphology
  module Tunisian
    module Nouns
      module Masculine
        module ThirdConjugationInfinitive
          include Masculine::Regular

          def subtype
            "Conjugation III Infinitive"
          end

          private

          def singular
            strong + "ey"
          end

          def plural
            strong + "nes"
          end
        end
      end
    end
  end
end
