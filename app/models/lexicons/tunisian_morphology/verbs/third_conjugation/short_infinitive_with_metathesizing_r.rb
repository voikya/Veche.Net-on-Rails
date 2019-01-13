require_relative 'short_infinitive'

module Morphology
  module Tunisian
    module Verbs
      module ThirdConjugation
        module ShortInfinitiveWithMetathesizingR
          include ThirdConjugation::ShortInfinitive

          def subtype
            "Short Infinitive with Metathesizing R"
          end
        end
      end
    end
  end
end
