require_relative 'final_h'

module Morphology
  module Alashian
    module Verbs
      module Nuktab
        module InitialYAndFinalH
          include Nuktab::FinalH

          def subtype
            "C1 = Y, C3 = H"
          end

          def _present_second_singular_masculine
            [template("τ", :c1, :c1, :v, :c2), template("ti", :tc1, :tc1, :tv, :tc2)]
          end

          def _present_first_plural
            [template("ν", :c1, :c1, :v, :c2, "ου"), template("ni", :tc1, :tc1, :tv, :tc2, "ū")]
          end

          def _imperfect_first_singular
            [template("νιου'ηα", :c2_lenited), template("niyūha", :tc2_lenited)]
          end

          def _imperfect_second_singular_masculine
            [template("νιου'ηα", :c2_lenited, "ατ"), template("niyūha", :tc2_lenited, "at")]
          end

          def _imperfect_second_singular_feminine
            [template("νιου'ηα", :c2_lenited, "ας̄"), template("niyūha", :tc2_lenited, "aš")]
          end

          def _imperfect_third_singular_masculine
            [template("νιου'ηα", :c2), template("niyūha", :tc2)]
          end

          def _imperfect_third_singular_feminine
            [template("νιου'ηα", :c2, "ω"), template("niyūha", :tc2, "ā")]
          end

          def _imperfect_first_plural
            [template("νιου'ηα", :c2_lenited, "αν"), template("niyūha", :tc2_lenited, "an")]
          end

          def _imperfect_second_plural_masculine
            [template("νιου'ηα", :c2_lenited, "τυν"), template("niyūha", :tc2_lenited, "tun")]
          end

          def _imperfect_second_plural_feminine
            [template("νιου'ηα", :c2_lenited, "σ̄ιν"), template("niyūha", :tc2_lenited, "šin")]
          end

          def _imperfect_third_plural
            [template("νιου'ηα", :c3, "ου"), template("niyūha", :tc2, "ū")]
          end

          def _imperative_masculine_singular
            [template("ν", :c1, :v, :c2), template("ni", :tc1, :tv, :tc2)]
          end

          def _imperative_feminine_singular
            [template("ν", :c1, :v, :c2, "ει"), template("ni", :tc1, :tv, :tc2, "ī")]
          end

          def _imperative_plural
            [template("ν", :c1, :v, :c2, "ου"), template("ni", :tc1, :tv, :tc2, "ū")]
          end

          def _passive_participle
            [template("νη", :c2, "ἠ"), template("nē", :tc2, "ē")]
          end
        end
      end
    end
  end
end
