require_relative '../feminine/regular'

module Morphology
  module Alashian
    module Nouns
      module Irregular
        module Fien
          include Feminine::Regular

          def declension
            "Masculine Noun"
          end

          def subtype
            "Irregular"
          end

          def _absolute_singular
            ["φιην", "fien"]
          end

          def _absolute_plural
            _absolute_singular
          end

          def _construct_singular
            ["φη", "fē"]
          end

          def _construct_plural
            _construct_singular
          end
        end
      end
    end
  end
end
