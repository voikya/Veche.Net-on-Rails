require_relative '../feminine/regular'

module Morphology
  module Alashian
    module Nouns
      module Irregular
        module Ruofne
          include Feminine::Regular

          def declension
            "Feminine Noun"
          end

          def subtype
            "Irregular"
          end

          def _absolute_singular
            ["ρ̄υωφνε", "řuofne"]
          end

          def _absolute_plural
            ["ρ̄υφνει", "řufnī"]
          end

          def _construct_singular
            ["ρ̄υωφνε", "řuofne"]
          end

          def _construct_plural
            ["ρ̄υφνει", "řufnī"]
          end
        end
      end
    end
  end
end
