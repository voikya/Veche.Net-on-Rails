require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Nuktab
        module Biconsonantal
          include Nuktab::Regular

          def subtype
            "Biconsonantal Root"
          end

          def _present_first_singular
            [template("α", :c1, :c1, :v, :c2), template("'a", :tc1, :tc1, :tv, :tc2)]
          end

          def _present_second_singular_masculine
            if root.tv == "ā" || root.tv == "ū"
              [template("τι", :c1, :c1, :v, :c2), template("ti", :tc1, :tc1, :tv, :tc2)]
            else
              [template("τα", :c1, :c1, :v, :c2), template("ta", :tc1, :tc1, :tv, :tc2)]
            end
          end

          def _present_second_singular_feminine
            _present_second_singular_masculine.zip(["ει", "ī"]).map(&:join)
          end

          def _present_third_singular_masculine
            if root.tv == "ā" || root.tv == "ū"
              [template("ι", :c1, :c1, :v, :c2), template("yi", :tc1, :tc1, :tv, :tc2)]
            else
              [template("ια", :c1, :c1, :v, :c2), template("ya", :tc1, :tc1, :tv, :tc2)]
            end
          end

          def _present_third_singular_feminine
            _present_third_singular_masculine.zip(["ει", "ī"]).map(&:join)
          end

          def _present_first_plural
            if root.tv == "ā" || root.tv == "ū"
              [template("νι", :c1, :c1, :v, :c2, "ου"), template("ni", :tc1, :tc1, :tv, :tc2, "ū")]
            else
              [template("να", :c1, :c1, :v, :c2, "ου"), template("na", :tc1, :tc1, :tv, :tc2, "ū")]
            end
          end

          def _present_second_plural
            _present_second_singular_masculine.zip(["ου", "ū"]).map(&:join)
          end

          def _present_third_plural
            _present_third_singular_masculine.zip(["ου", "ū"]).map(&:join)
          end

          def _preterite_first_singular
            [template("νυ", :c1, :v, :c2, "ετ"), template("nu", :tc1, :tv, :tc2, "et")]
          end

          def _preterite_second_singular_masculine
            [template("νυ", :c1, :v, :c2_lenited, "τα"), template("nu", :tc1, :tv, :tc2_lenited, "ta")]
          end

          def _preterite_second_singular_feminine
            [template("νυ", :c1, :v, :c2_lenited, "σ̄ε"), template("nu", :tc1, :tv, :tc2_lenited, "še")]
          end

          def _preterite_third_singular_masculine
            [template("νυ", :c1, :v, :c2), template("nu", :tc1, :tv, :tc2)]
          end

          def _preterite_third_singular_feminine
            [template("νυ", :c1, :v, :c2, "ω"), template("nu", :tc1, :tv, :tc2, "ā")]
          end

          def _preterite_first_plural
            [template("νυ", :c1, :v, :c2, "νω"), template("nu", :tc1, :tv, :tc2, "nā")]
          end

          def _preterite_second_plural_masculine
            [template("νυ", :c1, :v, :c2_lenited, "τυν"), template("nu", :tc1, :tv, :tc2_lenited, "tun")]
          end

          def _preterite_second_plural_feminine
            [template("νυ", :c1, :v, :c2_lenited, "σ̄ιν"), template("nu", :tc1, :tv, :tc2_lenited, "šin")]
          end

          def _preterite_third_plural
            [template("νυ", :c1, :v, :c2, "ου"), template("nu", :tc1, :tv, :tc2, "ū")]
          end

          def _imperfect_first_singular
            [template("νυ", :c1, "υω'", :c2, "α", :c3_lenited), template("nu", :tc1, "uo", :tc2, "a", :tc3_lenited)]
          end

          def _imperfect_second_singular_masculine
            [template("νυ", :c1, "υω'", :c2, "α", :c3_lenited, "ατ"), template("nu", :tc1, "uo", :tc2, "a", :tc3_lenited, "at")]
          end

          def _imperfect_second_singular_feminine
            [template("νυ", :c1, "υω'", :c2, "α", :c3_lenited, "ας̄"), template("nu", :tc1, "uo", :tc2, "a", :tc3_lenited, "aš")]
          end

          def _imperfect_third_singular_masculine
            if root.tv == "ū"
              [template("νυ", :c1, "ου'α", :c3), template("nu", :tc1, "ū", :tc2, "a", :tc3)]
            else
              [template("νυ", :c1, "ου'", :c2, "α", :c3), template("nu", :tc1, "ū", :tc2, "a", :tc3)]
            end
          end

          def _imperfect_third_singular_feminine
            [template("νυ", :c1, :v, :c2, "ω"), template("nu", :tc1, :tv, :tc2, "ā")]
          end

          def _imperfect_first_plural
            [template("νυ", :c1, "υω'", :c2, "α", :c3_lenited, "αν"), template("nu", :tc1, "uo", :tc2, "a", :tc3_lenited, "an")]
          end

          def _imperfect_second_plural_masculine
            [template("νυ", :c1, "υω'", :c2, "α", :c3_lenited, "τυν"), template("nu", :tc1, "uo", :tc2, "a", :tc3_lenited, "tun")]
          end

          def _imperfect_second_plural_feminine
            [template("νυ", :c1, "υω'", :c2, "α", :c3_lenited, "σ̄ιν"), template("nu", :tc1, "uo", :tc2, "a", :tc3_lenited, "šin")]
          end

          def _imperfect_third_plural
            [template("νυ", :c1, :v, :c2, "ου"), template("nu", :tc1, :tv, :tc2, "ū")]
          end

          def _pf_subjunctive_first_singular
            [template("в̄α", :c1, :c1, :v, :c2), template("va", :tc1, :tc1, :tv, :tc2)]
          end

          def _pf_subjunctive_first_plural
            [template("в̄ανα", :c1, :c1, :v, :c2), template("vana", :tc1, :tc1, :tv, :tc2)]
          end

          def _pf_subjunctive_second
            [template("в̄ατα", :c1, :c1, :v, :c2), template("vata", :tc1, :tc1, :tv, :tc2)]
          end

          def _pf_subjunctive_third
            [template("в̄η", :c1, :c1, :v, :c2), template("vē", :tc1, :tc1, :tv, :tc2)]
          end

          def _impf_subjunctive_first_singular
            _present_first_singular.zip(["α", "a"]).map(&:join)
          end

          def _impf_subjunctive_second_singular_masculine
            _present_second_singular_masculine.zip(["α", "a"]).map(&:join)
          end

          def _impf_subjunctive_second_singular_feminine
            _present_second_singular_masculine.zip(["ια", "iya"]).map(&:join)
          end

          def _impf_subjunctive_third_singular_masculine
            _present_third_singular_masculine.zip(["α", "a"]).map(&:join)
          end

          def _impf_subjunctive_third_singular_feminine
            _present_third_singular_masculine.zip(["ια", "iya"]).map(&:join)
          end

          def _impf_subjunctive_first_plural
            if root.tv == "ā" || root.tv == "ū"
              [template("νι", :c1, :c1, :v, :c2, "υ'α"), template("yi", :tc1, :tc1, :tv, :tc2, "uwa")]
            else
              [template("να", :c1, :c1, :v, :c2, "υ'α"), template("ya", :tc1, :tc1, :tv, :tc2, "uwa")]
            end
          end

          def _impf_subjunctive_second_plural
            _present_second_singular_masculine.zip(["υ'α", "uwa"]).map(&:join)
          end

          def _impf_subjunctive_third_plural
            _present_third_singular_masculine.zip(["υ'α", "uwa"]).map(&:join)
          end

          def _imperative_masculine_singular
            [template("νι", :c1, :v, :c2), template("ni", :tc1, :tv, :tc2)]
          end

          def _imperative_feminine_singular
            [template("νι", :c1, :v, :c2, "ει"), template("ni", :tc1, :tv, :tc2, "ī")]
          end

          def _imperative_plural
            [template("νι", :c1, :v, :c2, "ου"), template("ni", :tc1, :tv, :tc2, "ū")]
          end

          def _infinitive
            [template("μα", :c1, :c1, :v, :c2), template("ma", :tc1, :tc1, :tv, :tc2)]
          end

          def _passive_participle
            [template("να", :c1, :c1, "ι", :c2), template("na", :tc1, :tc1, "i", :tc2)]
          end
        end
      end
    end
  end
end
