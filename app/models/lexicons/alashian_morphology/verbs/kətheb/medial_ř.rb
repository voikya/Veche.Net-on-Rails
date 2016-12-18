require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Ketheb
        module MedialR
          include Ketheb::Regular

          def subtype
            "C2 = Ř"
          end

          def _present_first_singular
            [template("α", :c1, "α'", :c2, "α", :c3), template("'a", :tc1, "ə", :tc2, "a", :tc3)]
          end

          def _present_second_singular_masculine
            [template("τι", :c1, "α'", :c2, "α", :c3), template("ti", :tc1, "ə", :tc2, "a", :tc3)]
          end

          def _present_third_singular_masculine
            [template("ι", :c1, "α'", :c2, "α", :c3), template("yi", :tc1, "ə", :tc2, "a", :tc3)]
          end

          def _preterite_first_singular
            [template(:c1, "α", :c2, "η", :c3, "ετ"), template(:tc1, "ə", :tc2, "ē", :tc3, "et")]
          end

          def _preterite_second_singular_masculine
            [template(:c1, "α", :c2, "η", :c3_lenited, "τα"), template(:tc1, "ə", :tc2, "ē", :tc3_lenited, "ta")]
          end

          def _preterite_second_singular_feminine
            [template(:c1, "α", :c2, "η", :c3_lenited, "σ̄ε"), template(:tc1, "ə", :tc2, "ē", :tc3_lenited, "še")]
          end

          def _preterite_third_singular_masculine
            [template(:c1, "α", :c2, "η", :c3), template(:tc1, "ə", :tc2, "ē", :tc3)]
          end

          def _preterite_third_singular_feminine
            [template(:c1, "ε", :c2, "η", :c3, "ω"), template(:tc1, "e", :tc2, "ē", :tc3, "ā")]
          end

          def _preterite_first_plural
            [template(:c1, "α", :c2, "η", :c3, "νω"), template(:tc1, "ə", :tc2, "ē", :tc3, "nā")]
          end

          def _preterite_second_plural_masculine
            [template(:c1, "α", :c2, "η", :c3_lenited, "τυν"), template(:tc1, "ə", :tc2, "ē", :tc3_lenited, "tun")]
          end

          def _preterite_second_plural_feminine
            [template(:c1, "α", :c2, "η", :c3_lenited, "σ̄ιν"), template(:tc1, "ə", :tc2, "ē", :tc3_lenited, "šin")]
          end

          def _preterite_third_plural
            [template(:c1, "ε", :c2, "η", :c3, "ου"), template(:tc1, "e", :tc2, "ē", :tc3, "ū")]
          end

          def _imperfect_first_singular
            [template(:c1, "η", :c2, "ε", :c3_lenited), template(:tc1, "ē", :tc2, "e", :tc3_lenited)]
          end

          def _imperfect_second_singular_masculine
            [template(:c1, "η", :c2, "ε", :c3_lenited, "ετ"), template(:tc1, "ē", :tc2, "e", :tc3_lenited, "et")]
          end

          def _imperfect_second_singular_feminine
            [template(:c1, "η", :c2, "ε", :c3_lenited, "ες̄"), template(:tc1, "ē", :tc2, "e", :tc3_lenited, "eš")]
          end

          def _imperfect_third_singular_masculine
            [template(:c1, "η", :c2, "ε", :c3), template(:tc1, "ē", :tc2, "e", :tc3)]
          end

          def _imperfect_third_singular_feminine
            [template(:c1, "η", :c2, "ε", :c3, "ω"), template(:tc1, "ē", :tc2, "e", :tc3, "ā")]
          end

          def _imperfect_first_plural
            [template(:c1, "η", :c2, "ε", :c3_lenited, "εν"), template(:tc1, "ē", :tc2, "e", :tc3_lenited, "en")]
          end

          def _imperfect_second_plural_masculine
            [template(:c1, "η", :c2, "ε", :c3_lenited, "τυν"), template(:tc1, "ē", :tc2, "e", :tc3_lenited, "tun")]
          end

          def _imperfect_second_plural_feminine
            [template(:c1, "η", :c2, "ε", :c3_lenited, "σ̄ιν"), template(:tc1, "ē", :tc2, "e", :tc3_lenited, "šin")]
          end

          def _imperfect_third_plural
            [template(:c1, "η", :c2, "ε", :c3, "ου"), template(:tc1, "ē", :tc2, "e", :tc3, "ū")]
          end

          def _pf_subjunctive_first_singular
            [template("в̄α", :c1, "α'", :c2, "ε", :c3), template("va", :tc1, "ə", :tc2, "e", :tc3)]
          end

          def _pf_subjunctive_first_plural
            [template("в̄ενει", :c1, "α'", :c2, "ε", :c3), template("venī", :tc1, "ə", :tc2, "e", :tc3)]
          end

          def _pf_subjunctive_second
            [template("в̄ετει", :c1, "α'", :c2, "ε", :c3), template("vetī", :tc1, "ə", :tc2, "e", :tc3)]
          end

          def _pf_subjunctive_third
            [template("в̄η", :c1, "α'", :c2, "ε", :c3), template("vē", :tc1, "ə", :tc2, "e", :tc3)]
          end

          def _impf_subjunctive_first_singular
            [template("α", :c1, "α", :c2, "ω", :c3, "α"), template("'a", :tc1, "ə", :tc2, "ā", :tc3, "a")]
          end

          def _impf_subjunctive_second_singular_masculine
            [template("τι", :c1, "α", :c2, "ω", :c3, "α"), template("ti", :tc1, "ə", :tc2, "ā", :tc3, "a")]
          end

          def _impf_subjunctive_second_singular_feminine
            [template("τι", :c1, "α", :c2, "ω", :c3, "ια"), template("ti", :tc1, "ə", :tc2, "ā", :tc3, "iya")]
          end

          def _impf_subjunctive_third_singular_masculine
            [template("ι", :c1, "α", :c2, "ω", :c3, "α"), template("yi", :tc1, "ə", :tc2, "ā", :tc3, "a")]
          end

          def _impf_subjunctive_third_singular_feminine
            [template("ι", :c1, "α", :c2, "ω", :c3, "ια"), template("yi", :tc1, "ə", :tc2, "ā", :tc3, "iya")]
          end

          def _impf_subjunctive_first_plural
            [template("νι", :c1, "α", :c2, "ω", :c3, "υ'α"), template("ni", :tc1, "ə", :tc2, "ā", :tc3, "uwa")]
          end

          def _impf_subjunctive_second_plural
            [template("τι", :c1, "α", :c2, "ω", :c3, "υ'α"), template("ti", :tc1, "ə", :tc2, "ā", :tc3, "uwa")]
          end

          def _impf_subjunctive_third_plural
            [template("ι", :c1, "α", :c2, "ω", :c3, "υ'α"), template("yi", :tc1, "ə", :tc2, "ā", :tc3, "uwa")]
          end

          def _imperative_masculine_singular
            [template(:c1, "α", :c2, "η", :c3), template(:tc1, "ə", :tc2, "ē", :tc3)]
          end

          def _imperative_feminine_singular
            [template(:c1, "α", :c2, "ε", :c3, "ει"), template(:tc1, "ə", :tc2, "e", :tc3, "ī")]
          end

          def _imperative_plural
            [template(:c1, "α", :c2, "ε", :c3, "ου"), template(:tc1, "ə", :tc2, "e", :tc3, "ū")]
          end

          def _infinitive
            [template("μα", :c1, "α", :c2, "ου", :c3), template("ma", :tc1, "ə", :tc2, "ū", :tc3)]
          end

          def _active_participle
            [template("μυ", :c1, "α", :c2, "ι", :c3), template("mu", :tc1, "ə", :tc2, "i", :tc3)]
          end
        end
      end
    end
  end
end
