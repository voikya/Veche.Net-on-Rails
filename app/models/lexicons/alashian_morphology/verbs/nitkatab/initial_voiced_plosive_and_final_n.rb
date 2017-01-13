require_relative 'final_n'

module Morphology
  module Alashian
    module Verbs
      module Nitkatab
        module InitialVoicedPlosiveAndFinalN
          include Nitkatab::FinalN

          def subtype
            "C1 = B/G, C3 = N"
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
