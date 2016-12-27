require_relative 'biconsonantal_with_initial_unvoiced_fricative'

module Morphology
  module Alashian
    module Verbs
      module Takteb
        module BiconsonantalWithInitialVoicedFricative
          include Takteb::BiconsonantalWithInitialUnvoicedFricative

          def subtype
            "Biconsonantal Root with C1 = V/Ḏ/Z/Ǧ"
          end

          private

          def infix
            "δ"
          end

          def infix_transliterated
            "d"
          end
        end
      end
    end
  end
end
