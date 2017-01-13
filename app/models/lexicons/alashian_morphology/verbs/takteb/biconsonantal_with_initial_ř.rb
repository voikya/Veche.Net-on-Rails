require_relative 'biconsonantal'

module Morphology
  module Alashian
    module Verbs
      module Takteb
        module BiconsonantalWithInitialR
          include Takteb::Biconsonantal

          def subtype
            "Biconsonantal Root with C1 = Ř"
          end

          def _imperative_masculine_singular
            if root.tv == "ā" || root.tv == "ū"
              [template("τε", :c1, :v, :c2), template("te", :tc1, :tv, :tc2)]
            else
              [template("τα", :c1, :v, :c2), template("ta", :tc1, :tv, :tc2)]
            end
          end

          def _imperative_feminine_singular
            if root.tv == "ā" || root.tv == "ū"
              [template("τε", :c1, :v, :c2, "ει"), template("te", :tc1, :tv, :tc2, "ī")]
            else
              [template("τα", :c1, :v, :c2, "ει"), template("ta", :tc1, :tv, :tc2, "ī")]
            end
          end

          def _imperative_plural
            if root.tv == "ā" || root.tv == "ū"
              [template("τε", :c1, :v, :c2, "ου"), template("te", :tc1, :tv, :tc2, "ū")]
            else
              [template("τα", :c1, :v, :c2, "ου"), template("ta", :tc1, :tv, :tc2, "ū")]
            end
          end
        end
      end
    end
  end
end
