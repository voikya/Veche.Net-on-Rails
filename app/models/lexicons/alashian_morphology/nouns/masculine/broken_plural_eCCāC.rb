require_relative 'regular'

module Morphology
  module Alashian
    module Nouns
      module Masculine
        module BrokenPluralECCaC
          include Masculine::Regular

          def subtype
            "Broken Plural in 'eCCāC"
          end

          def _absolute_plural
            if root.initial_aspirate?
              [template("α", :c1, :c2, "ει", :c3), template("'ə", :tc1, :tc2, "ā", :tc3)]
            else
              [template("ε", :c1, :c2, "ω", :c3), template("'e", :tc1, :tc2, "ā", :tc3)]
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
