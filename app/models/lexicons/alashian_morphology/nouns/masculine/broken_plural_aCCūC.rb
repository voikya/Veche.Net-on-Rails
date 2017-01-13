require_relative 'regular'

module Morphology
  module Alashian
    module Nouns
      module Masculine
        module BrokenPluralACCuC
          include Masculine::Regular

          def subtype
            "Broken Plural in 'aCCūC"
          end

          def _absolute_plural
            [template("α", :c1, :c2, "ου", :c3), template("'a", :tc1, :tc2, "ū", :tc3)]
          end

          def _construct_plural
            _absolute_plural
          end
        end
      end
    end
  end
end
