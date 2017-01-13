require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Kethab
        module Geminate
          include Kethab::Regular

          def subtype
            "Geminated Root"
          end
        end
      end
    end
  end
end
