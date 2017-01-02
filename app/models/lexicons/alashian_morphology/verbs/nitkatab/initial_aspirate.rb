require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Nitkatab
        module InitialAspirate
          include Nitkatab::Regular

          def subtype
            "C1 = PH/TH/KH/TSH/ČH"
          end

          def _present_first_singular
            [template("αττα", :c1, :c2, "α", :c3), template("'əthə", :tc1, :tc2, "a", :tc3)]
          end

          def _present_second_singular_masculine
            [template("ταττα", :c1, :c2, "α", :c3), template("təthə", :tc1, :tc2, "a", :tc3)]
          end

          def _present_second_singular_feminine
            [template("ταττα", :c1, :c2, "α", :c3, "ει"), template("təthə", :tc1, :tc2, "a", :tc3, "ī")]
          end

          def _present_third_singular_masculine
            [template("ιαττα", :c1, :c2, "α", :c3), template("yəthə", :tc1, :tc2, "a", :tc3)]
          end

          def _present_third_singular_feminine
            [template("ιαττα", :c1, :c2, "α", :c3, "ει"), template("yəthə", :tc1, :tc2, "a", :tc3, "ī")]
          end

          def _present_first_plural
            [template("ναττα", :c1, :c2, "α", :c3, "ου"), template("nəthə", :tc1, :tc2, "a", :tc3, "ū")]
          end

          def _present_second_plural
            [template("ταττα", :c1, :c2, "α", :c3, "ου"), template("təthə", :tc1, :tc2, "a", :tc3, "ū")]
          end

          def _present_third_plural
            [template("ιαττα", :c1, :c2, "α", :c3, "ου"), template("yəthə", :tc1, :tc2, "a", :tc3, "ū")]
          end

          def _preterite_first_singular
            [template("νι", infix, :c1_unaspirated, "α", :c2, "α", :c3, "ετ"), template("ni", infix_transliterated, :tc1_unaspirated, "a", :tc2, "a", :tc3, "et")]
          end

          def _preterite_second_singular_masculine
            [template("νι", infix, :c1_unaspirated, "α", :c2, "α", :c3_lenited, "τα"), template("ni", infix_transliterated, :tc1_unaspirated, "a", :tc2, "a", :tc3_lenited, "ta")]
          end

          def _preterite_second_singular_feminine
            [template("νι", infix, :c1_unaspirated, "α", :c2, "α", :c3_lenited, "σ̄ε"), template("ni", infix_transliterated, :tc1_unaspirated, "a", :tc2, "a", :tc3_lenited, "še")]
          end

          def _preterite_third_singular_masculine
            [template("νι", infix, :c1_unaspirated, "α", :c2, "α", :c3), template("ni", infix_transliterated, :tc1_unaspirated, "a", :tc2, "a", :tc3)]
          end

          def _preterite_third_singular_feminine
            [template("νι", infix, :c1_unaspirated, "α", :c2, "α", :c3, "ω"), template("ni", infix_transliterated, :tc1_unaspirated, "a", :tc2, "a", :tc3, "ā")]
          end

          def _preterite_first_plural
            [template("νι", infix, :c1_unaspirated, "α", :c2, "α", :c3, "νω"), template("ni", infix_transliterated, :tc1_unaspirated, "a", :tc2, "a", :tc3, "nā")]
          end

          def _preterite_second_plural_masculine
            [template("νι", infix, :c1_unaspirated, "α", :c2, "α", :c3_lenited, "τυν"), template("ni", infix_transliterated, :tc1_unaspirated, "a", :tc2, "a", :tc3_lenited, "tun")]
          end

          def _preterite_second_plural_feminine
            [template("νι", infix, :c1_unaspirated, "α", :c2, "α", :c3_lenited, "σ̄ιν"), template("ni", infix_transliterated, :tc1_unaspirated, "a", :tc2, "a", :tc3_lenited, "šin")]
          end

          def _preterite_third_plural
            [template("νι", infix, :c1_unaspirated, "α", :c2, "α", :c3, "ου"), template("ni", infix_transliterated, :tc1_unaspirated, "a", :tc2, "a", :tc3, "ū")]
          end

          def _imperfect_first_singular
            [template("νι", infix, :c1_unaspirated, "ιη", :c2, "ε", :c3_lenited), template("ni", infix_transliterated, :tc1_unaspirated, "ie", :tc2, "e", :tc3_lenited)]
          end

          def _imperfect_second_singular_masculine
            [template("νι", infix, :c1_unaspirated, "ιη", :c2, "ε", :c3_lenited, "ετ"), template("ni", infix_transliterated, :tc1_unaspirated, "ie", :tc2, "e", :tc3_lenited, "et")]
          end

          def _imperfect_second_singular_feminine
            [template("νι", infix, :c1_unaspirated, "ιη", :c2, "ε", :c3_lenited, "ες̄"), template("ni", infix_transliterated, :tc1_unaspirated, "ie", :tc2, "e", :tc3_lenited, "eš")]
          end

          def _imperfect_third_singular_masculine
            [template("νι", infix, :c1_unaspirated, "ιη", :c2, "ε", :c3), template("ni", infix_transliterated, :tc1_unaspirated, "ie", :tc2, "e", :tc3)]
          end

          def _imperfect_third_singular_feminine
            [template("νι", infix, :c1_unaspirated, "ιη", :c2, "ε", :c3, "ω"), template("ni", infix_transliterated, :tc1_unaspirated, "ie", :tc2, "e", :tc3, "ā")]
          end

          def _imperfect_first_plural
            [template("νι", infix, :c1_unaspirated, "ιη", :c2, "ε", :c3_lenited, "εν"), template("ni", infix_transliterated, :tc1_unaspirated, "ie", :tc2, "e", :tc3_lenited, "en")]
          end

          def _imperfect_second_plural_masculine
            [template("νι", infix, :c1_unaspirated, "ιη", :c2, "ε", :c3_lenited, "τυν"), template("ni", infix_transliterated, :tc1_unaspirated, "ie", :tc2, "e", :tc3_lenited, "tun")]
          end

          def _imperfect_second_plural_feminine
            [template("νι", infix, :c1_unaspirated, "ιη", :c2, "ε", :c3_lenited, "σ̄ιν"), template("ni", infix_transliterated, :tc1_unaspirated, "ie", :tc2, "e", :tc3_lenited, "šin")]
          end

          def _imperfect_third_plural
            [template("νι", infix, :c1_unaspirated, "ιη", :c2, "ε", :c3, "ου"), template("ni", infix_transliterated, :tc1_unaspirated, "ie", :tc2, "e", :tc3, "ū")]
          end

          def _pf_subjunctive_first_singular
            [template("в̄ωττα", :c1, :c2, "α", :c3), template("vāthə", :tc1, :tc2, "a", :tc3)]
          end

          def _pf_subjunctive_first_plural
            [template("в̄εναττα", :c1, :c2, "α", :c3), template("venəthə", :tc1, :tc2, "a", :tc3)]
          end

          def _pf_subjunctive_second
            [template("в̄εταττα", :c1, :c2, "α", :c3), template("vetəthə", :tc1, :tc2, "a", :tc3)]
          end

          def _pf_subjunctive_third
            [template("в̄ηττα", :c1, :c2, "α", :c3), template("vēthə", :tc1, :tc2, "a", :tc3)]
          end

          def _impf_subjunctive_first_singular
            [template("αττα", :c1, :c2, "α", :c3, "α"), template("'əthə", :tc1, :tc2, "a", :tc3, "a")]
          end

          def _impf_subjunctive_second_singular_masculine
            [template("ταττα", :c1, :c2, "α", :c3, "α"), template("təthə", :tc1, :tc2, "a", :tc3, "a")]
          end

          def _impf_subjunctive_second_singular_feminine
            [template("ταττα", :c1, :c2, "α", :c3, "ια"), template("təthə", :tc1, :tc2, "a", :tc3, "iya")]
          end

          def _impf_subjunctive_third_singular_masculine
            [template("ιαττα", :c1, :c2, "α", :c3, "α"), template("yəthə", :tc1, :tc2, "a", :tc3, "a")]
          end

          def _impf_subjunctive_third_singular_feminine
            [template("ιαττα", :c1, :c2, "α", :c3, "ια"), template("yəthə", :tc1, :tc2, "a", :tc3, "iya")]
          end

          def _impf_subjunctive_first_plural
            [template("ναττα", :c1, :c2, "α", :c3, "υ'α"), template("nəthə", :tc1, :tc2, "a", :tc3, "uwa")]
          end

          def _impf_subjunctive_second_plural
            [template("ταττα", :c1, :c2, "α", :c3, "υ'α"), template("təthə", :tc1, :tc2, "a", :tc3, "uwa")]
          end

          def _impf_subjunctive_third_plural
            [template("ιαττα", :c1, :c2, "α", :c3, "υ'α"), template("yəthə", :tc1, :tc2, "a", :tc3, "uwa")]
          end

          def _imperative_masculine_singular
            [template("αττα", :c1, :c2, "α", :c3), template("'əthə", :tc1, :tc2, "a", :tc3)]
          end

          def _imperative_feminine_singular
            [template("αττα", :c1, :c2, "α", :c3, "ει"), template("'əthə", :tc1, :tc2, "a", :tc3, "ī")]
          end

          def _imperative_plural
            [template("αττα", :c1, :c2, "α", :c3, "ου"), template("'əthə", :tc1, :tc2, "a", :tc3, "ū")]
          end

          def _infinitive
            [template("μωττα", :c1, :c2, "α", :c3), template("māthə", :tc1, :tc2, "a", :tc3)]
          end

          def _active_participle
            [template("ματτα", :c1, :c2, "ι", :c3), template("məthə", :tc1, :tc2, "i", :tc3)]
          end
        end
      end
    end
  end
end
