require_relative 'initial_unvoiced_fricative_and_final_glide'

module Morphology
  module Alashian
    module Verbs
      module Takteb
        module InitialVoicedFricativeAndFinalGlide
          include Takteb::InitialUnvoicedFricativeAndFinalGlide

          def subtype
            "C1 = V/Ḏ/Z/Ǧ, C3 = Y/W"
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
