require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Takteb
        module InitialVoicedPlosive
          include Takteb::Regular

          def subtype
            "C1 = B/G"
          end

          private

          def infix
            "δ̄"
          end

          def infix_transliterated
            "ḏ"
          end
        end
      end
    end
  end
end
