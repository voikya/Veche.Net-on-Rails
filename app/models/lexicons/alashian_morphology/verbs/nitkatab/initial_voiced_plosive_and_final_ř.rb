require_relative 'initial_voiced_plosive'

module Morphology
  module Alashian
    module Verbs
      module Nitkatab
        module InitialVoicedPlosiveAndFinalR
          include Nitkatab::InitialVoicedPlosive

          def subtype
            "C1 = V/Ḏ/Z/Ǧ, C3 = Ř"
          end

          def _present_second_singular_feminine
            if root.medial_plosive?
              [template("ταττα", :c1_lenited, :c2, "α", :c3, "η'ι"), template("tətha", :tc1_lenited, :tc2, "a", :tc3, "ēyi")]
            else
              [template("ταττα", :c1, :c2, "α", :c3, "η'ι"), template("tətha", :tc1, :tc2, "a", :tc3, "ēyi")]
            end
          end

          def _present_third_singular_feminine
            if root.medial_plosive?
              [template("ιαττα", :c1_lenited, :c2, "α", :c3, "η'ι"), template("yətha", :tc1_lenited, :tc2, "a", :tc3, "ēyi")]
            else
              [template("ιαττα", :c1, :c2, "α", :c3, "η'ι"), template("yətha", :tc1, :tc2, "a", :tc3, "ēyi")]
            end
          end

          def _impf_subjunctive_second_singular_feminine
            if root.medial_plosive?
              [template("ταττα", :c1_lenited, :c2, "α", :c3, "εια"), template("tətha", :tc1_lenited, :tc2, "a", :tc3, "eya")]
            else
              [template("ταττα", :c1, :c2, "α", :c3, "εια"), template("tətha", :tc1, :tc2, "a", :tc3, "eya")]
            end
          end

          def _impf_subjunctive_third_singular_feminine
            if root.medial_plosive?
              [template("ιαττα", :c1_lenited, :c2, "α", :c3, "εια"), template("yətha", :tc1_lenited, :tc2, "a", :tc3, "eya")]
            else
              [template("ιαττα", :c1, :c2, "α", :c3, "εια"), template("yətha", :tc1, :tc2, "a", :tc3, "eya")]
            end
          end

          def _volitive_second_singular_feminine
            if root.medial_plosive?
              [template("ταττα", :c1_lenited, :c2, "α", :c3, "ηνα"), template("tətha", :tc1_lenited, :tc2, "a", :tc3, "ēna")]
            else
              [template("ταττα", :c1, :c2, "α", :c3, "ηνα"), template("tətha", :tc1, :tc2, "a", :tc3, "ēna")]
            end
          end

          def _volitive_third_singular_feminine
            if root.medial_plosive?
              [template("ιαττα", :c1_lenited, :c2, "α", :c3, "ηνα"), template("yətha", :tc1_lenited, :tc2, "a", :tc3, "ēna")]
            else
              [template("ιαττα", :c1, :c2, "α", :c3, "ηνα"), template("yətha", :tc1, :tc2, "a", :tc3, "ēna")]
            end
          end

          def _imperative_feminine_singular
            if root.medial_plosive?
              [template("αττα", :c1_lenited, :c2, "α", :c3, "η'ι"), template("'ətha", :tc1_lenited, :tc2, "a", :tc3, "ēyi")]
            else
              [template("αττα", :c1, :c2, "α", :c3, "η'ι"), template("'ətha", :tc1, :tc2, "a", :tc3, "ēyi")]
            end
          end

          def _precative_feminine_singular
            if root.medial_plosive?
              [template("αττα", :c1_lenited, :c2, "α", :c3, "ηνα"), template("'ətha", :tc1_lenited, :tc2, "a", :tc3, "ēna")]
            else
              [template("αττα", :c1, :c2, "α", :c3, "ηνα"), template("'ətha", :tc1, :tc2, "a", :tc3, "ēna")]
            end
          end

          def _active_participle
            if root.medial_plosive?
              [template("ματτα", :c1_lenited, :c2, "ε", :c3), template("mətha", :tc1_lenited, :tc2, "e", :tc3)]
            else
              [template("ματτα", :c1, :c2, "ε", :c3), template("mətha", :tc1, :tc2, "e", :tc3)]
            end
          end
        end
      end
    end
  end
end
