require_relative 'regular'

module Morphology
  module Tunisian
    module Nouns
      module Feminine
        module PalatalStem
          include Feminine::Regular

          def subtype
            "Palatal Stem"
          end
        end
      end
    end
  end
end
