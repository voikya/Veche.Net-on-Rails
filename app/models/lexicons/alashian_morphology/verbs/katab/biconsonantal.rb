require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Katab
        module Biconsonantal
          include Katab::Regular

          def subtype
            "Biconsonantal Root"
          end

          def _present_first_singular
            [template("α", :c1, :v, :c2), template("'a", :tc1, :tv, :tc2)]
          end

          def _present_second_singular_masculine
            if root.tv == "ā" || root.tv == "ū"
              [template("τι", :c1, :v, :c2), template("ti", :tc1, :tv, :tc2)]
            else
              [template("τα", :c1, :v, :c2), template("ta", :tc1, :tv, :tc2)]
            end
          end

          def _present_second_singular_feminine
            if root.tv == "ā" || root.tv == "ū"
              [template("τι", :c1, :v, :c2, "ει"), template("ti", :tc1, :tv, :tc2, "ī")]
            else
              [template("τα", :c1, :v, :c2, "ει"), template("ta", :tc1, :tv, :tc2, "ī")]
            end
          end

          def _present_third_singular_masculine
            if root.tv == "ā" || root.tv == "ū"
              [template("ι", :c1, :v, :c2), template("yi", :tc1, :tv, :tc2)]
            else
              [template("ια", :c1, :v, :c2), template("ya", :tc1, :tv, :tc2)]
            end
          end

          def _present_third_singular_feminine
            if root.tv == "ā" || root.tv == "ū"
              [template("ι", :c1, :v, :c2, "ει"), template("yi", :tc1, :tv, :tc2, "ī")]
            else
              [template("ια", :c1, :v, :c2, "ει"), template("ya", :tc1, :tv, :tc2, "ī")]
            end
          end

          def _present_first_plural
            if root.tv == "ā" || root.tv == "ū"
              [template("νι", :c1, :v, :c2, "ου"), template("ni", :tc1, :tv, :tc2, "ū")]
            else
              [template("να", :c1, :v, :c2, "ου"), template("na", :tc1, :tv, :tc2, "ū")]
            end
          end

          def _present_second_plural
            if root.tv == "ā" || root.tv == "ū"
              [template("τι", :c1, :v, :c2, "ου"), template("ti", :tc1, :tv, :tc2, "ū")]
            else
              [template("τα", :c1, :v, :c2, "ου"), template("ta", :tc1, :tv, :tc2, "ū")]
            end
          end

          def _present_third_plural
            if root.tv == "ā" || root.tv == "ū"
              [template("ι", :c1, :v, :c2, "ου"), template("yi", :tc1, :tv, :tc2, "ū")]
            else
              [template("ια", :c1, :v, :c2, "ου"), template("ya", :tc1, :tv, :tc2, "ū")]
            end
          end

          def _preterite_first_singular
            [template(:c1, :v, :c2, "ετ"), template(:tc1, :tv, :tc2, "et")]
          end

          def _preterite_second_singular_masculine
            [template(:c1, :v, :c2, "τα"), template(:tc1, :tv, :tc2, "ta")]
          end

          def _preterite_second_singular_feminine
            [template(:c1, :v, :c2, "σ̄ε"), template(:tc1, :tv, :tc2, "še")]
          end

          def _preterite_third_singular_masculine
            [template(:c1, :v, :c2), template(:tc1, :tv, :tc2)]
          end

          def _preterite_third_singular_feminine
            [template(:c1, :v, :c2, "ω"), template(:tc1, :tv, :tc2, "ā")]
          end

          def _preterite_first_plural
            [template(:c1, :v, :c2, "νω"), template(:tc1, :tv, :tc2, "nā")]
          end

          def _preterite_second_plural_masculine
            [template(:c1, :v, :c2, "τυν"), template(:tc1, :tv, :tc2, "tun")]
          end

          def _preterite_second_plural_feminine
            [template(:c1, :v, :c2, "σ̄ιν"), template(:tc1, :tv, :tc2, "šin")]
          end

          def _preterite_third_plural
            [template(:c1, :v, :c2, "ου"), template(:tc1, :tv, :tc2, "ū")]
          end

          def _imperfect_first_singular
            [template(:c1, "ιη'", :c2, "ε", :c3_lenited), template(:tc1, "ie", :tc2, "e", :tc3_lenited)]
          end

          def _imperfect_second_singular_masculine
            [template(:c1, "ιη'", :c2, "ε", :c3_lenited, "ετ"), template(:tc1, "ie", :tc2, "e", :tc3_lenited, "et")]
          end

          def _imperfect_second_singular_feminine
            [template(:c1, "ιη'", :c2, "ε", :c3_lenited, "ες̄"), template(:tc1, "ie", :tc2, "e", :tc3_lenited, "eš")]
          end

          def _imperfect_third_singular_masculine
            [template(:c1, "η'", :c2, "ε", :c3), template(:tc1, "ē", :tc2, "e", :tc3)]
          end

          def _imperfect_third_singular_feminine
            [template(:c1, "η", :c2, "ω"), template(:tc1, "ē", :tc2, "ā")]
          end

          def _imperfect_first_plural
            [template(:c1, "ιη'", :c2, "ε", :c3_lenited, "εν"), template(:tc1, "ie", :tc2, "e", :tc3_lenited, "en")]
          end

          def _imperfect_second_plural_masculine
            [template(:c1, "ιη'", :c2, "ε", :c3_lenited, "τυν"), template(:tc1, "ie", :tc2, "e", :tc3_lenited, "tun")]
          end

          def _imperfect_second_plural_feminine
            [template(:c1, "ιη'", :c2, "ε", :c3_lenited, "σ̄ιν"), template(:tc1, "ie", :tc2, "e", :tc3_lenited, "šin")]
          end

          def _imperfect_third_plural
            [template(:c1, "η", :c2, "ου"), template(:tc1, "ē", :tc2, "ū")]
          end

          def _pf_subjunctive_first_singular
            [template("в̄α", :c1, :v, :c2), template("va", :tc1, :tv, :tc2)]
          end

          def _pf_subjunctive_first_plural
            [template("в̄ανα", :c1, :v, :c2), template("vana", :tc1, :tv, :tc2)]
          end

          def _pf_subjunctive_second
            [template("в̄ατα", :c1, :v, :c2), template("vata", :tc1, :tv, :tc2)]
          end

          def _pf_subjunctive_third
            [template("в̄η", :c1, :v, :c2), template("vē", :tc1, :tv, :tc2)]
          end

          def _impf_subjunctive_first_singular
            [template("α", :c1, :v, :c2, "α"), template("'a", :tc1, :tv, :tc2, "a")]
          end

          def _impf_subjunctive_second_singular_masculine
            if root.tv == "ā" || root.tv == "ū"
              [template("τι", :c1, :v, :c2, "α"), template("ti", :tc1, :tv, :tc2, "a")]
            else
              [template("τα", :c1, :v, :c2, "α"), template("ta", :tc1, :tv, :tc2, "a")]
            end
          end

          def _impf_subjunctive_second_singular_feminine
            if root.tv == "ā" || root.tv == "ū"
              [template("τι", :c1, :v, :c2, "ια"), template("ti", :tc1, :tv, :tc2, "iya")]
            else
              [template("τα", :c1, :v, :c2, "ια"), template("ta", :tc1, :tv, :tc2, "iya")]
            end
          end

          def _impf_subjunctive_third_singular_masculine
            if root.tv == "ā" || root.tv == "ū"
              [template("ι", :c1, :v, :c2, "α"), template("yi", :tc1, :tv, :tc2, "a")]
            else
              [template("ια", :c1, :v, :c2, "α"), template("ya", :tc1, :tv, :tc2, "a")]
            end
          end

          def _impf_subjunctive_third_singular_feminine
            if root.tv == "ā" || root.tv == "ū"
              [template("ι", :c1, :v, :c2, "ια"), template("yi", :tc1, :tv, :tc2, "iya")]
            else
              [template("ια", :c1, :v, :c2, "ια"), template("ya", :tc1, :tv, :tc2, "iya")]
            end
          end

          def _impf_subjunctive_first_plural
            if root.tv == "ā" || root.tv == "ū"
              [template("νι", :c1, :v, :c2, "υ'α"), template("ni", :tc1, :tv, :tc2, "uwa")]
            else
              [template("να", :c1, :v, :c2, "υ'α"), template("na", :tc1, :tv, :tc2, "uwa")]
            end
          end

          def _impf_subjunctive_second_plural
            if root.tv == "ā" || root.tv == "ū"
              [template("τι", :c1, :v, :c2, "υ'α"), template("ti", :tc1, :tv, :tc2, "uwa")]
            else
              [template("τα", :c1, :v, :c2, "υ'α"), template("ta", :tc1, :tv, :tc2, "uwa")]
            end
          end

          def _impf_subjunctive_third_plural
            if root.tv == "ā" || root.tv == "ū"
              [template("ι", :c1, :v, :c2, "υ'α"), template("yi", :tc1, :tv, :tc2, "uwa")]
            else
              [template("ια", :c1, :v, :c2, "υ'α"), template("ya", :tc1, :tv, :tc2, "uwa")]
            end
          end

          def _imperative_masculine_singular
            [template(:c1, :v, :c2), template(:tc1, :tv, :tc2)]
          end

          def _imperative_feminine_singular
            [template(:c1, :v, :c2, "ει"), template(:tc1, :tv, :tc2, "ī")]
          end

          def _imperative_plural
            [template(:c1, :v, :c2, "ου"), template(:tc1, :tv, :tc2, "ū")]
          end

          def _infinitive
            [template(:c1, :v, :c2), template(:tc1, :tv, :tc2)]
          end

          def _active_participle
            [template(:c1, "ου", :c2, "ε", :c3), template(:tc1, "ū", :tc2, "e", :tc3)]
          end

          def _passive_participle
            [template("μα", :c1, :v, :c2), template("ma", :tc1, :tv, :tc2)]
          end
        end
      end
    end
  end
end
