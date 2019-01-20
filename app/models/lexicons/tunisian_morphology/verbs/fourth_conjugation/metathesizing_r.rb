require_relative 'regular'

module Morphology
  module Tunisian
    module Verbs
      module FourthConjugation
        module MetathesizingR
          include FourthConjugation::Regular

          def subtype
            "Metathesizing R"
          end

          def _infinitive_singular
            weak + "í"
          end

          def _past_participle_masculine
            weak + "it"
          end

          def _past_participle_feminine
            weak + "ite"
          end

          def _past_participle_plural
            weak + "its"
          end
        end
      end
    end
  end
end
