require_relative 'biconsonantal'

module Morphology
  module Alashian
    module Verbs
      module Nuktab
        module FinalH
          include Nuktab::Biconsonantal

          def subtype
            "C3 = H"
          end

          def _imperfect_first_singular
            [template("νυ", :c1, "υω'ηα", :c2_lenited), template("nu", :tc1, "uoha", :tc2_lenited)]
          end

          def _imperfect_second_singular_masculine
            [template("νυ", :c1, "υω'ηα", :c2_lenited, "ατ"), template("nu", :tc1, "uoha", :tc2_lenited, "at")]
          end

          def _imperfect_second_singular_feminine
            [template("νυ", :c1, "υω'ηα", :c2_lenited, "ας̄"), template("nu", :tc1, "uoha", :tc2_lenited, "aš")]
          end

          def _imperfect_third_singular_masculine
            [template("νυ", :c1, "ου'ηα", :c2), template("nu", :tc1, "ūha", :tc2)]
          end

          def _imperfect_third_singular_feminine
            [template("νυ", :c1, "ου", :c2, "ω"), template("nu", :tc1, "ū", :tc2, "ā")]
          end

          def _imperfect_first_plural
            [template("νυ", :c1, "υω'ηα", :c2_lenited, "αν"), template("nu", :tc1, "uoha", :tc2_lenited, "an")]
          end

          def _imperfect_second_plural_masculine
            [template("νυ", :c1, "υω'ηα", :c2_lenited, "τυν"), template("nu", :tc1, "uoha", :tc2_lenited, "tun")]
          end

          def _imperfect_second_plural_feminine
            [template("νυ", :c1, "υω'ηα", :c2_lenited, "σ̄ιν"), template("nu", :tc1, "uoha", :tc2_lenited, "šin")]
          end

          def _imperfect_third_plural
            [template("νυ", :c1, "ου", :c2, "ου"), template("nu", :tc1, "ū", :tc2, "ū")]
          end

          def _infinitive
            [template("μα", :c1, :c1, "υ", :c2, "ω"), template("ma", :tc1, :tc1, "u", :tc2, "ā")]
          end

          def _passive_participle
            if root.medial_plosive?
              [template("να", :c1_lenited, :c2, "ἠ"), template("na", :tc1_lenited, :tc2, "ē")]
            else
              [template("να", :c1, :c2, "ἠ"), template("na", :tc1, :tc2, "ē")]
            end
          end
        end
      end
    end
  end
end
