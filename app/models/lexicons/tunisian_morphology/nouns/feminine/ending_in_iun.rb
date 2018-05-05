require_relative 'unmarked'

module Morphology
  module Tunisian
    module Nouns
      module Feminine
        module EndingInIun
          include Feminine::Unmarked

          def subtype
            "Ending in -iun"
          end

          private

          def plural
            singular[0...-1] + "s"
          end
        end
      end
    end
  end
end
