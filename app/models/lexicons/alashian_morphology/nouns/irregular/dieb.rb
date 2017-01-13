require_relative '../masculine/regular'

module Morphology
  module Alashian
    module Nouns
      module Irregular
        module Dieb
          include Masculine::Regular

          def declension
            "Masculine Noun"
          end

          def subtype
            "Irregular"
          end

          def _absolute_singular
            ["διηβ", "dieb"]
          end

          def _absolute_plural
            ["εδδωβ", "'eddāb"]
          end

          def _construct_singular
            _absolute_singular
          end

          def _construct_plural
            _absolute_plural
          end
        end
      end
    end
  end
end
