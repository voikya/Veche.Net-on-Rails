require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Nitkatab
        module InitialW
          include Nitkatab::Regular

          def subtype
            "C1 = W"
          end

          def _present_first_singular
            [template("αττοὐ", :c2, "α", :c3), template("'əthū", :tc2, "a", :tc3)]
          end

          def _present_second_singular_masculine
            [template("ταττοὐ", :c2, "α", :c3), template("təthū", :tc2, "a", :tc3)]
          end

          def _present_second_singular_feminine
            [template("ταττου", :c2, "α", :c3, "ει"), template("təthū", :tc2, "a", :tc3, "ī")]
          end

          def _present_third_singular_masculine
            [template("ιαττοὐ", :c2, "α", :c3), template("yəthū", :tc2, "a", :tc3)]
          end

          def _present_third_singular_feminine
            [template("ιαττου", :c2, "α", :c3, "ει"), template("yəthū", :tc2, "a", :tc3, "ī")]
          end

          def _present_first_plural
            [template("ναττου", :c2, "α", :c3, "ου"), template("nəthū", :tc2, "a", :tc3, "ū")]
          end

          def _present_second_plural
            [template("ταττου", :c2, "α", :c3, "ου"), template("təthū", :tc2, "a", :tc3, "ū")]
          end

          def _present_third_plural
            [template("ιαττου", :c2, "α", :c3, "ου"), template("yəthū", :tc2, "a", :tc3, "ū")]
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
            [template("νι", infix, :c1, "η", :c2, "ε", :c3, "ω"), template("ni", infix_transliterated, :tc1, "ē", :tc2, "ē", :tc3, "ā")]
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
            [template("в̄ωττοὐ", :c2, "α", :c3), template("vāthū", :tc2, "a", :tc3)]
          end

          def _pf_subjunctive_first_plural
            [template("в̄εναττοὐ", :c2, "α", :c3), template("venəthū", :tc2, "a", :tc3)]
          end

          def _pf_subjunctive_second
            [template("в̄εταττοὐ", :c2, "α", :c3), template("vetəthū", :tc2, "a", :tc3)]
          end

          def _pf_subjunctive_third
            [template("в̄ηττοὐ", :c2, "α", :c3), template("vēthū", :tc2, "a", :tc3)]
          end

          def _impf_subjunctive_first_singular
            [template("αττου", :c2, "α", :c3, "α"), template("'əthū", :tc2, "a", :tc3, "a")]
          end

          def _impf_subjunctive_second_singular_masculine
            [template("ταττου", :c2, "α", :c3, "α"), template("təthū", :tc2, "a", :tc3, "a")]
          end

          def _impf_subjunctive_second_singular_feminine
            [template("ταττου", :c2, "α", :c3, "ια"), template("təthū", :tc2, "a", :tc3, "iya")]
          end

          def _impf_subjunctive_third_singular_masculine
            [template("ιαττου", :c2, "α", :c3, "α"), template("yəthū", :tc2, "a", :tc3, "a")]
          end

          def _impf_subjunctive_third_singular_feminine
            [template("ιαττου", :c2, "α", :c3, "ια"), template("yəthū", :tc2, "a", :tc3, "iya")]
          end

          def _impf_subjunctive_first_plural
            [template("ναττου", :c2, "α", :c3, "υ'α"), template("nəthū", :tc2, "a", :tc3, "uwa")]
          end

          def _impf_subjunctive_second_plural
            [template("ταττου", :c2, "α", :c3, "υ'α"), template("təthū", :tc2, "a", :tc3, "uwa")]
          end

          def _impf_subjunctive_third_plural
            [template("ιαττου", :c1, :c2, "α", :c3, "υ'α"), template("yəthū", :tc2, "a", :tc3, "uwa")]
          end

          def _volitive_first_singular
            [template("αττου", :c2, "α", :c3, "αννα"), template("'əthū", :tc2, "a", :tc3, "anna")]
          end

          def _volitive_second_singular_masculine
            [template("ταττου", :c2, "α", :c3, "αννα"), template("təthū", :tc2, "a", :tc3, "anna")]
          end

          def _volitive_third_singular_masculine
            [template("ιαττου", :c2, "α", :c3, "αννα"), template("yəthū", :tc2, "a", :tc3, "anna")]
          end

          def _imperative_masculine_singular
            [template("αττοὐ", :c2, "α", :c3), template("'əthū", :tc2, "a", :tc3)]
          end

          def _imperative_feminine_singular
            [template("αττου", :c2, "α", :c3, "ει"), template("'əthū", :tc2, "a", :tc3, "ī")]
          end

          def _imperative_plural
            [template("αττου", :c2, "α", :c3, "ου"), template("'əthū", :tc2, "a", :tc3, "ū")]
          end

          def _precative_masculine_singular
            [template("αττου", :c2, "α", :c3, "να"), template("'əthū", :tc2, "a", :tc3, "na")]
          end

          def _infinitive
            [template("μωττοὐ", :c2, "α", :c3), template("māthū", :tc2, "a", :tc3)]
          end

          def _active_participle
            [template("ματτοὐ", :c2, "ι", :c3), template("məthū", :tc2, "i", :tc3)]
          end
        end
      end
    end
  end
end
