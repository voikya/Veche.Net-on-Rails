require_relative '../feminine/regular'

module Morphology
  module Alashian
    module Nouns
      module Irregular
        module Bna
          include Feminine::Regular

          def declension
            "Feminine Noun"
          end

          def subtype
            "Irregular"
          end

          def _absolute_singular
            ["βνω", "bnā"]
          end

          def _absolute_plural
            ["βιννιην", "binnien"]
          end

          def _construct_singular
            ["βνετ", "bnet"]
          end

          def _construct_plural
            ["βιννη", "binnē"]
          end
        end
      end
    end
  end
end
