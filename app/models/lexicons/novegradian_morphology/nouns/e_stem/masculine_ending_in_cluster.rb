require_relative 'regular_masculine'

module Morphology
  module Novegradian
    module Nouns
      module EStem
        module MasculineEndingInCluster
          include EStem::RegularMasculine

          def subtype
            "Masculine Ending in Cluster"
          end

          def _accusative_singular
            animate? ? _genitive_singular : _nominative_singular
          end
        end
      end
    end
  end
end
