require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Nitkatab
        module InitialY
          include Nitkatab::Regular

          def subtype
            "C1 = Y"
          end

          def _present_first_singular
            [template("αττἠ", :c2, "α", :c3), template("'əthē", :tc2, "a", :tc3)]
          end

          def _present_second_singular_masculine
            [template("ταττἠ", :c2, "α", :c3), template("təthē", :tc2, "a", :tc3)]
          end

          def _present_second_singular_feminine
            [template("ταττη", :c2, "α", :c3, "ει"), template("təthē", :tc2, "a", :tc3, "ī")]
          end

          def _present_third_singular_masculine
            [template("ιαττἠ", :c2, "α", :c3), template("yəthē", :tc2, "a", :tc3)]
          end

          def _present_third_singular_feminine
            [template("ιαττη", :c2, "α", :c3, "ει"), template("yəthē", :tc2, "a", :tc3, "ī")]
          end

          def _present_first_plural
            [template("ναττη", :c2, "α", :c3, "ου"), template("nəthē", :tc2, "a", :tc3, "ū")]
          end

          def _present_second_plural
            [template("ταττη", :c2, "α", :c3, "ου"), template("təthē", :tc2, "a", :tc3, "ū")]
          end

          def _present_third_plural
            [template("ιαττη", :c2, "α", :c3, "ου"), template("yəthē", :tc2, "a", :tc3, "ū")]
          end

          def _imperfect_first_singular
            [template("νι", infix, :c1, "η", :c2, "ε", :c3_lenited), template("ni", infix_transliterated, :tc1, "ē", :tc2, "e", :tc3_lenited)]
          end

          def _imperfect_second_singular_masculine
            [template("νι", infix, :c1, "η", :c2, "ε", :c3_lenited, "ετ"), template("ni", infix_transliterated, :tc1, "ē", :tc2, "e", :tc3_lenited, "et")]
          end

          def _imperfect_second_singular_feminine
            [template("νι", infix, :c1, "η", :c2, "ε", :c3_lenited, "ες̄"), template("ni", infix_transliterated, :tc1, "ē", :tc2, "e", :tc3_lenited, "eš")]
          end

          def _imperfect_third_singular_masculine
            [template("νι", infix, :c1, "η", :c2, "ε", :c3), template("ni", infix_transliterated, :tc1, "ē", :tc2, "e", :tc3)]
          end

          def _imperfect_third_singular_feminine
            [template("νι", infix, :c1, "η", :c2, "ε", :c3, "ω"), template("ni", infix_transliterated, :tc1, "ē", :tc2, "e", :tc3, "ā")]
          end

          def _imperfect_first_plural
            [template("νι", infix, :c1, "η", :c2, "ε", :c3_lenited, "εν"), template("ni", infix_transliterated, :tc1, "ē", :tc2, "e", :tc3_lenited, "en")]
          end

          def _imperfect_second_plural_masculine
            [template("νι", infix, :c1, "η", :c2, "ε", :c3_lenited, "τυν"), template("ni", infix_transliterated, :tc1, "ē", :tc2, "e", :tc3_lenited, "tun")]
          end

          def _imperfect_second_plural_feminine
            [template("νι", infix, :c1, "η", :c2, "ε", :c3_lenited, "σ̄ιν"), template("ni", infix_transliterated, :tc1, "ē", :tc2, "e", :tc3_lenited, "šin")]
          end

          def _imperfect_third_plural
            [template("νι", infix, :c1, "η", :c2, "ε", :c3, "ου"), template("ni", infix_transliterated, :tc1, "ē", :tc2, "e", :tc3, "ū")]
          end

          def _pf_subjunctive_first_singular
            [template("в̄ωττἠ", :c2, "α", :c3), template("vāthē", :tc2, "a", :tc3)]
          end

          def _pf_subjunctive_first_plural
            [template("в̄εναττἠ", :c2, "α", :c3), template("venəthē", :tc2, "a", :tc3)]
          end

          def _pf_subjunctive_second
            [template("в̄εταττἠ", :c2, "α", :c3), template("vetəthē", :tc2, "a", :tc3)]
          end

          def _pf_subjunctive_third
            [template("в̄ηττἠ", :c2, "α", :c3), template("vēthē", :tc2, "a", :tc3)]
          end

          def _impf_subjunctive_first_singular
            [template("αττη", :c2, "α", :c3, "α"), template("'əthē", :tc2, "a", :tc3, "a")]
          end

          def _impf_subjunctive_second_singular_masculine
            [template("ταττη", :c2, "α", :c3, "α"), template("təthē", :tc2, "a", :tc3, "a")]
          end

          def _impf_subjunctive_second_singular_feminine
            [template("ταττη", :c2, "α", :c3, "ια"), template("təthē", :tc2, "a", :tc3, "iya")]
          end

          def _impf_subjunctive_third_singular_masculine
            [template("ιαττη", :c2, "α", :c3, "α"), template("yəthē", :tc2, "a", :tc3, "a")]
          end

          def _impf_subjunctive_third_singular_feminine
            [template("ιαττη", :c2, "α", :c3, "ια"), template("yəthē", :tc2, "a", :tc3, "iya")]
          end

          def _impf_subjunctive_first_plural
            [template("ναττη", :c2, "α", :c3, "υ'α"), template("nəthē", :tc2, "a", :tc3, "uwa")]
          end

          def _impf_subjunctive_second_plural
            [template("ταττη", :c2, "α", :c3, "υ'α"), template("təthē", :tc2, "a", :tc3, "uwa")]
          end

          def _impf_subjunctive_third_plural
            [template("ιαττη", :c1, :c2, "α", :c3, "υ'α"), template("yəthē", :tc2, "a", :tc3, "uwa")]
          end

          def _volitive_first_singular
            [template("αττη", :c2, "α", :c3, "αννα"), template("'əthē", :tc2, "a", :tc3, "anna")]
          end

          def _volitive_second_singular_masculine
            [template("ταττη", :c2, "α", :c3, "αννα"), template("təthē", :tc2, "a", :tc3, "anna")]
          end

          def _volitive_third_singular_masculine
            [template("ιαττη", :c2, "α", :c3, "αννα"), template("yəthē", :tc2, "a", :tc3, "anna")]
          end

          def _imperative_masculine_singular
            [template("αττἠ", :c2, "α", :c3), template("'əthē", :tc2, "a", :tc3)]
          end

          def _imperative_feminine_singular
            [template("αττη", :c2, "α", :c3, "ει"), template("'əthē", :tc2, "a", :tc3, "ī")]
          end

          def _imperative_plural
            [template("αττη", :c2, "α", :c3, "ου"), template("'əthē", :tc2, "a", :tc3, "ū")]
          end

          def _precative_masculine_singular
            [template("αττη", :c2, "α", :c3, "να"), template("'əthē", :tc2, "a", :tc3, "na")]
          end

          def _infinitive
            [template("μωττἠ", :c2, "α", :c3), template("māthē", :tc2, "a", :tc3)]
          end

          def _active_participle
            [template("ματτἠ", :c2, "ι", :c3), template("məthē", :tc2, "i", :tc3)]
          end
        end
      end
    end
  end
end
