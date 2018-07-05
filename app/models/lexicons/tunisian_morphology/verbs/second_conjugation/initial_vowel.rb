require_relative 'regular'

module Morphology
  module Tunisian
    module Verbs
      module SecondConjugation
        module InitialVowel
          include SecondConjugation::Regular

          def subtype
            "Initial Vowel"
          end

          def _future_complex_first_singular
            "viuc l-" + _infinitive_singular
          end

          def _future_complex_second_singular
            "vucs l-" + _infinitive_singular
          end

          def _future_complex_third_singular
            "vuc l-" + _infinitive_singular
          end

          def _future_complex_first_plural
            "vucms l-" + _infinitive_plural
          end

          def _future_complex_second_plural
            "vucts l-" + _infinitive_plural
          end

          def _future_complex_third_plural
            "vuccé l-" + _infinitive_plural
          end
        end
      end
    end
  end
end
