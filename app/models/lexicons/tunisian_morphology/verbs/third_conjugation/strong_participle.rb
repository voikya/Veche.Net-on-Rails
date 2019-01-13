require_relative 'regular'

module Morphology
  module Tunisian
    module Verbs
      module ThirdConjugation
        module StrongParticiple
          include ThirdConjugation::Regular

          def subtype
            "Strong Past Participle"
          end

          def _past_participle_masculine
            past_participle_stem + "t"
          end

          def _past_participle_feminine
            past_participle_stem + "te"
          end

          def _past_participle_plural
            past_participle_stem + "ts"
          end

          private

          def past_participle_stem
            strong.reverse.sub("ie", "è").reverse
          end
        end
      end
    end
  end
end
