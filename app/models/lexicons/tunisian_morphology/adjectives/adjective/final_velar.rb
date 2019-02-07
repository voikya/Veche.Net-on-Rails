require_relative 'regular'

module Morphology
  module Tunisian
    module Adjectives
      module Adjective
        module FinalVelar
          include Adjective::Regular

          def subtype
            "Final C/G"
          end

          def _feminine_singular
            if vowel?(strong[-2])
              strong + strong[-1] + "e"
            else
              strong + "he"
            end
          end
        end
      end
    end
  end
end
