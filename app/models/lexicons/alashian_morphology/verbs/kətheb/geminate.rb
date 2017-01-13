require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Ketheb
        module Geminate
          include Ketheb::Regular

          def subtype
            "Geminated Root"
          end
        end
      end
    end
  end
end
