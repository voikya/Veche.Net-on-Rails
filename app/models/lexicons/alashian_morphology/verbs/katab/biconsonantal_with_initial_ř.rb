require_relative 'biconsonantal'

module Morphology
  module Alashian
    module Verbs
      module Katab
        module BiconsonantalWithInitialR
          include Katab::Biconsonantal

          def subtype
            "Biconsonantal Root with C1 = Ř"
          end

          def _present_second_singular_masculine
            [template("τε", :c1, :v, :c2), template("te", :tc1, :tv, :tc2)]
          end

          def _present_second_singular_feminine
            [template("τε", :c1, :v, :c2, "ει"), template("te", :tc1, :tv, :tc2, "ī")]
          end

          def _present_third_singular_masculine
            [template("ιε", :c1, :v, :c2), template("ye", :tc1, :tv, :tc2)]
          end

          def _present_third_singular_feminine
            [template("ιε", :c1, :v, :c2, "ει"), template("ye", :tc1, :tv, :tc2, "ī")]
          end

          def _present_first_plural
            [template("νε", :c1, :v, :c2, "ου"), template("ne", :tc1, :tv, :tc2, "ū")]
          end

          def _present_second_plural
            [template("τε", :c1, :v, :c2, "ου"), template("te", :tc1, :tv, :tc2, "ū")]
          end

          def _present_third_plural
            [template("ιε", :c1, :v, :c2, "ου"), template("ye", :tc1, :tv, :tc2, "ū")]
          end

          def _imperfect_first_singular
            [template(:c1, "η'", :c2, "ε", :c3_lenited), template(:tc1, "ē", :tc2, "e", :tc3_lenited)]
          end

          def _imperfect_second_singular_masculine
            [template(:c1, "η'", :c2, "ε", :c3_lenited, "ετ"), template(:tc1, "ē", :tc2, "e", :tc3_lenited, "et")]
          end

          def _imperfect_second_singular_feminine
            [template(:c1, "η'", :c2, "ε", :c3_lenited, "ες̄"), template(:tc1, "ē", :tc2, "e", :tc3_lenited, "eš")]
          end

          def _imperfect_first_plural
            [template(:c1, "η'", :c2, "ε", :c3_lenited, "εν"), template(:tc1, "ē", :tc2, "e", :tc3_lenited, "en")]
          end

          def _imperfect_second_plural_masculine
            [template(:c1, "η'", :c2, "ε", :c3_lenited, "τυν"), template(:tc1, "ē", :tc2, "e", :tc3_lenited, "tun")]
          end

          def _imperfect_second_plural_feminine
            [template(:c1, "η'", :c2, "ε", :c3_lenited, "σ̄ιν"), template(:tc1, "ē", :tc2, "e", :tc3_lenited, "šin")]
          end

          def _impf_subjunctive_second_singular_masculine
            [template("τε", :c1, :v, :c2, "α"), template("te", :tc1, :tv, :tc2, "a")]
          end

          def _impf_subjunctive_second_singular_feminine
            [template("τε", :c1, :v, :c2, "ια"), template("te", :tc1, :tv, :tc2, "iya")]
          end

          def _impf_subjunctive_third_singular_masculine
            [template("ιε", :c1, :v, :c2, "α"), template("ye", :tc1, :tv, :tc2, "a")]
          end

          def _impf_subjunctive_third_singular_feminine
            [template("ιε", :c1, :v, :c2, "ια"), template("ye", :tc1, :tv, :tc2, "iya")]
          end

          def _impf_subjunctive_first_plural
            [template("νε", :c1, :v, :c2, "υ'α"), template("ne", :tc1, :tv, :tc2, "uwa")]
          end

          def _impf_subjunctive_second_plural
            [template("τε", :c1, :v, :c2, "υ'α"), template("te", :tc1, :tv, :tc2, "uwa")]
          end

          def _impf_subjunctive_third_plural
            [template("ιε", :c1, :v, :c2, "υ'α"), template("ye", :tc1, :tv, :tc2, "uwa")]
          end
        end
      end
    end
  end
end
