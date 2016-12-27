require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Takteb
        module Biconsonantal
          include Takteb::Regular

          def subtype
            "Biconsonantal Root"
          end

          def _present_first_singular
            [template("α", infix, :c1, :v, :c2), template("'a", infix_transliterated, :tc1, :tv, :tc2)]
          end

          def _present_second_singular_masculine
            if root.tv == "ā" || root.tv == "ū"
              [template("τι", infix, :c1, :v, :c2), template("ti", infix_transliterated, :tc1, :tv, :tc2)]
            else
              [template("τα", infix, :c1, :v, :c2), template("ta", infix_transliterated, :tc1, :tv, :tc2)]
            end
          end

          def _present_second_singular_feminine
            if root.tv == "ā" || root.tv == "ū"
              [template("τι", infix, :c1, :v, :c2, "ει"), template("ti", infix_transliterated, :tc1, :tv, :tc2, "ī")]
            else
              [template("τα", infix, :c1, :v, :c2, "ει"), template("ta", infix_transliterated, :tc1, :tv, :tc2, "ī")]
            end
          end

          def _present_third_singular_masculine
            if root.tv == "ā" || root.tv == "ū"
              [template("ι", infix, :c1, :v, :c2), template("yi", infix_transliterated, :tc1, :tv, :tc2)]
            else
              [template("ια", infix, :c1, :v, :c2), template("ya", infix_transliterated, :tc1, :tv, :tc2)]
            end
          end

          def _present_third_singular_feminine
            if root.tv == "ā" || root.tv == "ū"
              [template("ι", infix, :c1, :v, :c2, "ει"), template("yi", infix_transliterated, :tc1, :tv, :tc2, "ī")]
            else
              [template("ια", infix, :c1, :v, :c2, "ει"), template("ya", infix_transliterated, :tc1, :tv, :tc2, "ī")]
            end
          end

          def _present_first_plural
            if root.tv == "ā" || root.tv == "ū"
              [template("νι", infix, :c1, :v, :c2, "ου"), template("ni", infix_transliterated, :tc1, :tv, :tc2, "ū")]
            else
              [template("να", infix, :c1, :v, :c2, "ου"), template("na", infix_transliterated, :tc1, :tv, :tc2, "ū")]
            end
          end

          def _present_second_plural
            if root.tv == "ā" || root.tv == "ū"
              [template("τι", infix, :c1, :v, :c2, "ου"), template("ti", infix_transliterated, :tc1, :tv, :tc2, "ū")]
            else
              [template("τα", infix, :c1, :v, :c2, "ου"), template("ta", infix_transliterated, :tc1, :tv, :tc2, "ū")]
            end
          end

          def _present_third_plural
            if root.tv == "ā" || root.tv == "ū"
              [template("ι", infix, :c1, :v, :c2, "ου"), template("yi", infix_transliterated, :tc1, :tv, :tc2, "ū")]
            else
              [template("ια", infix, :c1, :v, :c2, "ου"), template("ya", infix_transliterated, :tc1, :tv, :tc2, "ū")]
            end
          end

          def _preterite_first_singular
            [template("τα", :c1, :v, :c2, "ετ"), template("ta", :tc1, :tv, :tc2, "et")]
          end

          def _preterite_second_singular_masculine
            [template("τα", :c1, :v, :c2_lenited, "τα"), template("ta", :tc1, :tv, :tc2_lenited, "ta")]
          end

          def _preterite_second_singular_feminine
            [template("τα", :c1, :v, :c2_lenited, "σ̄ε"), template("ta", :tc1, :tv, :tc2_lenited, "še")]
          end

          def _preterite_third_singular_masculine
            [template("τα", :c1, :v, :c2), template("ta", :tc1, :tv, :tc2)]
          end

          def _preterite_third_singular_feminine
            [template("τα", :c1, :v, :c2, "ω"), template("ta", :tc1, :tv, :tc2, "ā")]
          end

          def _preterite_first_plural
            [template("τα", :c1, :v, :c2, "νω"), template("ta", :tc1, :tv, :tc2, "nā")]
          end

          def _preterite_second_plural_masculine
            [template("τα", :c1, :v, :c2_lenited, "τυν"), template("ta", :tc1, :tv, :tc2_lenited, "tun")]
          end

          def _preterite_second_plural_feminine
            [template("τα", :c1, :v, :c2_lenited, "σ̄ιν"), template("ta", :tc1, :tv, :tc2_lenited, "šin")]
          end

          def _preterite_third_plural
            [template("τα", :c1, :v, :c2, "ου"), template("ta", :tc1, :tv, :tc2, "ū")]
          end

          def _imperfect_first_singular
            [template("τα", :c1, "ιη", :c2_lenited), template("ta", :tc1, "ie", :tc2_lenited)]
          end

          def _imperfect_second_singular_masculine
            [template("τα", :c1, "ιη", :c2_lenited, "ετ"), template("ta", :tc1, "ie", :tc2_lenited, "et")]
          end

          def _imperfect_second_singular_feminine
            [template("τα", :c1, "ιη", :c2_lenited, "ες̄"), template("ta", :tc1, "ie", :tc2_lenited, "eš")]
          end

          def _imperfect_third_singular_masculine
            [template("τα", :c1, "ιη", :c2), template("ta", :tc1, "ie", :tc2)]
          end

          def _imperfect_third_singular_feminine
            [template("τα", :c1, "ιη", :c2, "ω"), template("ta", :tc1, "ie", :tc2, "ā")]
          end

          def _imperfect_first_plural
            [template("τα", :c1, "ιη", :c2_lenited, "εν"), template("ta", :tc1, "ie", :tc2_lenited, "en")]
          end

          def _imperfect_second_plural_masculine
            [template("τα", :c1, "ιη", :c2_lenited, "τυν"), template("ta", :tc1, "ie", :tc2_lenited, "tun")]
          end

          def _imperfect_second_plural_feminine
            [template("τα", :c1, "ιη", :c2_lenited, "σ̄ιν"), template("ta", :tc1, "ie", :tc2_lenited, "šin")]
          end

          def _imperfect_third_plural
            [template("τα", :c1, "ιη", :c2, "ου"), template("ta", :tc1, "ie", :tc2, "ū")]
          end

          def _pf_subjunctive_first_singular
            [template("в̄ω", infix, :c1, :v, :c2), template("vā", infix_transliterated, :tc1, :tv, :tc2)]
          end

          def _pf_subjunctive_first_plural
            [template("в̄ανα", infix, :c1, :v, :c2), template("vəna", infix_transliterated, :tc1, :tv, :tc2)]
          end

          def _pf_subjunctive_second
            [template("в̄ατα", infix, :c1, :v, :c2), template("vəta", infix_transliterated, :tc1, :tv, :tc2)]
          end

          def _pf_subjunctive_third
            [template("в̄ει", infix, :c1, :v, :c2), template("vī", infix_transliterated, :tc1, :tv, :tc2)]
          end

          def _impf_subjunctive_first_singular
            [template("α", infix, :c1, :v, :c3, "α"), template("'a", infix_transliterated, :tc1, :tv, :tc2, "a")]
          end

          def _impf_subjunctive_second_singular_masculine
            if root.tv == "ā" || root.tv == "ū"
              [template("τι", infix, :c1, :v, :c3, "α"), template("ti", infix_transliterated, :tc1, :tv, :tc2, "a")]
            else
              [template("τα", infix, :c1, :v, :c3, "α"), template("ta", infix_transliterated, :tc1, :tv, :tc2, "a")]
            end
          end

          def _impf_subjunctive_second_singular_feminine
            if root.tv == "ā" || root.tv == "ū"
              [template("τι", infix, :c1, :v, :c3, "ια"), template("ti", infix_transliterated, :tc1, :tv, :tc2, "iya")]
            else
              [template("τα", infix, :c1, :v, :c3, "ια"), template("ta", infix_transliterated, :tc1, :tv, :tc2, "iya")]
            end
          end

          def _impf_subjunctive_third_singular_masculine
            if root.tv == "ā" || root.tv == "ū"
              [template("ι", infix, :c1, :v, :c3, "α"), template("yi", infix_transliterated, :tc1, :tv, :tc2, "a")]
            else
              [template("ια", infix, :c1, :v, :c3, "α"), template("ya", infix_transliterated, :tc1, :tv, :tc2, "a")]
            end
          end

          def _impf_subjunctive_third_singular_feminine
            if root.tv == "ā" || root.tv == "ū"
              [template("ι", infix, :c1, :v, :c3, "ια"), template("yi", infix_transliterated, :tc1, :tv, :tc2, "iya")]
            else
              [template("ια", infix, :c1, :v, :c3, "ια"), template("ya", infix_transliterated, :tc1, :tv, :tc2, "iya")]
            end
          end

          def _impf_subjunctive_first_plural
            if root.tv == "ā" || root.tv == "ū"
              [template("νι", infix, :c1, :v, :c3, "υ'α"), template("ni", infix_transliterated, :tc1, :tv, :tc2, "uwa")]
            else
              [template("να", infix, :c1, :v, :c3, "υ'α"), template("na", infix_transliterated, :tc1, :tv, :tc2, "uwa")]
            end
          end

          def _impf_subjunctive_second_plural
            if root.tv == "ā" || root.tv == "ū"
              [template("τι", infix, :c1, :v, :c3, "υ'α"), template("ti", infix_transliterated, :tc1, :tv, :tc2, "uwa")]
            else
              [template("τα", infix, :c1, :v, :c3, "υ'α"), template("ta", infix_transliterated, :tc1, :tv, :tc2, "uwa")]
            end
          end

          def _impf_subjunctive_third_plural
            if root.tv == "ā" || root.tv == "ū"
              [template("ι", infix, :c1, :v, :c3, "υ'α"), template("yi", infix_transliterated, :tc1, :tv, :tc2, "uwa")]
            else
              [template("ια", infix, :c1, :v, :c3, "υ'α"), template("ya", infix_transliterated, :tc1, :tv, :tc2, "uwa")]
            end
          end

          def _imperative_masculine_singular
            if root.tv == "ā" || root.tv == "ū"
              [template("τι", :c1, :v, :c2), template("ti", :tc1, :tv, :tc2)]
            else
              [template("τα", :c1, :v, :c2), template("ta", :tc1, :tv, :tc2)]
            end
          end

          def _imperative_feminine_singular
            if root.tv == "ā" || root.tv == "ū"
              [template("τι", :c1, :v, :c2, "ει"), template("ti", :tc1, :tv, :tc2, "ī")]
            else
              [template("τα", :c1, :v, :c2, "ει"), template("ta", :tc1, :tv, :tc2, "ī")]
            end
          end

          def _imperative_plural
            if root.tv == "ā" || root.tv == "ū"
              [template("τι", :c1, :v, :c2, "ου"), template("ti", :tc1, :tv, :tc2, "ū")]
            else
              [template("τα", :c1, :v, :c2, "ου"), template("ta", :tc1, :tv, :tc2, "ū")]
            end
          end

          def _infinitive
            [template("μα", infix, :c1, :v, :c2), template("ma", infix_transliterated, :tc1, :tv, :tc2)]
          end

          def _active_participle
            [template("μι", infix, :c1, :v, :c2), template("mi", infix_transliterated, :tc1, :tv, :tc2)]
          end
        end
      end
    end
  end
end
