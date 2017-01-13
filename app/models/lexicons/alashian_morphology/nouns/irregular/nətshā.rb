require_relative '../feminine/regular'

module Morphology
  module Alashian
    module Nouns
      module Irregular
        module Natsha
          include Feminine::Regular

          def declension
            "Feminine Noun"
          end

          def subtype
            "Irregular"
          end

          def _absolute_singular
            ["νατσω", "nətshā"]
          end

          def _absolute_plural
            ["νους", "nūs"]
          end

          def _construct_singular
            ["νατσετ", "nətshet"]
          end

          def _construct_plural
            _absolute_plural
          end
        end
      end
    end
  end
end
