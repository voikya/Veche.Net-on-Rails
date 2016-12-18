require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Nuktab
        module InitialR
          include Nuktab::Regular

          def subtype
            "C1 = Ř"
          end

          def _present_first_singular
            [template("ω", :c1, "υ", :c2, "ω", :c3), template("'ā", :tc1, "u", :tc2, "ā", :tc3)]
          end

          def _present_second_singular_masculine
            [template("τη", :c1, "υ", :c2, "ω", :c3), template("tē", :tc1, "u", :tc2, "ā", :tc3)]
          end

          def _present_second_singular_feminine
            [template("τη", :c1, "υ", :c2, "ω", :c3, "ει"), template("tē", :tc1, "u", :tc2, "ā", :tc3, "ī")]
          end

          def _present_third_singular_masculine
            [template("ιη", :c1, "υ", :c2, "ω", :c3), template("yē", :tc1, "u", :tc2, "ā", :tc3)]
          end

          def _present_third_singular_feminine
            [template("ιη", :c1, "υ", :c2, "ω", :c3, "ει"), template("yē", :tc1, "u", :tc2, "ā", :tc3, "ī")]
          end

          def _present_first_plural
            [template("νη", :c1, "υ", :c2, "ω", :c3, "ου"), template("nē", :tc1, "u", :tc2, "ā", :tc3, "ū")]
          end

          def _present_second_plural
            [template("τη", :c1, "υ", :c2, "ω", :c3, "ου"), template("tē", :tc1, "u", :tc2, "ā", :tc3, "ū")]
          end

          def _present_third_plural
            [template("ιη", :c1, "υ", :c2, "ω", :c3, "ου"), template("yē", :tc1, "u", :tc2, "ā", :tc3, "ū")]
          end

          def _imperfect_first_singular
            [template("νυ", :c1, "ου", :c2, "α", :c3_lenited), template("nu", :tc1, "ū", :tc2, "a", :tc3_lenited)]
          end

          def _imperfect_second_singular_masculine
            [template("νυ", :c1, "ου", :c2, "α", :c3_lenited, "ατ"), template("nu", :tc1, "ū", :tc2, "a", :tc3_lenited, "at")]
          end

          def _imperfect_second_singular_feminine
            [template("νυ", :c1, "ου", :c2, "α", :c3_lenited, "ας̄"), template("nu", :tc1, "ū", :tc2, "a", :tc3_lenited, "aš")]
          end

          def _imperfect_first_plural
            [template("νυ", :c1, "ου", :c2, "α", :c3_lenited, "αν"), template("nu", :tc1, "ū", :tc2, "a", :tc3_lenited, "an")]
          end

          def _imperfect_second_plural_masculine
            [template("νυ", :c1, "ου", :c2, "α", :c3_lenited, "τυν"), template("nu", :tc1, "ū", :tc2, "a", :tc3_lenited, "tun")]
          end

          def _imperfect_second_plural_feminine
            [template("νυ", :c1, "ου", :c2, "α", :c3_lenited, "σ̄ιν"), template("nu", :tc1, "ū", :tc2, "a", :tc3_lenited, "šin")]
          end

          def _pf_subjunctive_first_singular
            [template("в̄ω", :c1, "υ", :c2, "ω", :c3), template("vā", :tc1, "u", :tc2, "ā", :tc3)]
          end

          def _pf_subjunctive_first_plural
            [template("в̄ανω", :c1, "υ", :c2, "ω", :c3), template("vanā", :tc1, "u", :tc2, "ā", :tc3)]
          end

          def _pf_subjunctive_second
            [template("в̄ατω", :c1, "υ", :c2, "ω", :c3), template("vatā", :tc1, "u", :tc2, "ā", :tc3)]
          end

          def _pf_subjunctive_third
            [template("в̄η", :c1, "υ", :c2, "ω", :c3), template("vē", :tc1, "u", :tc2, "ā", :tc3)]
          end

          def _impf_subjunctive_first_singular
            [template("ω", :c1, "υ", :c2, "ω", :c3, "α"), template("'ā", :tc1, "u", :tc2, "ā", :tc3, "a")]
          end

          def _impf_subjunctive_second_singular_masculine
            [template("τη", :c1, "υ", :c2, "ω", :c3, "α"), template("tē", :tc1, "u", :tc2, "ā", :tc3, "a")]
          end

          def _impf_subjunctive_second_singular_feminine
            [template("τη", :c1, "υ", :c2, "ω", :c3, "ια"), template("tē", :tc1, "u", :tc2, "ā", :tc3, "iya")]
          end

          def _impf_subjunctive_third_singular_masculine
            [template("ιη", :c1, "υ", :c2, "ω", :c3, "α"), template("yē", :tc1, "u", :tc2, "ā", :tc3, "a")]
          end

          def _impf_subjunctive_third_singular_feminine
            [template("ιη", :c1, "υ", :c2, "ω", :c3, "ια"), template("yē", :tc1, "u", :tc2, "ā", :tc3, "iya")]
          end

          def _impf_subjunctive_first_plural
            [template("νη", :c1, "υ", :c2, "ω", :c3, "υ'α"), template("nē", :tc1, "u", :tc2, "ā", :tc3, "uwa")]
          end

          def _impf_subjunctive_second_plural
            [template("τη", :c1, "υ", :c2, "ω", :c3, "υ'α"), template("tē", :tc1, "u", :tc2, "ā", :tc3, "uwa")]
          end

          def _impf_subjunctive_third_plural
            [template("ιη", :c1, "υ", :c2, "ω", :c3, "υ'α"), template("yē", :tc1, "u", :tc2, "ā", :tc3, "uwa")]
          end

          def _imperative_masculine_singular
            [template("νε", :c1, "υ", :c2, "ω", :c3), template("ne", :tc1, "u", :tc2, "ā", :tc3)]
          end

          def _imperative_feminine_singular
            if root.medial_plosive?
              [template("νε", :c1_lenited, :c2, "ω", :c3, "ει"), template("ne", :tc1_lenited, :tc2, "ā", :tc3, "ī")]
            else
              [template("νε", :c1, :c2, "ω", :c3, "ει"), template("ne", :tc1, :tc2, "ā", :tc3, "ī")]
            end
          end

          def _imperative_plural
            if root.medial_plosive?
              [template("νε", :c1_lenited, :c2, "ω", :c3, "ου"), template("ne", :tc1_lenited, :tc2, "ā", :tc3, "ū")]
            else
              [template("νε", :c1, :c2, "ω", :c3, "ου"), template("ne", :tc1, :tc2, "ā", :tc3, "ū")]
            end
          end

          def _infinitive
            [template("μω", :c1, "υ", :c2, "ω", :c3), template("mā", :tc1, "u", :tc2, "ā", :tc3)]
          end
        end
      end
    end
  end
end
