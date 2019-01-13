require_relative '../third_conjugation/regular'

module Morphology
  module Tunisian
    module Verbs
      module Irregular
        module Vivey
          include ThirdConjugation::Regular

          def conjugation
            "Irregular"
          end

          def subtype
            "vivey"
          end

          def _infinitive_plural
            strong[0..-2] + "ones"
          end

          def _present_second_singular
            strong[0..-2] + "os"
          end

          def _present_first_plural
            strong[0..-2] + "úms"
          end

          def _present_second_plural
            strong[0..-2] + "úts"
          end

          def _imperfect_first_singular
            ablaut[0..-3] + "ive"
          end

          def _imperfect_second_singular
            ablaut[0..-3] + "ivs"
          end

          def _imperfect_third_singular
            ablaut[0..-3] + "ive"
          end

          def _imperfect_first_plural
            ablaut[0..-3] + "ivims"
          end

          def _imperfect_second_plural
            ablaut[0..-3] + "ivits"
          end

          def _imperfect_third_plural
            ablaut[0..-3] + "ivé"
          end

          def _subjunctive_second_singular
            ablaut[0..-2] + "os"
          end

          def _future_complex_first_singular
            if strong[0] == "y"
              "viuc l-u" + _infinitive_singular[1..-1]
            else
              "viuc il " + _infinitive_singular
            end
          end

          def _future_complex_second_singular
            if strong[0] == "y"
              "vucs l-u" + _infinitive_singular[1..-1]
            else
              "vucs il " + _infinitive_singular
            end
          end

          def _future_complex_third_singular
            if strong[0] == "y"
              "vuc l-u" + _infinitive_singular[1..-1]
            else
              "vuc il " + _infinitive_singular
            end
          end

          def _future_complex_first_plural
            if strong[0] == "y"
              "vucms l-u" + _infinitive_plural[1..-1]
            else
              "vucms ls " + _infinitive_plural
            end
          end

          def _future_complex_second_plural
            if strong[0] == "y"
              "vucts l-u" + _infinitive_plural[1..-1]
            else
              "vucts ls " + _infinitive_plural
            end
          end

          def _future_complex_third_plural
            if strong[0] == "y"
              "vuccé l-u" + _infinitive_plural[1..-1]
            else
              "vuccé ls " + _infinitive_plural
            end
          end
        end
      end
    end
  end
end
