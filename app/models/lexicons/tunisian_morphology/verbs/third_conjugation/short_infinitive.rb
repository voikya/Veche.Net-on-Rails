require_relative 'regular'

module Morphology
  module Tunisian
    module Verbs
      module ThirdConjugation
        module ShortInfinitive
          include ThirdConjugation::Regular

          def subtype
            "Short Infinitive"
          end

          def _infinitive_singular
            strong + "y"
          end
        end
      end
    end
  end
end
