require_relative 'regular'

module Morphology
  module Tunisian
    module Verbs
      module FirstConjugation
        module AlternatingInitialVowelAndInitialY
          include FirstConjugation::Regular

          def subtype
            "Alternating Initial Vowel and Initial Y"
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
