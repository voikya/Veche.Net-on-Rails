require_relative 'final_y'

module Morphology
  module Alashian
    module Verbs
      module Nitkatab
        module InitialVoicedPlosiveAndFinalY
          include Nitkatab::FinalY

          def subtype
            "C1 = B/G, C3 = Y"
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
