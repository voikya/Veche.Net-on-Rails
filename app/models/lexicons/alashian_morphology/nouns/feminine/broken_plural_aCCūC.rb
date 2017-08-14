require_relative 'regular'

module Morphology
  module Alashian
    module Nouns
      module Feminine
        module BrokenPluralACCuC
          include Feminine::Regular

          def subtype
            "Broken Plural in 'aCCūC"
          end

          def _absolute_plural
            if root.initial_aspirate?
              [
                template("α", :c1_lenited, :c2, "ου", :c3).gsub(/η$/, ''),
                template("'ə", :tc1_lenited, :tc2, "ū", :tc3).gsub(/h$/, '')
              ]
            else
              [
                template("α", :c1_lenited, :c2, "ου", :c3).gsub(/η$/, ''),
                template("'a", :tc1_lenited, :tc2, "ū", :tc3).gsub(/h$/, '')
              ]
            end
          end

          def _construct_plural
            _absolute_plural
          end
        end
      end
    end
  end
end
