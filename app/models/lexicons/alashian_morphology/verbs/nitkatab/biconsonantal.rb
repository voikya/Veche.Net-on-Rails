require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Nitkatab
        module Biconsonantal
          include Nitkatab::Regular

          def subtype
            "Biconsonantanl Root"
          end

          def _present_first_singular
            [template("αττα", :c1, :v, :c2), template("'ətha", :tc1, :tv, :tc2)]
          end

          def _present_second_singular_masculine
            [template("ταττα", :c1, :v, :c2), template("tətha", :tc1, :tv, :tc2)]
          end

          def _present_second_singular_feminine
            [template("ταττα", :c1, :v, :c2, "ει"), template("tətha", :tc1, :tv, :tc2, "ī")]
          end

          def _present_third_singular_masculine
            [template("ιαττα", :c1, :v, :c2), template("yətha", :tc1, :tv, :tc2)]
          end

          def _present_third_singular_feminine
            [template("ιαττα", :c1, :v, :c2, "ει"), template("yətha", :tc1, :tv, :tc2, "ī")]
          end

          def _present_first_plural
            [template("ναττα", :c1, :v, :c2, "ου"), template("nətha", :tc1, :tv, :tc2, "ū")]
          end

          def _present_second_plural
            [template("ταττα", :c1, :v, :c2, "ου"), template("tətha", :tc1, :tv, :tc2, "ū")]
          end

          def _present_third_plural
            [template("ιαττα", :c1, :v, :c2, "ου"), template("yətha", :tc1, :tv, :tc2, "ū")]
          end

          def _preterite_first_singular
            [template("νι", infix, :c1, :v, :c2, "ετ"), template("ni", infix_transliterated, :tc1, :tv, :tc2, "et")]
          end

          def _preterite_second_singular_masculine
            [template("νι", infix, :c1, :v, :c2_lenited, "τα"), template("ni", infix_transliterated, :tc1, :tv, :tc2_lenited, "ta")]
          end

          def _preterite_second_singular_feminine
            [template("νι", infix, :c1, :v, :c2_lenited, "σ̄ε"), template("ni", infix_transliterated, :tc1, :tv, :tc2_lenited, "še")]
          end

          def _preterite_third_singular_masculine
            [template("νι", infix, :c1, :v, :c2), template("ni", infix_transliterated, :tc1, :tv, :tc2)]
          end

          def _preterite_third_singular_feminine
            [template("νι", infix, :c1, :v, :c2, "ω"), template("ni", infix_transliterated, :tc1, :tv, :tc2, "ā")]
          end

          def _preterite_first_plural
            [template("νι", infix, :c1, :v, :c2, "νω"), template("ni", infix_transliterated, :tc1, :tv, :tc2, "nā")]
          end

          def _preterite_second_plural_masculine
            [template("νι", infix, :c1, :v, :c2_lenited, "τυν"), template("ni", infix_transliterated, :tc1, :tv, :tc2_lenited, "tun")]
          end

          def _preterite_second_plural_feminine
            [template("νι", infix, :c1, :v, :c2_lenited, "σ̄ιν"), template("ni", infix_transliterated, :tc1, :tv, :tc2_lenited, "šin")]
          end

          def _preterite_third_plural
            [template("νι", infix, :c1, :v, :c2, "ου"), template("ni", infix_transliterated, :tc1, :tv, :tc2, "ū")]
          end

          def _imperfect_first_singular
            [template("νι", infix, :c1, "ιη", :c2_lenited), template("ni", infix_transliterated, :tc1, "ie", :tc2_lenited)]
          end

          def _imperfect_second_singular_masculine
            [template("νι", infix, :c1, "ιη", :c2_lenited, "ετ"), template("ni", infix_transliterated, :tc1, "ie", :tc2_lenited, "et")]
          end

          def _imperfect_second_singular_feminine
            [template("νι", infix, :c1, "ιη", :c2_lenited, "ες̄"), template("ni", infix_transliterated, :tc1, "ie", :tc2_lenited, "eš")]
          end

          def _imperfect_third_singular_masculine
            [template("νι", infix, :c1, "ιη", :c2), template("ni", infix_transliterated, :tc1, "ie", :tc2)]
          end

          def _imperfect_third_singular_feminine
            [template("νι", infix, :c1, "ιη", :c2, "ω"), template("ni", infix_transliterated, :tc1, "ie", :tc2, "ā")]
          end

          def _imperfect_first_plural
            [template("νι", infix, :c1, "ιη", :c2_lenited, "εν"), template("ni", infix_transliterated, :tc1, "ie", :tc2_lenited, "en")]
          end

          def _imperfect_second_plural_masculine
            [template("νι", infix, :c1, "ιη", :c2_lenited, "τυν"), template("ni", infix_transliterated, :tc1, "ie", :tc2_lenited, "tun")]
          end

          def _imperfect_second_plural_feminine
            [template("νι", infix, :c1, "ιη", :c2_lenited, "σ̄ιν"), template("ni", infix_transliterated, :tc1, "ie", :tc2_lenited, "šin")]
          end

          def _imperfect_third_plural
            [template("νι", infix, :c1, "ιη", :c2, "ου"), template("ni", infix_transliterated, :tc1, "ie", :tc2, "ū")]
          end

          def _pf_subjunctive_first_singular
            [template("в̄ωττα", :c1, :v, :c2), template("vātha", :tc1, :tv, :tc2)]
          end

          def _pf_subjunctive_first_plural
            [template("в̄εναττα", :c1, :v, :c2), template("venətha", :tc1, :tv, :tc2)]
          end

          def _pf_subjunctive_second
            [template("в̄εταττα", :c1, :v, :c2), template("vetətha", :tc1, :tv, :tc2)]
          end

          def _pf_subjunctive_third
            [template("в̄ηττα", :c1, :v, :c2), template("vētha", :tc1, :tv, :tc2)]
          end

          def _impf_subjunctive_first_singular
            [template("αττα", :c1, :v, :c2, "α"), template("'ətha", :tc1, :tv, :tc2, "a")]
          end

          def _impf_subjunctive_second_singular_masculine
            [template("ταττα", :c1, :v, :c2, "α"), template("tətha", :tc1, :tv, :tc2, "a")]
          end

          def _impf_subjunctive_second_singular_feminine
            [template("ταττα", :c1, :v, :c2, "ια"), template("tətha", :tc1, :tv, :tc2, "iya")]
          end

          def _impf_subjunctive_third_singular_masculine
            [template("ιαττα", :c1, :v, :c2, "α"), template("yətha", :tc1, :tv, :tc2, "a")]
          end

          def _impf_subjunctive_third_singular_feminine
            [template("ιαττα", :c1, :v, :c2, "ια"), template("yətha", :tc1, :tv, :tc2, "iya")]
          end

          def _impf_subjunctive_first_plural
            [template("ναττα", :c1, :v, :c2, "υ'α"), template("nətha", :tc1, :tv, :tc2, "uwa")]
          end

          def _impf_subjunctive_second_plural
            [template("ταττα", :c1, :v, :c2, "υ'α"), template("tətha", :tc1, :tv, :tc2, "uwa")]
          end

          def _impf_subjunctive_third_plural
            [template("ιαττα", :c1, :v, :c2, "υ'α"), template("yətha", :tc1, :tv, :tc2, "uwa")]
          end

          def _imperative_masculine_singular
            [template("αττα", :c1, :v, :c2), template("'ətha", :tc1, :tv, :tc2)]
          end

          def _imperative_feminine_singular
            [template("αττα", :c1, :v, :c2, "ει"), template("'ətha", :tc1, :tv, :tc2, "ī")]
          end

          def _imperative_plural
            [template("αττα", :c1, :v, :c2, "ου"), template("'ətha", :tc1, :tv, :tc2, "ū")]
          end

          def _infinitive
            [template("μωττα", :c1, :v, :c2), template("mātha", :tc1, :tv, :tc2)]
          end

          def _active_participle
            [template("ματτα", :c1, :v, :c2), template("mətha", :tc1, :tv, :tc2)]
          end
        end
      end
    end
  end
end
