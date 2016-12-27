require_relative 'final_glide'

module Morphology
  module Alashian
    module Verbs
      module Takteb
        module InitialVoicedPlosiveAndFinalGlide
          include Takteb::FinalGlide

          def subtype
            "C1 = B/G, C3 = Y/W"
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
