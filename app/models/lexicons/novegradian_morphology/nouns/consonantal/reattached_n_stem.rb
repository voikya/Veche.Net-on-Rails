require_relative 'n_stem'

module Morphology
  module Novegradian
    module Nouns
      module Consonantal
        module ReattachedNStem
          include Consonantal::NStem

          def subtype
            "Reattached N-Stem"
          end

          def _nominative_singular
            [stem + "ено", stem_transliterated + "eno"]
          end
        end
      end
    end
  end
end
