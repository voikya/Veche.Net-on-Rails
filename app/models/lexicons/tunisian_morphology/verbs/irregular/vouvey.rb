require_relative '../third_conjugation/regular'

module Morphology
  module Tunisian
    module Verbs
      module Irregular
        module Vouvey
          include ThirdConjugation::Regular

          def conjugation
            "Irregular"
          end

          def subtype
            "vouvey"
          end
        end
      end
    end
  end
end
