module Morphology
  module Alashian
    module Verbs
      module Nuktab
        module Regular
          def conjugation
            "Passive Scale I Verb"
          end

          def subtype
            "Regular"
          end

          def _present_first_singular
            [template("α", :c1, :c1, "υ", :c2, "ω", :c3), template("'a", :tc1, :tc1, "u", :tc2, "ā", :tc3)]
          end

          def _present_second_singular_masculine
            [template("τι", :c1, :c1, "υ", :c2, "ω", :c3), template("ti", :tc1, :tc1, "u", :tc2, "ā", :tc3)]
          end

          def _present_second_singular_feminine
            [template("τι", :c1, :c1, "υ", :c2, "ω", :c3, "ει"), template("ti", :tc1, :tc1, "u", :tc2, "ā", :tc3, "ī")]
          end

          def _present_third_singular_masculine
            [template("ι", :c1, :c1, "υ", :c2, "ω", :c3), template("yi", :tc1, :tc1, "u", :tc2, "ā", :tc3)]
          end

          def _present_third_singular_feminine
            [template("ι", :c1, :c1, "υ", :c2, "ω", :c3, "ει"), template("yi", :tc1, :tc1, "u", :tc2, "ā", :tc3, "ī")]
          end

          def _present_first_plural
            [template("νι", :c1, :c1, "υ", :c2, "ω", :c3, "ου"), template("ni", :tc1, :tc1, "u", :tc2, "ā", :tc3, "ū")]
          end

          def _present_second_plural
            [template("τι", :c1, :c1, "υ", :c2, "ω", :c3, "ου"), template("ti", :tc1, :tc1, "u", :tc2, "ā", :tc3, "ū")]
          end

          def _present_third_plural
            [template("ι", :c1, :c1, "υ", :c2, "ω", :c3, "ου"), template("yi", :tc1, :tc1, "u", :tc2, "ā", :tc3, "ū")]
          end

          def _preterite_first_singular
            if root.medial_plosive?
              [template("νυ", :c1_lenited, :c2, "ω", :c3, "ετ"), template("nu", :tc1_lenited, :tc2, "ā", :tc3, "et")]
            else
              [template("νυ", :c1, :c2, "ω", :c3, "ετ"), template("nu", :tc1, :tc2, "ā", :tc3, "et")]
            end
          end

          def _preterite_second_singular_masculine
            if root.medial_plosive?
              [template("νυ", :c1_lenited, :c2, "ω", :c3_lenited, "τα"), template("nu", :tc1_lenited, :tc2, "ā", :tc3_lenited, "ta")]
            else
              [template("νυ", :c1, :c2, "ω", :c3_lenited, "τα"), template("nu", :tc1, :tc2, "ā", :tc3_lenited, "ta")]
            end
          end

          def _preterite_second_singular_feminine
            if root.medial_plosive?
              [template("νυ", :c1_lenited, :c2, "ω", :c3_lenited, "σ̄ε"), template("nu", :tc1_lenited, :tc2, "ā", :tc3_lenited, "še")]
            else
              [template("νυ", :c1, :c2, "ω", :c3_lenited, "σ̄ε"), template("nu", :tc1, :tc2, "ā", :tc3_lenited, "še")]
            end
          end

          def _preterite_third_singular_masculine
            if root.medial_plosive?
              [template("νυ", :c1_lenited, :c2, "ω", :c3), template("nu", :tc1_lenited, :tc2, "ā", :tc3)]
            else
              [template("νυ", :c1, :c2, "ω", :c3), template("nu", :tc1, :tc2, "ā", :tc3)]
            end
          end

          def _preterite_third_singular_feminine
            if root.medial_plosive?
              [template("νυ", :c1_lenited, :c2, "ω", :c3, "ω"), template("nu", :tc1_lenited, :tc2, "ā", :tc3, "ā")]
            else
              [template("νυ", :c1, :c2, "ω", :c3, "ω"), template("nu", :tc1, :tc2, "ā", :tc3, "ā")]
            end
          end

          def _preterite_first_plural
            if root.medial_plosive?
              [template("νυ", :c1_lenited, :c2, "ω", :c3, "νω"), template("nu", :tc1_lenited, :tc2, "ā", :tc3, "nā")]
            else
              [template("νυ", :c1, :c2, "ω", :c3, "νω"), template("nu", :tc1, :tc2, "ā", :tc3, "nā")]
            end
          end

          def _preterite_second_plural_masculine
            if root.medial_plosive?
              [template("νυ", :c1_lenited, :c2, "ω", :c3_lenited, "τυν"), template("nu", :tc1_lenited, :tc2, "ā", :tc3_lenited, "tun")]
            else
              [template("νυ", :c1, :c2, "ω", :c3_lenited, "τυν"), template("nu", :tc1, :tc2, "ā", :tc3_lenited, "tun")]
            end
          end

          def _preterite_second_plural_feminine
            if root.medial_plosive?
              [template("νυ", :c1_lenited, :c2, "ω", :c3_lenited, "σ̄ιν"), template("nu", :tc1_lenited, :tc2, "ā", :tc3_lenited, "šin")]
            else
              [template("νυ", :c1, :c2, "ω", :c3_lenited, "σ̄ιν"), template("nu", :tc1, :tc2, "ā", :tc3_lenited, "šin")]
            end
          end

          def _preterite_third_plural
            if root.medial_plosive?
              [template("νυ", :c1_lenited, :c2, "ω", :c3, "ου"), template("nu", :tc1_lenited, :tc2, "ā", :tc3, "ū")]
            else
              [template("νυ", :c1, :c2, "ω", :c3, "ου"), template("nu", :tc1, :tc2, "ā", :tc3, "ū")]
            end
          end

          def _imperfect_first_singular
            [template("νυ", :c1, "υω", :c2, "α", :c3_lenited), template("nu", :tc1, "uo", :tc2, "a", :tc3_lenited)]
          end

          def _imperfect_second_singular_masculine
            [template("νυ", :c1, "υω", :c2, "α", :c3_lenited, "ατ"), template("nu", :tc1, "uo", :tc2, "a", :tc3_lenited, "at")]
          end

          def _imperfect_second_singular_feminine
            [template("νυ", :c1, "υω", :c2, "α", :c3_lenited, "ας̄"), template("nu", :tc1, "uo", :tc2, "a", :tc3_lenited, "aš")]
          end

          def _imperfect_third_singular_masculine
            [template("νυ", :c1, "ου", :c2, "α", :c3), template("nu", :tc1, "ū", :tc2, "a", :tc3)]
          end

          def _imperfect_third_singular_feminine
            if root.final_plosive? && !root.geminate_stem?
              [template("νυ", :c1, "ου", :c2_lenited, :c3, "ω"), template("nu", :tc1, "ū", :tc2_lenited, :tc3, "ā")]
            else
              [template("νυ", :c1, "ου", :c2, :c3, "ω"), template("nu", :tc1, "ū", :tc2, :tc3, "ā")]
            end
          end

          def _imperfect_first_plural
            [template("νυ", :c1, "υω", :c2, "α", :c3_lenited, "αν"), template("nu", :tc1, "uo", :tc2, "a", :tc3_lenited, "an")]
          end

          def _imperfect_second_plural_masculine
            [template("νυ", :c1, "υω", :c2, "α", :c3_lenited, "τυν"), template("nu", :tc1, "uo", :tc2, "a", :tc3_lenited, "tun")]
          end

          def _imperfect_second_plural_feminine
            [template("νυ", :c1, "υω", :c2, "α", :c3_lenited, "σ̄ιν"), template("nu", :tc1, "uo", :tc2, "a", :tc3_lenited, "šin")]
          end

          def _imperfect_third_plural
            if root.final_plosive? && !root.geminate_stem?
              [template("νυ", :c1, "ου", :c2_lenited, :c3, "ου"), template("nu", :tc1, "ū", :tc2_lenited, :tc3, "ū")]
            else
              [template("νυ", :c1, "ου", :c2, :c3, "ου"), template("nu", :tc1, "ū", :tc2, :tc3, "ū")]
            end
          end

          def _pf_subjunctive_first_singular
            [template("в̄α", :c1, :c1, "υ", :c2, "ω", :c3), template("va", :tc1, :tc1, "u", :tc2, "ā", :tc3)]
          end

          def _pf_subjunctive_first_plural
            [template("в̄ανα", :c1, :c1, "υ", :c2, "ω", :c3), template("vana", :tc1, :tc1, "u", :tc2, "ā", :tc3)]
          end

          def _pf_subjunctive_second
            [template("в̄ατα", :c1, :c1, "υ", :c2, "ω", :c3), template("vata", :tc1, :tc1, "u", :tc2, "ā", :tc3)]
          end

          def _pf_subjunctive_third
            [template("в̄η", :c1, :c1, "υ", :c2, "ω", :c3), template("vē", :tc1, :tc1, "u", :tc2, "ā", :tc3)]
          end

          def _impf_subjunctive_first_singular
            [template("α", :c1, :c1, "υ", :c2, "ω", :c3, "α"), template("'a", :tc1, :tc1, "u", :tc2, "ā", :tc3, "a")]
          end

          def _impf_subjunctive_second_singular_masculine
            [template("τι", :c1, :c1, "υ", :c2, "ω", :c3, "α"), template("ti", :tc1, :tc1, "u", :tc2, "ā", :tc3, "a")]
          end

          def _impf_subjunctive_second_singular_feminine
            [template("τι", :c1, :c1, "υ", :c2, "ω", :c3, "ια"), template("ti", :tc1, :tc1, "u", :tc2, "ā", :tc3, "iya")]
          end

          def _impf_subjunctive_third_singular_masculine
            [template("ι", :c1, :c1, "υ", :c2, "ω", :c3, "α"), template("yi", :tc1, :tc1, "u", :tc2, "ā", :tc3, "a")]
          end

          def _impf_subjunctive_third_singular_feminine
            [template("ι", :c1, :c1, "υ", :c2, "ω", :c3, "ια"), template("yi", :tc1, :tc1, "u", :tc2, "ā", :tc3, "iya")]
          end

          def _impf_subjunctive_first_plural
            [template("νι", :c1, :c1, "υ", :c2, "ω", :c3, "υ'α"), template("ni", :tc1, :tc1, "u", :tc2, "ā", :tc3, "uwa")]
          end

          def _impf_subjunctive_second_plural
            [template("τι", :c1, :c1, "υ", :c2, "ω", :c3, "υ'α"), template("ti", :tc1, :tc1, "u", :tc2, "ā", :tc3, "uwa")]
          end

          def _impf_subjunctive_third_plural
            [template("ι", :c1, :c1, "υ", :c2, "ω", :c3, "υ'α"), template("yi", :tc1, :tc1, "u", :tc2, "ā", :tc3, "uwa")]
          end

          def _volitive_first_singular
            _present_first_singular.zip(["αννα", "anna"]).map(&:join)
          end

          def _volitive_second_singular_masculine
            _present_second_singular_masculine.zip(["αννα", "anna"]).map(&:join)
          end

          def _volitive_second_singular_feminine
            _present_second_singular_feminine.zip(["να", "na"]).map(&:join)
          end

          def _volitive_third_singular_masculine
            _present_third_singular_masculine.zip(["αννα", "anna"]).map(&:join)
          end

          def _volitive_third_singular_feminine
            _present_third_singular_feminine.zip(["να", "na"]).map(&:join)
          end

          def _volitive_first_plural
            _present_first_plural.zip(["να", "na"]).map(&:join)
          end

          def _volitive_second_plural
            _present_second_plural.zip(["να", "na"]).map(&:join)
          end

          def _volitive_third_plural
            _present_third_plural.zip(["να", "na"]).map(&:join)
          end

          def _imperative_masculine_singular
            [template("νι", :c1, "υ", :c2, "ω", :c3), template("ni", :tc1, "u", :tc2, "ā", :tc3)]
          end

          def _imperative_feminine_singular
            if root.medial_plosive?
              [template("νι", :c1_lenited, :c2, "ω", :c3, "ει"), template("ni", :tc1_lenited, :tc2, "ā", :tc3, "ī")]
            else
              [template("νι", :c1, :c2, "ω", :c3, "ει"), template("ni", :tc1, :tc2, "ā", :tc3, "ī")]
            end
          end

          def _imperative_plural
            if root.medial_plosive?
              [template("νι", :c1_lenited, :c2, "ω", :c3, "ου"), template("ni", :tc1_lenited, :tc2, "ā", :tc3, "ū")]
            else
              [template("νι", :c1, :c2, "ω", :c3, "ου"), template("ni", :tc1, :tc2, "ā", :tc3, "ū")]
            end
          end

          def _precative_masculine_singular
            _imperative_masculine_singular.zip(["να", "na"]).map(&:join)
          end

          def _precative_feminine_singular
            _imperative_feminine_singular.zip(["να", "na"]).map(&:join)
          end

          def _precative_plural
            _imperative_plural.zip(["να", "na"]).map(&:join)
          end

          def _infinitive
            [template("μα", :c1, :c1, "υ", :c2, "ω", :c3), template("ma", :tc1, :tc1, "u", :tc2, "ā", :tc3)]
          end

          def _passive_participle
            if root.medial_plosive?
              [template("να", :c1_lenited, :c2, "ι", :c3), template("na", :tc1_lenited, :tc2, "i", :tc3)]
            else
              [template("να", :c1, :c2, "ι", :c3), template("na", :tc1, :tc2, "i", :tc3)]
            end
          end
        end
      end
    end
  end
end
