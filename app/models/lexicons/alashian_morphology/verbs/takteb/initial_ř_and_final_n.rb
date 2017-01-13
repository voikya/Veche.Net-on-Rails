require_relative 'final_n'

module Morphology
  module Alashian
    module Verbs
      module Takteb
        module InitialRAndFinalN
          include Takteb::FinalN

          def subtype
            "C1 = Ř, C3 = N"
          end

          def _imperative_masculine_singular
            if root.tv == "ā"
              [template("τε", :c1, :c2, :v, :c3), template("te", :tc1, :tc2, :tv, :tc3)]
            else
              [template("τα", :c1, :c2, :v, :c3), template("ta", :tc1, :tc2, :tv, :tc3)]
            end
          end

          def _imperative_feminine_singular
            if root.tv == "ā"
              [template("τε", :c1, :c2, :short_v, :c3, "ει"), template("te", :tc1, :tc2, :short_tv, :tc3, "ī")]
            else
              [template("τα", :c1, :c2, :short_v, :c3, "ει"), template("ta", :tc1, :tc2, :short_tv, :tc3, "ī")]
            end
          end

          def _imperative_plural
            if root.tv == "ā"
              [template("τε", :c1, :c2, :short_v, :c3, "ου"), template("te", :tc1, :tc2, :short_tv, :tc3, "ū")]
            else
              [template("τα", :c1, :c2, :short_v, :c3, "ου"), template("ta", :tc1, :tc2, :short_tv, :tc3, "ū")]
            end
          end
        end
      end
    end
  end
end
