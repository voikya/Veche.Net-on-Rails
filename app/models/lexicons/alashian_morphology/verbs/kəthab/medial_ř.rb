require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Kethab
        module MedialR
          include Kethab::Regular

          def subtype
            "C2 = Ř"
          end

          def _present_first_singular
            [template("υ", :c1, "α", :c2, "ω", :c3), template("'u", :tc1, "ə", :tc2, "ā", :tc3)]
          end

          def _present_second_singular_masculine
            [template("τυ", :c1, "α", :c2, "ω", :c3), template("tu", :tc1, "ə", :tc2, "ā", :tc3)]
          end

          def _present_second_singular_feminine
            [template("τυ", :c1, "α", :c2, "α", :c3, "ει"), template("tu", :tc1, "ə", :tc2, "a", :tc3, "ī")]
          end

          def _present_third_singular_masculine
            [template("ιυ", :c1, "α", :c2, "ω", :c3), template("yu", :tc1, "ə", :tc2, "ā", :tc3)]
          end

          def _present_third_singular_feminine
            [template("ιυ", :c1, "α", :c2, "α", :c3, "ει"), template("yu", :tc1, "ə", :tc2, "a", :tc3, "ī")]
          end

          def _present_first_plural
            [template("νυ", :c1, "α", :c2, "α", :c3, "ου"), template("nu", :tc1, "ə", :tc2, "a", :tc3, "ū")]
          end

          def _present_second_plural
            [template("τυ", :c1, "α", :c2, "α", :c3, "ου"), template("tu", :tc1, "ə", :tc2, "a", :tc3, "ū")]
          end

          def _present_third_plural
            [template("ιυ", :c1, "α", :c2, "α", :c3, "ου"), template("yu", :tc1, "ə", :tc2, "a", :tc3, "ū")]
          end

          def _preterite_first_singular
            [template(:c1, "α", :c2, "ω", :c3, "ετ"), template(:tc1, "ə", :tc2, "ā", :tc3, "et")]
          end

          def _preterite_second_singular_masculine
            [template(:c1, "α", :c2, "ω", :c3_lenited, "τα"), template(:tc1, "ə", :tc2, "ā", :tc3_lenited, "ta")]
          end

          def _preterite_second_singular_feminine
            [template(:c1, "α", :c2, "ω", :c3_lenited, "σ̄ε"), template(:tc1, "ə", :tc2, "ā", :tc3_lenited, "še")]
          end

          def _preterite_third_singular_masculine
            [template(:c1, "α", :c2, "ω", :c3), template(:tc1, "ə", :tc2, "ā", :tc3)]
          end

          def _preterite_third_singular_feminine
            [template(:c1, "α", :c2, "ω", :c3, "ω"), template(:tc1, "ə", :tc2, "ā", :tc3, "ā")]
          end

          def _preterite_first_plural
            [template(:c1, "α", :c2, "ω", :c3, "νω"), template(:tc1, "ə", :tc2, "ā", :tc3, "nā")]
          end

          def _preterite_second_plural_masculine
            [template(:c1, "α", :c2, "ω", :c3_lenited, "τυν"), template(:tc1, "ə", :tc2, "ā", :tc3_lenited, "tun")]
          end

          def _preterite_second_plural_feminine
            [template(:c1, "α", :c2, "ω", :c3_lenited, "σ̄ιν"), template(:tc1, "ə", :tc2, "ā", :tc3_lenited, "šin")]
          end

          def _preterite_third_plural
            [template(:c1, "α", :c2, "ω", :c3, "ου"), template(:tc1, "ə", :tc2, "ā", :tc3, "ū")]
          end

          def _imperfect_first_singular
            [template(:c1, "ου'", :c2, "α", :c3_lenited), template(:tc1, "ū", :tc2, "a", :tc3_lenited)]
          end

          def _imperfect_second_singular_masculine
            [template(:c1, "ου'", :c2, "α", :c3_lenited, "ατ"), template(:tc1, "ū", :tc2, "a", :tc3_lenited, "at")]
          end

          def _imperfect_second_singular_feminine
            [template(:c1, "ου'", :c2, "α", :c3_lenited, "ας̄"), template(:tc1, "ū", :tc2, "a", :tc3_lenited, "aš")]
          end

          def _imperfect_third_singular_masculine
            [template(:c1, "ου'", :c2, "α", :c3), template(:tc1, "ū", :tc2, "a", :tc3)]
          end

          def _imperfect_third_singular_feminine
            [template(:c1, "ου'", :c2, "α", :c3, "ω"), template(:tc1, "ū", :tc2, "a", :tc3, "ā")]
          end

          def _imperfect_first_plural
            [template(:c1, "ου'", :c2, "α", :c3_lenited, "αν"), template(:tc1, "ū", :tc2, "a", :tc3_lenited, "an")]
          end

          def _imperfect_second_plural_masculine
            [template(:c1, "ου'", :c2, "α", :c3_lenited, "τυν"), template(:tc1, "ū", :tc2, "a", :tc3_lenited, "tun")]
          end

          def _imperfect_second_plural_feminine
            [template(:c1, "ου'", :c2, "α", :c3_lenited, "σ̄ιν"), template(:tc1, "ū", :tc2, "a", :tc3_lenited, "šin")]
          end

          def _imperfect_third_plural
            [template(:c1, "ου'", :c2, "α", :c3, "ου"), template(:tc1, "ū", :tc2, "a", :tc3, "ū")]
          end

          def _pf_subjunctive_first_singular
            [template("в̄υ", :c1, "α'", :c2, "α", :c3), template("vu", :tc1, "ə", :tc2, "a", :tc3)]
          end

          def _pf_subjunctive_first_plural
            [template("в̄ανου", :c1, "α'", :c2, "α", :c3), template("vanū", :tc1, "ə", :tc2, "a", :tc3)]
          end

          def _pf_subjunctive_second
            [template("в̄ατου", :c1, "α'", :c2, "α", :c3), template("vatū", :tc1, "ə", :tc2, "a", :tc3)]
          end

          def _pf_subjunctive_third
            [template("в̄η", :c1, "α'", :c2, "α", :c3), template("vē", :tc1, "ə", :tc2, "a", :tc3)]
          end

          def _impf_subjunctive_first_singular
            [template("υ", :c1, "α", :c2, "ω", :c3, "α"), template("'u", :tc1, "ə", :tc2, "ā", :tc3, "a")]
          end

          def _impf_subjunctive_second_singular_masculine
            [template("τυ", :c1, "α", :c2, "ω", :c3, "α"), template("tu", :tc1, "ə", :tc2, "ā", :tc3, "a")]
          end

          def _impf_subjunctive_second_singular_feminine
            [template("τυ", :c1, "α", :c2, "ω", :c3, "ια"), template("tu", :tc1, "ə", :tc2, "ā", :tc3, "iya")]
          end

          def _impf_subjunctive_third_singular_masculine
            [template("ιυ", :c1, "α", :c2, "ω", :c3, "α"), template("yu", :tc1, "ə", :tc2, "ā", :tc3, "a")]
          end

          def _impf_subjunctive_third_singular_feminine
            [template("ιυ", :c1, "α", :c2, "ω", :c3, "ια"), template("yu", :tc1, "ə", :tc2, "ā", :tc3, "iya")]
          end

          def _impf_subjunctive_first_plural
            [template("νυ", :c1, "α", :c2, "ω", :c3, "υ'α"), template("nu", :tc1, "ə", :tc2, "ā", :tc3, "uwa")]
          end

          def _impf_subjunctive_second_plural
            [template("τυ", :c1, "α", :c2, "ω", :c3, "υ'α"), template("tu", :tc1, "ə", :tc2, "ā", :tc3, "uwa")]
          end

          def _impf_subjunctive_third_plural
            [template("ιυ", :c1, "α", :c2, "ω", :c3, "υ'α"), template("yu", :tc1, "ə", :tc2, "ā", :tc3, "uwa")]
          end

          def _infinitive
            [template("μα", :c1, "α", :c2, "ω", :c3), template("ma", :tc1, "ə", :tc2, "ā", :tc3)]
          end

          def _passive_participle
            [template("μυ", :c1, "α'", :c2, "α", :c3), template("mu", :tc1, "ə", :tc2, "a", :tc3)]
          end
        end
      end
    end
  end
end
