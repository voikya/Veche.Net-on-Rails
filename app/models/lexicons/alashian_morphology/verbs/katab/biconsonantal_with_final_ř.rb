require_relative 'biconsonantal'

module Morphology
  module Alashian
    module Verbs
      module Katab
        module BiconsonantalWithFinalR
          include Katab::Biconsonantal

          def subtype
            "Biconsonantal Root with C3 = Ř"
          end

          def _present_second_singular_feminine
            if root.tv == "ā" || root.tv == "ū"
              [template("τι", :c1, :v, :c2, "η'ι"), template("ti", :tc1, :tv, :tc2, "ēyi")]
            else
              [template("τα", :c1, :v, :c2, "η'ι"), template("ta", :tc1, :tv, :tc2, "ēyi")]
            end
          end

          def _present_third_singular_feminine
            if root.tv == "ā" || root.tv == "ū"
              [template("ι", :c1, :v, :c2, "η'ι"), template("yi", :tc1, :tv, :tc2, "ēyi")]
            else
              [template("ια", :c1, :v, :c2, "η'ι"), template("ya", :tc1, :tv, :tc2, "ēyi")]
            end
          end

          def _impf_subjunctive_second_singular_feminine
            if root.tv == "ā" || root.tv == "ū"
              [template("τι", :c1, :v, :c2, "εια"), template("ti", :tc1, :tv, :tc2, "eya")]
            else
              [template("τα", :c1, :v, :c2, "εια"), template("ta", :tc1, :tv, :tc2, "eya")]
            end
          end

          def _impf_subjunctive_third_singular_feminine
            if root.tv == "ā" || root.tv == "ū"
              [template("ι", :c1, :v, :c2, "εια"), template("yi", :tc1, :tv, :tc2, "eya")]
            else
              [template("ια", :c1, :v, :c2, "εια"), template("ya", :tc1, :tv, :tc2, "eya")]
            end
          end

          def _volitive_second_singular_feminine
            if root.tv == "ā" || root.tv == "ū"
              [template("τι", :c1, :v, :c2, "ηνα"), template("ti", :tc1, :tv, :tc2, "ēna")]
            else
              [template("τα", :c1, :v, :c2, "ηνα"), template("ta", :tc1, :tv, :tc2, "ēna")]
            end
          end

          def _volitive_third_singular_feminine
            if root.tv == "ā" || root.tv == "ū"
              [template("ι", :c1, :v, :c2, "ηνα"), template("yi", :tc1, :tv, :tc2, "ēna")]
            else
              [template("ια", :c1, :v, :c2, "ηνα"), template("ya", :tc1, :tv, :tc2, "ēna")]
            end
          end

          def _imperative_feminine_singular
            [template(:c1, :v, :c2, "η'ι"), template(:tc1, :tv, :tc2, "ēyi")]
          end

          def _precative_feminine_singular
            [template(:c1, :v, :c2, "ηνα"), template(:tc1, :tv, :tc2, "ēna")]
          end
        end
      end
    end
  end
end
