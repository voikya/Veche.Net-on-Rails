require_relative '../feminine/regular'

module Morphology
  module Alashian
    module Nouns
      module Irregular
        module Xatha
          include Feminine::Regular

          def declension
            "Feminine Noun"
          end

          def subtype
            "Irregular"
          end

          def _absolute_singular
            ["χαττω", "xəthā"]
          end

          def _absolute_plural
            ["χατκιους̄", "xətkyūš"]
          end

          def _construct_singular
            ["χαττετ", "xəthet"]
          end

          def _construct_plural
            ["χατκιουτ", "xətkyūt"]
          end
        end
      end
    end
  end
end
