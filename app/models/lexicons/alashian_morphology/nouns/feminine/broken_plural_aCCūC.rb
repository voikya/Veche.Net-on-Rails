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
                template("α", :c1, :c2, "ου", :c3).gsub(/η$/, ''),
                template("'ə", :tc1, :tc2, "ū", :tc3).gsub(/h$/, '')
              ]
            else
              [
                template("α", :c1, :c2, "ου", :c3).gsub(/η$/, ''),
                template("'a", :tc1, :tc2, "ū", :tc3).gsub(/h$/, '')
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
