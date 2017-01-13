require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Nuktab
        module InitialY
          include Nuktab::Regular

          def subtype
            "C1 = Y"
          end

          def _present_second_singular_masculine
            [template("τ", :c1, :c1, "υ", :c2, "ω", :c3), template("ti", :tc1, :tc1, "u", :tc2, "ā", :tc3)]
          end

          def _present_second_singular_feminine
            [template("τ", :c1, :c1, "υ", :c2, "ω", :c3, "ει"), template("ti", :tc1, :tc1, "u", :tc2, "ā", :tc3, "ī")]
          end

          def _present_first_plural
            [template("ν", :c1, :c1, "υ", :c2, "ω", :c3, "ου"), template("ni", :tc1, :tc1, "u", :tc2, "ā", :tc3, "ū")]
          end

          def _present_second_plural
            [template("τ", :c1, :c1, "υ", :c2, "ω", :c3, "ου"), template("ti", :tc1, :tc1, "u", :tc2, "ā", :tc3, "ū")]
          end

          def _preterite_first_singular
            [template("νου", :c2, "ω", :c3, "ετ"), template("nū", :tc2, "ā", :tc3, "et")]
          end

          def _preterite_second_singular_masculine
            [template("νου", :c2, "ω", :c3_lenited, "τα"), template("nū", :tc2, "ā", :tc3_lenited, "ta")]
          end

          def _preterite_second_singular_feminine
            [template("νου", :c2, "ω", :c3_lenited, "σ̄ε"), template("nū", :tc2, "ā", :tc3_lenited, "še")]
          end

          def _preterite_third_singular_masculine
            [template("νου", :c2, "ω", :c3), template("nū", :tc2, "ā", :tc3)]
          end

          def _preterite_third_singular_feminine
            [template("νου", :c2, "ω", :c3, "ω"), template("nū", :tc2, "ā", :tc3, "ā")]
          end

          def _preterite_first_plural
            [template("νου", :c2, "ω", :c3, "νω"), template("nū", :tc2, "ā", :tc3, "nā")]
          end

          def _preterite_second_plural_masculine
            [template("νου", :c2, "ω", :c3_lenited, "τυν"), template("nū", :tc2, "ā", :tc3_lenited, "tun")]
          end

          def _preterite_second_plural_feminine
            [template("νου", :c2, "ω", :c3_lenited, "σ̄ιν"), template("nū", :tc2, "ā", :tc3_lenited, "šin")]
          end

          def _preterite_third_plural
            [template("νου", :c2, "ω", :c3, "ου"), template("nū", :tc2, "ā", :tc3, "ū")]
          end

          def _imperfect_first_singular
            [template("νιου", :c2, "α", :c3_lenited), template("niyū", :tc2, "a", :tc3_lenited)]
          end

          def _imperfect_second_singular_masculine
            [template("νιου", :c2, "α", :c3_lenited, "ατ"), template("niyū", :tc2, "a", :tc3_lenited, "at")]
          end

          def _imperfect_second_singular_feminine
            [template("νιου", :c2, "α", :c3_lenited, "ας̄"), template("niyū", :tc2, "a", :tc3_lenited, "aš")]
          end

          def _imperfect_third_singular_masculine
            [template("νιου", :c2, "α", :c3), template("niyū", :tc2, "a", :tc3)]
          end

          def _imperfect_third_singular_feminine
            if root.final_plosive? && !root.geminate_stem?
              [template("νιου", :c2_lenited, :c3, "ω"), template("niyū", :tc2_lenited, :tc3, "ā")]
            else
              [template("νιου", :c2, :c3, "ω"), template("niyū", :tc2, :tc3, "ā")]
            end
          end

          def _imperfect_first_plural
            [template("νιου", :c2, "α", :c3_lenited, "αν"), template("niyū", :tc2, "a", :tc3_lenited, "an")]
          end

          def _imperfect_second_plural_masculine
            [template("νιου", :c2, "α", :c3_lenited, "τυν"), template("niyū", :tc2, "a", :tc3_lenited, "tun")]
          end

          def _imperfect_second_plural_feminine
            [template("νιου", :c2, "α", :c3_lenited, "σ̄ιν"), template("niyū", :tc2, "a", :tc3_lenited, "šin")]
          end

          def _imperfect_third_plural
            if root.final_plosive? && !root.geminate_stem?
              [template("νιου", :c2_lenited, :c3, "ου"), template("niyū", :tc2_lenited, :tc3, "ū")]
            else
              [template("νιου", :c2, :c3, "ου"), template("niyū", :tc2, :tc3, "ū")]
            end
          end

          def _impf_subjunctive_second_singular_masculine
            [template("τ", :c1, :c1, "υ", :c2, "ω", :c3, "α"), template("ti", :tc1, :tc1, "u", :tc2, "ā", :tc3, "a")]
          end

          def _impf_subjunctive_second_singular_feminine
            [template("τ", :c1, :c1, "υ", :c2, "ω", :c3, "ια"), template("ti", :tc1, :tc1, "u", :tc2, "ā", :tc3, "iya")]
          end

          def _impf_subjunctive_first_plural
            [template("ν", :c1, :c1, "υ", :c2, "ω", :c3, "υ'α"), template("ni", :tc1, :tc1, "u", :tc2, "ā", :tc3, "uwa")]
          end

          def _impf_subjunctive_second_plural
            [template("τ", :c1, :c1, "υ", :c2, "ω", :c3, "υ'α"), template("ti", :tc1, :tc1, "u", :tc2, "ā", :tc3, "uwa")]
          end

          def _imperative_masculine_singular
            [template("ν", :c1, "υ", :c2, "ω", :c3), template("ni", :tc1, "u", :tc2, "ā", :tc3)]
          end

          def _imperative_feminine_singular
            [template("νει", :c2, "ω", :c3, "ει"), template("nī", :tc2, "ā", :tc3, "ī")]
          end

          def _imperative_plural
            [template("νει", :c2, "ω", :c3, "ου"), template("nī", :tc2, "ā", :tc3, "ū")]
          end

          def _passive_participle
            [template("νη", :c2, "ι", :c3), template("nē", :tc2, "i", :tc3)]
          end
        end
      end
    end
  end
end
