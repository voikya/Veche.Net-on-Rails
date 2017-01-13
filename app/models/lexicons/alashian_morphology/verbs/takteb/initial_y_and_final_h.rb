require_relative 'biconsonantal'

module Morphology
  module Alashian
    module Verbs
      module Takteb
        module InitialYAndFinalH
          include Takteb::Biconsonantal

          def subtype
            "C1 = Y, C3 = H"
          end

          def _imperative_masculine_singular
            if root.tv == "ā" || root.tv == "ū"
              [template("τ", :c1, :v, :c2), template("ti", :tc1, :tv, :tc2)]
            else
              [template("τα", :c1, :v, :c2), template("ta", :tc1, :tv, :tc2)]
            end
          end

          def _imperative_feminine_singular
            if root.tv == "ā" || root.tv == "ū"
              [template("τ", :c1, :v, :c2, "ει"), template("ti", :tc1, :tv, :tc2, "ī")]
            else
              [template("τα", :c1, :v, :c2, "ει"), template("ta", :tc1, :tv, :tc2, "ī")]
            end
          end

          def _imperative_plural
            if root.tv == "ā" || root.tv == "ū"
              [template("τ", :c1, :v, :c2, "ου"), template("ti", :tc1, :tv, :tc2, "ū")]
            else
              [template("τα", :c1, :v, :c2, "ου"), template("ta", :tc1, :tv, :tc2, "ū")]
            end
          end
        end
      end
    end
  end
end
