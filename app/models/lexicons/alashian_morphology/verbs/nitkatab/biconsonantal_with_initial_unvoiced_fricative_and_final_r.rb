require_relative 'biconsonantal_with_initial_unvoiced_fricative'

module Morphology
  module Alashian
    module Verbs
      module Nitkatab
        module BiconsonantalWithInitialUnvoicedFricativeAndFinalR
          include Nitkatab::BiconsonantalWithInitialUnvoicedFricative

          def subtype
            "Biconsonantal Root with C1 = F/Ṯ/S/Š/X, C3 = Ř"
          end

          def _present_second_singular_feminine
            [template("ταττα", :c1, :v, :c2, "η'ι"), template("tətha", :tc1, :tv, :tc2, "ēyi")]
          end

          def _present_third_singular_feminine
            [template("ιαττα", :c1, :v, :c2, "η'ι"), template("yətha", :tc1, :tv, :tc2, "ēyi")]
          end

          def _impf_subjunctive_second_singular_feminine
            [template("ταττα", :c1, :v, :c2, "εια"), template("tətha", :tc1, :tv, :tc2, "eya")]
          end

          def _impf_subjunctive_third_singular_feminine
            [template("ιαττα", :c1, :v, :c2, "εια"), template("yətha", :tc1, :tv, :tc2, "eya")]
          end

          def _volitive_second_singular_feminine
            [template("ταττα", :c1, :v, :c2, "ηνα"), template("tətha", :tc1, :tv, :tc2, "ēna")]
          end

          def _volitive_third_singular_feminine
            [template("ιαττα", :c1, :v, :c2, "ηνα"), template("yətha", :tc1, :tv, :tc2, "ēna")]
          end

          def _imperative_feminine_singular
            [template("αττα", :c1, :v, :c2, "η'ι"), template("'ətha", :tc1, :tv, :tc2, "ēyi")]
          end

          def _precative_feminine_singular
            [template("αττα", :c1, :v, :c2, "ηνα"), template("'ətha", :tc1, :tv, :tc2, "ēna")]
          end
        end
      end
    end
  end
end
