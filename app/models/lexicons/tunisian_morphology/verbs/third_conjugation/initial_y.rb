require_relative 'regular'

module Morphology
  module Tunisian
    module Verbs
      module ThirdConjugation
        module InitialY
          include ThirdConjugation::Regular

          def subtype
            "Initial Y"
          end

          def _future_complex_first_singular
            "viuc l-u" + _infinitive_singular[1..-1]
          end

          def _future_complex_second_singular
            "vucs l-u" + _infinitive_singular[1..-1]
          end

          def _future_complex_third_singular
            "vuc l-u" + _infinitive_singular[1..-1]
          end

          def _future_complex_first_plural
            "vucms l-u" + _infinitive_plural[1..-1]
          end

          def _future_complex_second_plural
            "vucts l-u" + _infinitive_plural[1..-1]
          end

          def _future_complex_third_plural
            "vuccé l-u" + _infinitive_plural[1..-1]
          end
        end
      end
    end
  end
end
