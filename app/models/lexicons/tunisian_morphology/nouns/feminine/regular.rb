module Morphology
  module Tunisian
    module Nouns
      module Feminine
        module Regular
          def declension
            "Feminine Noun"
          end

          def subtype
            "Regular"
          end

          def _indefinite_singular_absolute
            singular
          end

          def _indefinite_plural_absolute
            plural
          end

          def _indefinite_singular_construct
            "une " + singular
          end

          def _indefinite_plural_construct
            "uis " + plural
          end

          def _definite_singular_absolute
            "la " + singular
          end

          def _definite_plural_absolute
            "ls " + plural
          end

          def _definite_singular_construct
            singular
          end

          def _definite_plural_construct
            plural
          end

          private

          def singular
            strong + "e"
          end

          def plural
            strong + "s"
          end
        end
      end
    end
  end
end
