require_relative '../feminine/regular'

module Morphology
  module Alashian
    module Nouns
      module Irregular
        module Rukba
          include Feminine::Regular

          def declension
            "Feminine Noun"
          end

          def subtype
            "Irregular"
          end

          def _absolute_singular
            ["ρυκβω", "rukbā"]
          end

          def _absolute_plural
            ["ρυκβασ̄ει", "rukbašī"]
          end

          def _construct_singular
            ["ρυκβετ", "rukbet"]
          end

          def _construct_plural
            _absolute_plural
          end
        end
      end
    end
  end
end
