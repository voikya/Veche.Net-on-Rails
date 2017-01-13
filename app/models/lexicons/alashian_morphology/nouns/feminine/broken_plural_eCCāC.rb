require_relative 'regular'

module Morphology
  module Alashian
    module Nouns
      module Feminine
        module BrokenPluralECCaC
          include Feminine::Regular

          def subtype
            "Broken Plural in 'eCCāC"
          end

          def _absolute_plural
            [
              template("ε", :c1, :c2, "ω", :c3).gsub(/η$/, ''),
              template("'e", :tc1, :tc2, "ā", :tc3).gsub(/h$/, '')
            ]
          end

          def _construct_plural
            _absolute_plural
          end
        end
      end
    end
  end
end
