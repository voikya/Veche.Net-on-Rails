require_relative '../feminine/regular'

module Morphology
  module Alashian
    module Nouns
      module Irregular
        module Kari
          include Feminine::Regular

          def declension
            "Feminine Noun"
          end

          def subtype
            "Irregular"
          end

          def _absolute_singular
            ["καρει", "karī"]
          end

          def _absolute_plural
            ["κεριους̄", "keryūš"]
          end

          def _construct_singular
            _absolute_singular
          end

          def _construct_plural
            ["κεριουτ", "keryūt"]
          end
        end
      end
    end
  end
end
