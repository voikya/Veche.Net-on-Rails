require_relative 'initial_unvoiced_fricative'

module Morphology
  module Alashian
    module Verbs
      module Nitkatab
        module InitialVoicedFricative
          include Nitkatab::InitialUnvoicedFricative

          def subtype
            "C1 = V/Ḏ/Z/Ǧ"
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
