require_relative '../feminine/regular'

module Morphology
  module Alashian
    module Nouns
      module Irregular
        module Bit
          include Feminine::Regular

          def declension
            "Feminine Noun"
          end

          def subtype
            "Irregular"
          end

          def _absolute_singular
            ["βειτ", "bīt"]
          end

          def _absolute_plural
            ["βινυως̄", "binuoš"]
          end

          def _construct_singular
            ["βειτ", "bīt"]
          end

          def _construct_plural
            ["βινουτ", "binūt"]
          end
        end
      end
    end
  end
end
