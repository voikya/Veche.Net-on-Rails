require_relative 's_stem'

module Morphology
  module Novegradian
    module Nouns
      module Consonantal
        module ReattachedSStem
          include Consonantal::SStem

          def subtype
            "Reattached S-Stem"
          end

          def _nominative_singular
            [stem + "есо", stem_transliterated + "eso"]
          end
        end
      end
    end
  end
end
