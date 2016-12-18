require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Nuktab
        module FinalR
          include Nuktab::Regular

          def subtype
            "C3 = Ř"
          end

          def _present_second_singular_feminine
            [template("τι", :c1, :c1, "υ", :c2, "ω", :c3, "η'ι"), template("ti", :tc1, :tc1, "u", :tc2, "ā", :tc3, "ēyi")]
          end

          def _present_third_singular_feminine
            [template("ι", :c1, :c1, "υ", :c2, "ω", :c3, "η'ι"), template("yi", :tc1, :tc1, "u", :tc2, "ā", :tc3, "ēyi")]
          end

          def _impf_subjunctive_second_singular_feminine
            [template("τι", :c1, :c1, "υ", :c2, "ω", :c3, "εια"), template("ti", :tc1, :tc1, "u", :tc2, "ā", :tc3, "eya")]
          end

          def _impf_subjunctive_third_singular_feminine
            [template("ι", :c1, :c1, "υ", :c2, "ω", :c3, "εια"), template("yi", :tc1, :tc1, "u", :tc2, "ā", :tc3, "eya")]
          end

          def _volitive_second_singular_feminine
            [template("τι", :c1, :c1, "υ", :c2, "ω", :c3, "ηνα"), template("ti", :tc1, :tc1, "u", :tc2, "ā", :tc3, "ēna")]
          end

          def _volitive_third_singular_feminine
            [template("ι", :c1, :c1, "υ", :c2, "ω", :c3, "ηνα"), template("yi", :tc1, :tc1, "u", :tc2, "ā", :tc3, "ēna")]
          end

          def _imperative_feminine_singular
            if root.medial_plosive?
              [template("νι", :c1_lenited, :c2, "ω", :c3, "η'ι"), template("ni", :tc1_lenited, :tc2, "ā", :tc3, "ēyi")]
            else
              [template("νι", :c1, :c2, "ω", :c3, "η'ι"), template("ni", :tc1, :tc2, "ā", :tc3, "ēyi")]
            end
          end

          def _precative_feminine_singular
            if root.medial_plosive?
              [template("νι", :c1_lenited, :c2, "ω", :c3, "ηνα"), template("ni", :tc1_lenited, :tc2, "ā", :tc3, "ēna")]
            else
              [template("νι", :c1, :c2, "ω", :c3, "ηνα"), template("ni", :tc1, :tc2, "ā", :tc3, "ēna")]
            end
          end

          def _passive_participle
            if root.medial_plosive?
              [template("να", :c1_lenited, :c2, "ε", :c3), template("na", :tc1_lenited, :tc2, "e", :tc3)]
            else
              [template("να", :c1, :c2, "ε", :c3), template("na", :tc1, :tc2, "e", :tc3)]
            end
          end
        end
      end
    end
  end
end
