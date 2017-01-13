require_relative '../feminine/regular'

module Morphology
  module Alashian
    module Nouns
      module Irregular
        module Afat
          include Feminine::Regular

          def declension
            "Feminine Noun"
          end

          def subtype
            "Irregular"
          end

          def _absolute_singular
            ["αφατ", "'afat"]
          end

          def _absolute_plural
            ["αφτους̄", "'aftūš"]
          end

          def _construct_singular
            ["αφατ", "'afat"]
          end

          def _construct_plural
            ["αφτουτ", "'aftūt"]
          end
        end
      end
    end
  end
end
