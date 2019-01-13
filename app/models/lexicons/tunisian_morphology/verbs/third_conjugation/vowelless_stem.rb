require_relative 'regular'

module Morphology
  module Tunisian
    module Verbs
      module ThirdConjugation
        module VowellessStem
          include ThirdConjugation::Regular

          def subtype
            "Vowelless Stem"
          end

          def _infinitive_singular
            weak + "ey"
          end

          def _past_participle_masculine
            weak + "ut"
          end

          def _past_participle_feminine
            weak + "ute"
          end

          def _past_participle_plural
            weak + "uts"
          end
        end
      end
    end
  end
end
