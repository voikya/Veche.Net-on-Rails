require_relative '../feminine/regular'

module Morphology
  module Alashian
    module Nouns
      module Irregular
        module Itta
          include Feminine::Regular

          def declension
            "Feminine Noun"
          end

          def subtype
            "Irregular"
          end

          def _absolute_singular
            ["ιθθω", "'iṯṯā"]
          end

          def _absolute_plural
            ["νισσους̄", "nissūš"]
          end

          def _construct_singular
            ["ιθθετ", "'iṯṯet"]
          end

          def _construct_plural
            ["νισσουτ", "nissūt"]
          end
        end
      end
    end
  end
end
