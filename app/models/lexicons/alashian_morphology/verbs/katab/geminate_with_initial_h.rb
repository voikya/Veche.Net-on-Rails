require_relative 'geminate'

module Morphology
  module Alashian
    module Verbs
      module Katab
        module GeminateWithInitialH
          include Katab::Geminate

          def subtype
            "Geminated Root with Initial H"
          end

          def _imperfect_first_singular
            [template("ιε", :c2, "ε", :c3_lenited), template("ye", :tc2, "e", :tc3_lenited)]
          end

          def _imperfect_second_singular_masculine
            [template("ιε", :c2, "ε", :c3_lenited, "ετ"), template("ye", :tc2, "e", :tc3_lenited, "et")]
          end

          def _imperfect_second_singular_feminine
            [template("ιε", :c2, "ε", :c3_lenited, "ες̄"), template("ye", :tc2, "e", :tc3_lenited, "eš")]
          end

          def _imperfect_first_plural
            [template("ιε", :c2, "ε", :c3_lenited, "εν"), template("ye", :tc2, "e", :tc3_lenited, "en")]
          end

          def _imperfect_second_plural_masculine
            [template("ιε", :c2, "ε", :c3_lenited, "τυν"), template("ye", :tc2, "e", :tc3_lenited, "tun")]
          end

          def _imperfect_second_plural_feminine
            [template("ιε", :c2, "ε", :c3_lenited, "σ̄ιν"), template("ye", :tc2, "e", :tc3_lenited, "šin")]
          end

          def _passive_participle
            [template("μα", :c1, "α", :c2, "ου", :c3), template("ma", :tc1, "a", :tc2, "ū", :tc3)]
          end
        end
      end
    end
  end
end
