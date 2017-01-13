require_relative 'biconsonantal'

module Morphology
  module Alashian
    module Verbs
      module Nuktab
        module BiconsonantalWithInitialAspirate
          include Nuktab::Biconsonantal

          def subtype
            "Biconsonantal Root with C1 = PH/TH/KH/TSH/ČH"
          end

          def _present_first_singular
            [template("α", :c1, :v, :c2), template("'ə", :tc1, :tv, :tc2)]
          end

          def _present_second_singular_masculine
            [template("τα", :c1, :v, :c2), template("tə", :tc1, :tv, :tc2)]
          end

          def _present_second_singular_feminine
            _present_second_singular_masculine.zip(["ει", "ī"]).map(&:join)
          end

          def _present_third_singular_masculine
            [template("ια", :c1, :v, :c2), template("yə", :tc1, :tv, :tc2)]
          end

          def _present_third_singular_feminine
            _present_third_singular_masculine.zip(["ει", "ī"]).map(&:join)
          end

          def _present_first_plural
            [template("να", :c1, :v, :c2, "ου"), template("nə", :tc1, :tv, :tc2, "ū")]
          end

          def _present_second_plural
            _present_second_singular_masculine.zip(["ου", "ū"]).map(&:join)
          end

          def _present_third_plural
            _present_third_singular_masculine.zip(["ου", "ū"]).map(&:join)
          end

          def _preterite_first_singular
            [template("να", :c1, :v, :c2, "ετ"), template("nə", :tc1, :tv, :tc2, "et")]
          end

          def _preterite_second_singular_masculine
            [template("να", :c1, :v, :c2_lenited, "τα"), template("nə", :tc1, :tv, :tc2_lenited, "ta")]
          end

          def _preterite_second_singular_feminine
            [template("να", :c1, :v, :c2_lenited, "σ̄ε"), template("nə", :tc1, :tv, :tc2_lenited, "še")]
          end

          def _preterite_third_singular_masculine
            [template("να", :c1, :v, :c2), template("nə", :tc1, :tv, :tc2)]
          end

          def _preterite_third_singular_feminine
            [template("να", :c1, :v, :c2, "ω"), template("nə", :tc1, :tv, :tc2, "ā")]
          end

          def _preterite_first_plural
            [template("να", :c1, :v, :c2, "νω"), template("nə", :tc1, :tv, :tc2, "nā")]
          end

          def _preterite_second_plural_masculine
            [template("να", :c1, :v, :c2_lenited, "τυν"), template("nə", :tc1, :tv, :tc2_lenited, "tun")]
          end

          def _preterite_second_plural_feminine
            [template("να", :c1, :v, :c2_lenited, "σ̄ιν"), template("nə", :tc1, :tv, :tc2_lenited, "šin")]
          end

          def _preterite_third_plural
            [template("να", :c1, :v, :c2, "ου"), template("nə", :tc1, :tv, :tc2, "ū")]
          end

          def _imperfect_first_singular
            [template("να", :c1, "υω'", :c2, "α", :c3_lenited), template("nə", :tc1, "uo", :tc2, "a", :tc3_lenited)]
          end

          def _imperfect_second_singular_masculine
            [template("να", :c1, "υω'", :c2, "α", :c3_lenited, "ατ"), template("nə", :tc1, "uo", :tc2, "a", :tc3_lenited, "at")]
          end

          def _imperfect_second_singular_feminine
            [template("να", :c1, "υω'", :c2, "α", :c3_lenited, "ας̄"), template("nə", :tc1, "uo", :tc2, "a", :tc3_lenited, "aš")]
          end

          def _imperfect_third_singular_masculine
            if root.tv == "ū"
              [template("να", :c1, "ου'α", :c3), template("nə", :tc1, "ū", :tc2, "a", :tc3)]
            else
              [template("να", :c1, "ου'", :c2, "α", :c3), template("nə", :tc1, "ū", :tc2, "a", :tc3)]
            end
          end

          def _imperfect_third_singular_feminine
            [template("να", :c1, :v, :c2, "ω"), template("nə", :tc1, :tv, :tc2, "ā")]
          end

          def _imperfect_first_plural
            [template("να", :c1, "υω'", :c2, "α", :c3_lenited, "αν"), template("nə", :tc1, "uo", :tc2, "a", :tc3_lenited, "an")]
          end

          def _imperfect_second_plural_masculine
            [template("να", :c1, "υω'", :c2, "α", :c3_lenited, "τυν"), template("nə", :tc1, "uo", :tc2, "a", :tc3_lenited, "tun")]
          end

          def _imperfect_second_plural_feminine
            [template("να", :c1, "υω'", :c2, "α", :c3_lenited, "σ̄ιν"), template("nə", :tc1, "uo", :tc2, "a", :tc3_lenited, "šin")]
          end

          def _imperfect_third_plural
            [template("να", :c1, :v, :c2, "ου"), template("nə", :tc1, :tv, :tc2, "ū")]
          end

          def _pf_subjunctive_first_singular
            [template("в̄α", :c1, :v, :c2), template("və", :tc1, :tv, :tc2)]
          end

          def _pf_subjunctive_first_plural
            [template("в̄ανα", :c1, :v, :c2), template("vanə", :tc1, :tv, :tc2)]
          end

          def _pf_subjunctive_second
            [template("в̄ατα", :c1, :v, :c2), template("vatə", :tc1, :tv, :tc2)]
          end

          def _pf_subjunctive_third
            [template("в̄η", :c1, :v, :c2), template("vē", :tc1, :tv, :tc2)]
          end

          def _imperative_masculine_singular
            [template("να", :c1, :v, :c2), template("nə", :tc1, :tv, :tc2)]
          end

          def _imperative_feminine_singular
            [template("να", :c1, :v, :c2, "ει"), template("nə", :tc1, :tv, :tc2, "ī")]
          end

          def _imperative_plural
            [template("να", :c1, :v, :c2, "ου"), template("nə", :tc1, :tv, :tc2, "ū")]
          end

          def _infinitive
            [template("μα", :c1, :v, :c2), template("mə", :tc1, :tv, :tc2)]
          end

          def _passive_participle
            [template("να", :c1, "ι", :c2), template("nə", :tc1, "i", :tc2)]
          end
        end
      end
    end
  end
end
