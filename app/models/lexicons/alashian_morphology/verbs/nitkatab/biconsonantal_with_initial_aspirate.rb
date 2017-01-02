require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Nitkatab
        module BiconsonantalWithInitialAspirate
          include Nitkatab::Biconsonantal

          def subtype
            "Biconsonantal Root with C1 = PH/TH/KH/TSH/ČH"
          end

          def _present_first_singular
            [template("αττα", :c1, :v, :c2), template("'əthə", :tc1, :tv, :tc2)]
          end

          def _present_second_singular_masculine
            [template("ταττα", :c1, :v, :c2), template("təthə", :tc1, :tv, :tc2)]
          end

          def _present_second_singular_feminine
            [template("ταττα", :c1, :v, :c2, "ει"), template("təthə", :tc1, :tv, :tc2, "ī")]
          end

          def _present_third_singular_masculine
            [template("ιαττα", :c1, :v, :c2), template("yəthə", :tc1, :tv, :tc2)]
          end

          def _present_third_singular_feminine
            [template("ιαττα", :c1, :v, :c2, "ει"), template("yəthə", :tc1, :tv, :tc2, "ī")]
          end

          def _present_first_plural
            [template("ναττα", :c1, :v, :c2, "ου"), template("nəthə", :tc1, :tv, :tc2, "ū")]
          end

          def _present_second_plural
            [template("ταττα", :c1, :v, :c2, "ου"), template("təthə", :tc1, :tv, :tc2, "ū")]
          end

          def _present_third_plural
            [template("ιαττα", :c1, :v, :c2, "ου"), template("yəthə", :tc1, :tv, :tc2, "ū")]
          end

          def _preterite_first_singular
            [template("νι", infix, :c1_unaspirated, :v, :c2, "ετ"), template("ni", infix_transliterated, :tc1_unaspirated, :tv, :tc2, "et")]
          end

          def _preterite_second_singular_masculine
            [template("νι", infix, :c1_unaspirated, :v, :c2_lenited, "τα"), template("ni", infix_transliterated, :tc1_unaspirated, :tv, :tc2_lenited, "ta")]
          end

          def _preterite_second_singular_feminine
            [template("νι", infix, :c1_unaspirated, :v, :c2_lenited, "σ̄ε"), template("ni", infix_transliterated, :tc1_unaspirated, :tv, :tc2_lenited, "še")]
          end

          def _preterite_third_singular_masculine
            [template("νι", infix, :c1_unaspirated, :v, :c2), template("ni", infix_transliterated, :tc1_unaspirated, :tv, :tc2)]
          end

          def _preterite_third_singular_feminine
            [template("νι", infix, :c1_unaspirated, :v, :c2, "ω"), template("ni", infix_transliterated, :tc1_unaspirated, :tv, :tc2, "ā")]
          end

          def _preterite_first_plural
            [template("νι", infix, :c1_unaspirated, :v, :c2, "νω"), template("ni", infix_transliterated, :tc1_unaspirated, :tv, :tc2, "nā")]
          end

          def _preterite_second_plural_masculine
            [template("νι", infix, :c1_unaspirated, :v, :c2_lenited, "τυν"), template("ni", infix_transliterated, :tc1_unaspirated, :tv, :tc2_lenited, "tun")]
          end

          def _preterite_second_plural_feminine
            [template("νι", infix, :c1_unaspirated, :v, :c2_lenited, "σ̄ιν"), template("ni", infix_transliterated, :tc1_unaspirated, :tv, :tc2_lenited, "šin")]
          end

          def _preterite_third_plural
            [template("νι", infix, :c1_unaspirated, :v, :c2, "ου"), template("ni", infix_transliterated, :tc1_unaspirated, :tv, :tc2, "ū")]
          end

          def _imperfect_first_singular
            [template("νι", infix, :c1_unaspirated, "ιη", :c2_lenited), template("ni", infix_transliterated, :tc1_unaspirated, "ie", :tc2_lenited)]
          end

          def _imperfect_second_singular_masculine
            [template("νι", infix, :c1_unaspirated, "ιη", :c2_lenited, "ετ"), template("ni", infix_transliterated, :tc1_unaspirated, "ie", :tc2_lenited, "et")]
          end

          def _imperfect_second_singular_feminine
            [template("νι", infix, :c1_unaspirated, "ιη", :c2_lenited, "ες̄"), template("ni", infix_transliterated, :tc1_unaspirated, "ie", :tc2_lenited, "eš")]
          end

          def _imperfect_third_singular_masculine
            [template("νι", infix, :c1_unaspirated, "ιη", :c2), template("ni", infix_transliterated, :tc1_unaspirated, "ie", :tc2)]
          end

          def _imperfect_third_singular_feminine
            [template("νι", infix, :c1_unaspirated, "ιη", :c2, "ω"), template("ni", infix_transliterated, :tc1_unaspirated, "ie", :tc2, "ā")]
          end

          def _imperfect_first_plural
            [template("νι", infix, :c1_unaspirated, "ιη", :c2_lenited, "εν"), template("ni", infix_transliterated, :tc1_unaspirated, "ie", :tc2_lenited, "en")]
          end

          def _imperfect_second_plural_masculine
            [template("νι", infix, :c1_unaspirated, "ιη", :c2_lenited, "τυν"), template("ni", infix_transliterated, :tc1_unaspirated, "ie", :tc2_lenited, "tun")]
          end

          def _imperfect_second_plural_feminine
            [template("νι", infix, :c1_unaspirated, "ιη", :c2_lenited, "σ̄ιν"), template("ni", infix_transliterated, :tc1_unaspirated, "ie", :tc2_lenited, "šin")]
          end

          def _imperfect_third_plural
            [template("νι", infix, :c1_unaspirated, "ιη", :c2, "ου"), template("ni", infix_transliterated, :tc1_unaspirated, "ie", :tc2, "ū")]
          end

          def _pf_subjunctive_first_singular
            [template("в̄ωττα", :c1, :v, :c2), template("vāthə", :tc1, :tv, :tc2)]
          end

          def _pf_subjunctive_first_plural
            [template("в̄εναττα", :c1, :v, :c2), template("venəthə", :tc1, :tv, :tc2)]
          end

          def _pf_subjunctive_second
            [template("в̄εταττα", :c1, :v, :c2), template("vetəthə", :tc1, :tv, :tc2)]
          end

          def _pf_subjunctive_third
            [template("в̄ηττα", :c1, :v, :c2), template("vēthə", :tc1, :tv, :tc2)]
          end

          def _impf_subjunctive_first_singular
            [template("αττα", :c1, :v, :c2, "α"), template("'əthə", :tc1, :tv, :tc2, "a")]
          end

          def _impf_subjunctive_second_singular_masculine
            [template("ταττα", :c1, :v, :c2, "α"), template("təthə", :tc1, :tv, :tc2, "a")]
          end

          def _impf_subjunctive_second_singular_feminine
            [template("ταττα", :c1, :v, :c2, "ια"), template("təthə", :tc1, :tv, :tc2, "iya")]
          end

          def _impf_subjunctive_third_singular_masculine
            [template("ιαττα", :c1, :v, :c2, "α"), template("yəthə", :tc1, :tv, :tc2, "a")]
          end

          def _impf_subjunctive_third_singular_feminine
            [template("ιαττα", :c1, :v, :c2, "ια"), template("yəthə", :tc1, :tv, :tc2, "iya")]
          end

          def _impf_subjunctive_first_plural
            [template("ναττα", :c1, :v, :c2, "υ'α"), template("nəthə", :tc1, :tv, :tc2, "uwa")]
          end

          def _impf_subjunctive_second_plural
            [template("ταττα", :c1, :v, :c2, "υ'α"), template("təthə", :tc1, :tv, :tc2, "uwa")]
          end

          def _impf_subjunctive_third_plural
            [template("ιαττα", :c1, :v, :c2, "υ'α"), template("yəthə", :tc1, :tv, :tc2, "uwa")]
          end

          def _imperative_masculine_singular
            [template("αττα", :c1, :v, :c2), template("'əthə", :tc1, :tv, :tc2)]
          end

          def _imperative_feminine_singular
            [template("αττα", :c1, :v, :c2, "ει"), template("'əthə", :tc1, :tv, :tc2, "ī")]
          end

          def _imperative_plural
            [template("αττα", :c1, :v, :c2, "ου"), template("'əthə", :tc1, :tv, :tc2, "ū")]
          end

          def _infinitive
            [template("μωττα", :c1, :v, :c2), template("māthə", :tc1, :tv, :tc2)]
          end

          def _active_participle
            [template("ματτα", :c1, :v, :c2), template("məthə", :tc1, :tv, :tc2)]
          end
        end
      end
    end
  end
end
