require_relative 'strong_preterite'

module Morphology
  module Tunisian
    module Verbs
      module ThirdConjugation
        module StrongPreteriteWithPalatalizingN
          include ThirdConjugation::StrongPreterite

          def subtype
            "Strong Preterite with Palatalizing N"
          end

          private

          def strong_preterite_stem
            strong[0..-3] + "is"
          end

          def weak_preterite_stem
            weak[0..-4] + "ys"
          end

          def past_participle_stem
            strong_preterite_stem
          end
        end
      end
    end
  end
end
