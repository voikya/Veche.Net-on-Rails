require_relative 'final_glottal_stop'

module Morphology
  module Alashian
    module Verbs
      module Takteb
        module InitialVoicedPlosiveAndFinalGlottalStop
          include Takteb::FinalGlottalStop

          def subtype
            "C1 = B/G, C3 = '"
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
