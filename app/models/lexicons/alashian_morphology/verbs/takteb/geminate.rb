require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Takteb
        module Geminate
          include Takteb::Regular

          def subtype
            "Geminated Root"
          end

          def _present_first_singular
            [template("α", infix, :c1, "α", :c2, "ω", :c3), template("'a", infix_transliterated, :tc1, "a", :tc2, "ā", :tc3)]
          end

          def _present_second_singular_masculine
            [template("τι", infix, :c1, "α", :c2, "ω", :c3), template("ti", infix_transliterated, :tc1, "a", :tc2, "ā", :tc3)]
          end

          def _present_second_singular_feminine
            [template("τι", infix, :c1, "α", :c2, :c3, "ει"), template("ti", infix_transliterated, :tc1, "a", :tc2, :tc3, "ī")]
          end

          def _present_third_singular_masculine
            [template("ι", infix, :c1, "α", :c2, "ω", :c3), template("yi", infix_transliterated, :tc1, "a", :tc2, "ā", :tc3)]
          end

          def _present_third_singular_feminine
            [template("ι", infix, :c1, "α", :c2, :c3, "ει"), template("yi", infix_transliterated, :tc1, "a", :tc2, :tc3, "ī")]
          end

          def _present_first_plural
            [template("νι", infix, :c1, "α", :c2, :c3, "ου"), template("ni", infix_transliterated, :tc1, "a", :tc2, :tc3, "ū")]
          end

          def _present_second_plural
            [template("τι", infix, :c1, "α", :c2, :c3, "ου"), template("ti", infix_transliterated, :tc1, "a", :tc2, :tc3, "ū")]
          end

          def _present_third_plural
            [template("ι", infix, :c1, "α", :c2, :c3, "ου"), template("yi", infix_transliterated, :tc1, "a", :tc2, :tc3, "ū")]
          end

          def _preterite_first_singular
            [template("τα", :c1, "η", :c2, :c3, "ετ"), template("ta", :tc1, "ē", :tc2, :tc3, "et")]
          end

          def _preterite_second_singular_masculine
            [template("τα", :c1, "η", :c2_lenited, "τα"), template("ta", :tc1, "ē", :tc2_lenited, "ta")]
          end

          def _preterite_second_singular_feminine
            [template("τα", :c1, "η", :c2_lenited, "σ̄ε"), template("ta", :tc1, "ē", :tc2_lenited, "še")]
          end

          def _preterite_third_singular_masculine
            [template("τα", :c1, "η", :c2), template("ta", :tc1, "ē", :tc2)]
          end

          def _preterite_third_singular_feminine
            [template("τα", :c1, "η", :c2, :c3, "ω"), template("ta", :tc1, "ē", :tc2, :tc3, "ā")]
          end

          def _preterite_first_plural
            [template("τα", :c1, "η", :c2, "νω"), template("ta", :tc1, "ē", :tc2, "nā")]
          end

          def _preterite_second_plural_masculine
            [template("τα", :c1, "η", :c2_lenited, "τυν"), template("ta", :tc1, "ē", :tc2_lenited, "tun")]
          end

          def _preterite_second_plural_feminine
            [template("τα", :c1, "η", :c2_lenited, "σ̄ιν"), template("ta", :tc1, :tc2, "ē", :tc2_lenited, "šin")]
          end

          def _preterite_third_plural
            [template("τα", :c1, "η", :c2, :c3, "ου"), template("ta", :tc1, "ē", :tc2, :tc3, "ū")]
          end

          def _imperfect_first_singular
            [template("τα", :c1, "ιη", :c2_lenited), template("ta", :tc1, "ie", :tc2_lenited)]
          end

          def _imperfect_second_singular_masculine
            [template("τα", :c1, "ιη", :c2_lenited, :c3_lenited, "ετ"), template("ta", :tc1, "ie", :tc2_lenited, :tc3_lenited, "et")]
          end

          def _imperfect_second_singular_feminine
            [template("τα", :c1, "ιη", :c2_lenited, :c3_lenited, "ες̄"), template("ta", :tc1, "ie", :tc2_lenited, :tc3_lenited, "eš")]
          end

          def _imperfect_third_singular_masculine
            [template("τα", :c1, "ιη", :c2), template("ta", :tc1, "ie", :tc2)]
          end

          def _imperfect_third_singular_feminine
            [template("τα", :c1, "ιη", :c2, :c3, "ω"), template("ta", :tc1, "ie", :tc2, :tc3, "ā")]
          end

          def _imperfect_first_plural
            [template("τα", :c1, "ιη", :c2_lenited, :c3_lenited, "εν"), template("ta", :tc1, "ie", :tc2_lenited, :tc3_lenited, "en")]
          end

          def _imperfect_second_plural_masculine
            [template("τα", :c1, "ιη", :c2_lenited, "τυν"), template("ta", :tc1, "ie", :tc2_lenited, "tun")]
          end

          def _imperfect_second_plural_feminine
            [template("τα", :c1, "ιη", :c2_lenited, "σ̄ιν"), template("ta", :tc1, "ie", :tc2_lenited, "šin")]
          end

          def _imperfect_third_plural
            [template("τα", :c1, "ιη", :c2, :c3, "ου"), template("ta", :tc1, "ie", :tc2, :tc3, "ū")]
          end

          def _pf_subjunctive_first_singular
            [template("в̄ω", infix, :c1, "α", :c2, "α", :c3), template("vā", infix_transliterated, :tc1, "a", :tc2, "a", :tc3)]
          end

          def _pf_subjunctive_first_plural
            [template("в̄ανα", infix, :c1, "α", :c2, "α", :c3), template("vəna", infix_transliterated, :tc1, "a", :tc2, "a", :tc3)]
          end

          def _pf_subjunctive_second
            [template("в̄ατα", infix, :c1, "α", :c2, "α", :c3), template("vəta", infix_transliterated, :tc1, "a", :tc2, "a", :tc3)]
          end

          def _pf_subjunctive_third
            [template("в̄ει", infix, :c1, "α", :c2, "α", :c3), template("vī", infix_transliterated, :tc1, "a", :tc2, "a", :tc3)]
          end

          def _impf_subjunctive_first_singular
            [template("α", infix, :c1, "α", :c2, :c3, "α"), template("'a", infix_transliterated, :tc1, "a", :tc2, :tc3, "a")]
          end

          def _impf_subjunctive_second_singular_masculine
            [template("τι", infix, :c1, "α", :c2, :c3, "α"), template("ti", infix_transliterated, :tc1, "a", :tc2, :tc3, "a")]
          end

          def _impf_subjunctive_second_singular_feminine
            [template("τι", infix, :c1, "α", :c2, :c3, "ια"), template("ti", infix_transliterated, :tc1, "a", :tc2, :tc3, "iya")]
          end

          def _impf_subjunctive_third_singular_masculine
            [template("ι", infix, :c1, "α", :c2, :c3, "α"), template("yi", infix_transliterated, :tc1, "a", :tc2, :tc3, "a")]
          end

          def _impf_subjunctive_third_singular_feminine
            [template("ι", infix, :c1, "α", :c2, :c3, "ια"), template("yi", infix_transliterated, :tc1, "a", :tc2, :tc3, "iya")]
          end

          def _impf_subjunctive_first_plural
            [template("νι", infix, :c1, "α", :c2, :c3, "υ'α"), template("ni", infix_transliterated, :tc1, "a", :tc2, :tc3, "uwa")]
          end

          def _impf_subjunctive_second_plural
            [template("τι", infix, :c1, "α", :c2, :c3, "υ'α"), template("ti", infix_transliterated, :tc1, "a", :tc2, :tc3, "uwa")]
          end

          def _impf_subjunctive_third_plural
            [template("ι", infix, :c1, "α", :c2, :c3, "υ'α"), template("yi", infix_transliterated, :tc1, "a", :tc2, :tc3, "uwa")]
          end

          def _imperative_masculine_singular
            [template("τι", :c1, "ω", :c2), template("ti", :tc1, "ā", :tc2)]
          end

          def _imperative_feminine_singular
            [template("τι", :c1, "α", :c2, :c3, "ει"), template("ti", :tc1, "a", :tc2, :tc3, "ī")]
          end

          def _imperative_plural
            [template("τι", :c1, "α", :c2, :c3, "ου"), template("ti", :tc1, "a", :tc2, :tc3, "ū")]
          end
        end
      end
    end
  end
end
