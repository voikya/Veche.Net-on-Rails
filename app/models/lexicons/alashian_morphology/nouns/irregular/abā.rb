require_relative '../feminine/regular'

module Morphology
  module Alashian
    module Nouns
      module Irregular
        module Aba
          include Feminine::Regular

          def declension
            "Feminine Noun"
          end

          def subtype
            "Irregular"
          end

          def _absolute_singular
            ["αβω", "'abā"]
          end

          def _absolute_plural
            ["αβαηυως̄", "'abahuoš"]
          end

          def _construct_singular
            ["αβετ", "'abet"]
          end

          def _construct_plural
            ["αβαηουτ", "'abahūt"]
          end
        end
      end
    end
  end
end
