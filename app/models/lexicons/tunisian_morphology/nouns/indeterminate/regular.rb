module Morphology
  module Tunisian
    module Nouns
      module Indeterminate
        module Regular
          def declension
            "Indeterminate-Gender Noun"
          end

          def subtype
            "Regular"
          end

          def _indefinite_plural_absolute
            plural
          end

          def _indefinite_plural_construct
            "uis " + plural
          end

          def _definite_plural_absolute
            "ls " + plural
          end

          def _definite_plural_construct
            plural
          end

          private

          def plural
            strong + "s"
          end
        end
      end
    end
  end
end
