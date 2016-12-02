require_relative 'geminate'

module Morphology
  module Alashian
    module Verbs
      module Katab
        module GeminateWithInitialR
          include Katab::Geminate

          def subtype
            "Geminated Root with C1 = Ř"
          end

          def _present_second_singular_masculine
            [template("τε", :c1, "ω", :c2), template("te", :tc1, "ā", :tc2)]
          end

          def _present_second_singular_feminine
            [template("τε", :c1, "α", :c2, :c2, "ει"), template("te", :tc1, "a", :tc2, :tc2, "ī")]
          end

          def _present_third_singular_masculine
            [template("ιε", :c1, "ω", :c2), template("ye", :tc1, "ā", :tc2)]
          end

          def _present_third_singular_feminine
            [template("ιε", :c1, "α", :c2, :c2, "ει"), template("ye", :tc1, "a", :tc2, :tc2, "ī")]
          end

          def _present_first_plural
            [template("νε", :c1, "α", :c2, :c2, "ου"), template("ne", :tc1, "a", :tc2, :tc2, "ū")]
          end

          def _present_second_plural
            [template("τε", :c1, "α", :c2, :c2, "ου"), template("te", :tc1, "a", :tc2, :tc2, "ū")]
          end

          def _present_third_plural
            [template("ιε", :c1, "α", :c2, :c2, "ου"), template("ye", :tc1, "a", :tc2, :tc2, "ū")]
          end

          def _imperfect_first_singular
            [template(:c1, "η", :c2, "ε", :c3_lenited), template(:tc1, "ē", :tc2, "e", :tc3_lenited)]
          end

          def _imperfect_second_singular_masculine
            [template(:c1, "η", :c2, "ε", :c3_lenited, "ετ"), template(:tc1, "ē", :tc2, "e", :tc3_lenited, "et")]
          end

          def _imperfect_second_singular_feminine
            [template(:c1, "η", :c2, "ε", :c3_lenited, "ες̄"), template(:tc1, "ē", :tc2, "e", :tc3_lenited, "eš")]
          end

          def _imperfect_first_plural
            [template(:c1, "η", :c2, "ε", :c3_lenited, "εν"), template(:tc1, "ē", :tc2, "e", :tc3_lenited, "en")]
          end

          def _imperfect_second_plural_masculine
            [template(:c1, "η", :c2, "ε", :c3_lenited, "τυν"), template(:tc1, "ē", :tc2, "e", :tc3_lenited, "tun")]
          end

          def _imperfect_second_plural_feminine
            [template(:c1, "η", :c2, "ε", :c3_lenited, "σ̄ιν"), template(:tc1, "ē", :tc2, "e", :tc3_lenited, "šin")]
          end

          def _impf_subjunctive_second_singular_masculine
            [template("τε", :c1, "α", :c2, :c2, "α"), template("te", :tc1, "a", :tc2, :tc2, "a")]
          end

          def _impf_subjunctive_second_singular_feminine
            [template("τε", :c1, "α", :c2, :c2, "ι'α"), template("te", :tc1, "a", :tc2, :tc2, "iya")]
          end

          def _impf_subjunctive_third_singular_masculine
            [template("ιε", :c1, "α", :c2, :c2, "α"), template("ye", :tc1, "a", :tc2, :tc2, "a")]
          end

          def _impf_subjunctive_third_singular_feminine
            [template("ιε", :c1, "α", :c2, :c2, "ι'α"), template("ye", :tc1, "a", :tc2, :tc2, "iya")]
          end

          def _impf_subjunctive_first_plural
            [template("νε", :c1, "α", :c2, :c2, "υ'α"), template("ne", :tc1, "a", :tc2, :tc2, "uwa")]
          end

          def _impf_subjunctive_second_plural
            [template("τε", :c1, "α", :c2, :c2, "υ'α"), template("te", :tc1, "a", :tc2, :tc2, "uwa")]
          end

          def _impf_subjunctive_third_plural
            [template("ιε", :c1, "α", :c2, :c2, "υ'α"), template("ye", :tc1, "a", :tc2, :tc2, "uwa")]
          end

          def _volitive_second_singular_masculine
            [template("τε", :c1, "α", :c2, :c2, "αννα"), template("te", :tc1, "a", :tc2, :tc2, "anna")]
          end

          def _volitive_third_singular_masculine
            [template("ιε", :c1, "α", :c2, :c2, "αννα"), template("ye", :tc1, "a", :tc2, :tc2, "anna")]
          end
        end
      end
    end
  end
end
