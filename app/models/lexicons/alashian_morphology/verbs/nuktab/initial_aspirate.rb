require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Nuktab
        module InitialAspirate
          include Nuktab::Regular

          def subtype
            "C1 = PH/TH/KH/TSH/ČH"
          end

          def _present_first_singular
            [template("α", :c1, "υ", :c2, "ω", :c3), template("'ə", :tc1, "u", :tc2, "ā", :tc3)]
          end

          def _present_second_singular_masculine
            [template("τα", :c1, "υ", :c2, "ω", :c3), template("tə", :tc1, "u", :tc2, "ā", :tc3)]
          end

          def _present_second_singular_feminine
            [template("τα", :c1, "υ", :c2, "ω", :c3, "ει"), template("tə", :tc1, "u", :tc2, "ā", :tc3, "ī")]
          end

          def _present_third_singular_masculine
            [template("ια", :c1, "υ", :c2, "ω", :c3), template("yə", :tc1, "u", :tc2, "ā", :tc3)]
          end

          def _present_third_singular_feminine
            [template("ια", :c1, "υ", :c2, "ω", :c3, "ει"), template("yə", :tc1, "u", :tc2, "ā", :tc3, "ī")]
          end

          def _present_first_plural
            [template("να", :c1, "υ", :c2, "ω", :c3, "ου"), template("nə", :tc1, "u", :tc2, "ā", :tc3, "ū")]
          end

          def _present_second_plural
            [template("τα", :c1, "υ", :c2, "ω", :c3, "ου"), template("tə", :tc1, "u", :tc2, "ā", :tc3, "ū")]
          end

          def _present_third_plural
            [template("ια", :c1, "υ", :c2, "ω", :c3, "ου"), template("yə", :tc1, "u", :tc2, "ā", :tc3, "ū")]
          end

          def _preterite_first_singular
            [template("να", :c1, :c2, "ω", :c3, "ετ"), template("nə", :tc1, :tc2, "ā", :tc3, "et")]
          end

          def _preterite_second_singular_masculine
            [template("να", :c1, :c2, "ω", :c3_lenited, "τα"), template("nə", :tc1, :tc2, "ā", :tc3_lenited, "ta")]
          end

          def _preterite_second_singular_feminine
            [template("να", :c1, :c2, "ω", :c3_lenited, "σ̄ε"), template("nə", :tc1, :tc2, "ā", :tc3_lenited, "še")]
          end

          def _preterite_third_singular_masculine
            [template("να", :c1, :c2, "ω", :c3), template("nə", :tc1, :tc2, "ā", :tc3)]
          end

          def _preterite_third_singular_feminine
            [template("να", :c1, :c2, "ω", :c3, "ω"), template("nə", :tc1, :tc2, "ā", :tc3, "ā")]
          end

          def _preterite_first_plural
            [template("να", :c1, :c2, "ω", :c3, "νω"), template("nə", :tc1, :tc2, "ā", :tc3, "nā")]
          end

          def _preterite_second_plural_masculine
            [template("να", :c1, :c2, "ω", :c3_lenited, "τυν"), template("nə", :tc1, :tc2, "ā", :tc3_lenited, "tun")]
          end

          def _preterite_second_plural_feminine
            [template("να", :c1, :c2, "ω", :c3_lenited, "σ̄ιν"), template("nə", :tc1, :tc2, "ā", :tc3_lenited, "šin")]
          end

          def _preterite_third_plural
            [template("να", :c1, :c2, "ω", :c3, "ου"), template("nə", :tc1, :tc2, "ā", :tc3, "ū")]
          end

          def _imperfect_first_singular
            [template("να", :c1, "υω", :c2, "α", :c3_lenited), template("nə", :tc1, "uo", :tc2, "a", :tc3_lenited)]
          end

          def _imperfect_second_singular_masculine
            [template("να", :c1, "υω", :c2, "α", :c3_lenited, "ατ"), template("nə", :tc1, "uo", :tc2, "a", :tc3_lenited, "at")]
          end

          def _imperfect_second_singular_feminine
            [template("να", :c1, "υω", :c2, "α", :c3_lenited, "ας̄"), template("nə", :tc1, "uo", :tc2, "a", :tc3_lenited, "aš")]
          end

          def _imperfect_third_singular_masculine
            [template("να", :c1, "ου", :c2, "α", :c3), template("nə", :tc1, "ū", :tc2, "a", :tc3)]
          end

          def _imperfect_third_singular_feminine
            [template("να", :c1, "ου", :c2, :c3, "ω"), template("nə", :tc1, "ū", :tc2, :tc3, "ā")]
          end

          def _imperfect_first_plural
            [template("να", :c1, "υω", :c2, "α", :c3_lenited, "αν"), template("nə", :tc1, "uo", :tc2, "a", :tc3_lenited, "an")]
          end

          def _imperfect_second_plural_masculine
            [template("να", :c1, "υω", :c2, "α", :c3_lenited, "τυν"), template("nə", :tc1, "uo", :tc2, "a", :tc3_lenited, "tun")]
          end

          def _imperfect_second_plural_feminine
            [template("να", :c1, "υω", :c2, "α", :c3_lenited, "σ̄ιν"), template("nə", :tc1, "uo", :tc2, "a", :tc3_lenited, "šin")]
          end

          def _imperfect_third_plural
            [template("να", :c1, "ου", :c2, :c3, "ου"), template("nə", :tc1, "ū", :tc2, :tc3, "ū")]
          end

          def _pf_subjunctive_first_singular
            [template("в̄α", :c1, "υ", :c2, "ω", :c3), template("və", :tc1, "u", :tc2, "ā", :tc3)]
          end

          def _pf_subjunctive_first_plural
            [template("в̄ανα", :c1, "υ", :c2, "ω", :c3), template("vanə", :tc1, "u", :tc2, "ā", :tc3)]
          end

          def _pf_subjunctive_second
            [template("в̄ατα", :c1, "υ", :c2, "ω", :c3), template("vatə", :tc1, "u", :tc2, "ā", :tc3)]
          end

          def _pf_subjunctive_third
            [template("в̄η", :c1, "υ", :c2, "ω", :c3), template("vē", :tc1, "u", :tc2, "ā", :tc3)]
          end

          def _impf_subjunctive_first_singular
            [template("α", :c1, "υ", :c2, "ω", :c3, "α"), template("'ə", :tc1, "u", :tc2, "ā", :tc3, "a")]
          end

          def _impf_subjunctive_second_singular_masculine
            [template("τα", :c1, "υ", :c2, "ω", :c3, "α"), template("tə", :tc1, "u", :tc2, "ā", :tc3, "a")]
          end

          def _impf_subjunctive_second_singular_feminine
            [template("τα", :c1, "υ", :c2, "ω", :c3, "ια"), template("tə", :tc1, "u", :tc2, "ā", :tc3, "iya")]
          end

          def _impf_subjunctive_third_singular_masculine
            [template("ια", :c1, "υ", :c2, "ω", :c3, "α"), template("yə", :tc1, "u", :tc2, "ā", :tc3, "a")]
          end

          def _impf_subjunctive_third_singular_feminine
            [template("ια", :c1, "υ", :c2, "ω", :c3, "ια"), template("yə", :tc1, "u", :tc2, "ā", :tc3, "iya")]
          end

          def _impf_subjunctive_first_plural
            [template("να", :c1, "υ", :c2, "ω", :c3, "υ'α"), template("nə", :tc1, "u", :tc2, "ā", :tc3, "uwa")]
          end

          def _impf_subjunctive_second_plural
            [template("τα", :c1, "υ", :c2, "ω", :c3, "υ'α"), template("tə", :tc1, "u", :tc2, "ā", :tc3, "uwa")]
          end

          def _impf_subjunctive_third_plural
            [template("ια", :c1, "υ", :c2, "ω", :c3, "υ'α"), template("yə", :tc1, "u", :tc2, "ā", :tc3, "uwa")]
          end

          def _imperative_masculine_singular
            [template("να", :c1, "υ", :c2, "ω", :c3), template("nə", :tc1, "u", :tc2, "ā", :tc3)]
          end

          def _imperative_feminine_singular
            [template("να", :c1, :c2, "ω", :c3, "ει"), template("nə", :tc1, :tc2, "ā", :tc3, "ī")]
          end

          def _imperative_plural
            [template("να", :c1, :c2, "ω", :c3, "ου"), template("nə", :tc1, :tc2, "ā", :tc3, "ū")]
          end

          def _infinitive
            [template("μα", :c1, "υ", :c2, "ω", :c3), template("mə", :tc1, "u", :tc2, "ā", :tc3)]
          end

          def _passive_participle
            [template("να", :c1, :c2, "ι", :c3), template("nə", :tc1, :tc2, "i", :tc3)]
          end
        end
      end
    end
  end
end
