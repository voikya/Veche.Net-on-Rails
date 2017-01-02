require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Nitkatab
        module InitialDentalPlosive
          include Nitkatab::Regular

          def subtype
            "C1 = T/D"
          end

          private

          def infix
            root.c1
          end

          def infix_transliterated
            root.tc1
          end
        end
      end
    end
  end
end
