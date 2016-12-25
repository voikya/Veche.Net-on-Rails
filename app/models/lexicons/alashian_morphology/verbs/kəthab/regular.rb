module Morphology
  module Alashian
    module Verbs
      module Kethab
        module Regular
          def conjugation
            "Passive Scale II Verb"
          end

          def subtype
            "Regular"
          end

          def _present_first_singular
            [template("υ", :c1, "α", :c2_geminated_or_aspirated, "ω", :c3), template("'u", :tc1, "ə", :tc2_geminated_or_aspirated, "ā", :tc3)]
          end

          def _present_second_singular_masculine
            [template("τυ", :c1, "α", :c2_geminated_or_aspirated, "ω", :c3), template("tu", :tc1, "ə", :tc2_geminated_or_aspirated, "ā", :tc3)]
          end

          def _present_second_singular_feminine
            [template("τυ", :c1, "α", :c2_geminated_or_aspirated, "α", :c3, "ει"), template("tu", :tc1, "ə", :tc2_geminated_or_aspirated, "a", :tc3, "ī")]
          end

          def _present_third_singular_masculine
            [template("ιυ", :c1, "α", :c2_geminated_or_aspirated, "ω", :c3), template("yu", :tc1, "ə", :tc2_geminated_or_aspirated, "ā", :tc3)]
          end

          def _present_third_singular_feminine
            [template("ιυ", :c1, "α", :c2_geminated_or_aspirated, "α", :c3, "ει"), template("yu", :tc1, "ə", :tc2_geminated_or_aspirated, "a", :tc3, "ī")]
          end

          def _present_first_plural
            [template("νυ", :c1, "α", :c2_geminated_or_aspirated, "α", :c3, "ου"), template("nu", :tc1, "ə", :tc2_geminated_or_aspirated, "a", :tc3, "ū")]
          end

          def _present_second_plural
            [template("τυ", :c1, "α", :c2_geminated_or_aspirated, "α", :c3, "ου"), template("tu", :tc1, "ə", :tc2_geminated_or_aspirated, "a", :tc3, "ū")]
          end

          def _present_third_plural
            [template("ιυ", :c1, "α", :c2_geminated_or_aspirated, "α", :c3, "ου"), template("yu", :tc1, "ə", :tc2_geminated_or_aspirated, "a", :tc3, "ū")]
          end

          def _preterite_first_singular
            [template(:c1, "α", :c2_geminated_or_aspirated, "ω", :c3, "ετ"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "ā", :tc3, "et")]
          end

          def _preterite_second_singular_masculine
            [template(:c1, "α", :c2_geminated_or_aspirated, "ω", :c3_lenited, "τα"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "ā", :tc3_lenited, "ta")]
          end

          def _preterite_second_singular_feminine
            [template(:c1, "α", :c2_geminated_or_aspirated, "ω", :c3_lenited, "σ̄ε"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "ā", :tc3_lenited, "še")]
          end

          def _preterite_third_singular_masculine
            [template(:c1, "α", :c2_geminated_or_aspirated, "ω", :c3), template(:tc1, "ə", :tc2_geminated_or_aspirated, "ā", :tc3)]
          end

          def _preterite_third_singular_feminine
            [template(:c1, "α", :c2_geminated_or_aspirated, "ω", :c3, "ω"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "ā", :tc3, "ā")]
          end

          def _preterite_first_plural
            [template(:c1, "α", :c2_geminated_or_aspirated, "ω", :c3, "νω"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "ā", :tc3, "nā")]
          end

          def _preterite_second_plural_masculine
            [template(:c1, "α", :c2_geminated_or_aspirated, "ω", :c3_lenited, "τυν"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "ā", :tc3_lenited, "tun")]
          end

          def _preterite_second_plural_feminine
            [template(:c1, "α", :c2_geminated_or_aspirated, "ω", :c3_lenited, "σ̄ιν"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "ā", :tc3_lenited, "šin")]
          end

          def _preterite_third_plural
            [template(:c1, "α", :c2_geminated_or_aspirated, "ω", :c3, "ου"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "ā", :tc3, "ū")]
          end

          def _imperfect_first_singular
            if root.medial_aspiratable?
              [template(:c1, "α", :c2_geminated_or_aspirated, "α", :c3_lenited), template(:tc1, "ə", :tc2_geminated_or_aspirated, "a", :tc3_lenited)]
            else
              [template(:c1, "υ", :c2_geminated_or_aspirated, "α", :c3_lenited), template(:tc1, "u", :tc2_geminated_or_aspirated, "a", :tc3_lenited)]
            end
          end

          def _imperfect_second_singular_masculine
            if root.medial_aspiratable?
              [template(:c1, "α", :c2_geminated_or_aspirated, "α", :c3_lenited, "ατ"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "a", :tc3_lenited, "at")]
            else
              [template(:c1, "υ", :c2_geminated_or_aspirated, "α", :c3_lenited, "ατ"), template(:tc1, "u", :tc2_geminated_or_aspirated, "a", :tc3_lenited, "at")]
            end
          end

          def _imperfect_second_singular_feminine
            if root.medial_aspiratable?
              [template(:c1, "α", :c2_geminated_or_aspirated, "α", :c3_lenited, "ας̄"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "a", :tc3_lenited, "aš")]
            else
              [template(:c1, "υ", :c2_geminated_or_aspirated, "α", :c3_lenited, "ας̄"), template(:tc1, "u", :tc2_geminated_or_aspirated, "a", :tc3_lenited, "aš")]
            end
          end

          def _imperfect_third_singular_masculine
            if root.medial_aspiratable?
              [template(:c1, "α", :c2_geminated_or_aspirated, "α", :c3), template(:tc1, "ə", :tc2_geminated_or_aspirated, "a", :tc3)]
            else
              [template(:c1, "υ", :c2_geminated_or_aspirated, "α", :c3), template(:tc1, "u", :tc2_geminated_or_aspirated, "a", :tc3)]
            end
          end

          def _imperfect_third_singular_feminine
            if root.medial_aspiratable?
              [template(:c1, "α", :c2_geminated_or_aspirated, "α", :c3, "ω"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "a", :tc3, "ā")]
            else
              [template(:c1, "υ", :c2_geminated_or_aspirated, "α", :c3, "ω"), template(:tc1, "u", :tc2_geminated_or_aspirated, "a", :tc3, "ā")]
            end
          end

          def _imperfect_first_plural
            if root.medial_aspiratable?
              [template(:c1, "α", :c2_geminated_or_aspirated, "α", :c3_lenited, "αν"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "a", :tc3_lenited, "an")]
            else
              [template(:c1, "υ", :c2_geminated_or_aspirated, "α", :c3_lenited, "αν"), template(:tc1, "u", :tc2_geminated_or_aspirated, "a", :tc3_lenited, "an")]
            end
          end

          def _imperfect_second_plural_masculine
            if root.medial_aspiratable?
              [template(:c1, "α", :c2_geminated_or_aspirated, "α", :c3_lenited, "τυν"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "a", :tc3_lenited, "tun")]
            else
              [template(:c1, "υ", :c2_geminated_or_aspirated, "α", :c3_lenited, "τυν"), template(:tc1, "u", :tc2_geminated_or_aspirated, "a", :tc3_lenited, "tun")]
            end
          end

          def _imperfect_second_plural_feminine
            if root.medial_aspiratable?
              [template(:c1, "α", :c2_geminated_or_aspirated, "α", :c3_lenited, "σ̄ιν"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "a", :tc3_lenited, "šin")]
            else
              [template(:c1, "υ", :c2_geminated_or_aspirated, "α", :c3_lenited, "σ̄ιν"), template(:tc1, "u", :tc2_geminated_or_aspirated, "a", :tc3_lenited, "šin")]
            end
          end

          def _imperfect_third_plural
            if root.medial_aspiratable?
              [template(:c1, "α", :c2_geminated_or_aspirated, "α", :c3, "ου"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "a", :tc3, "ū")]
            else
              [template(:c1, "υ", :c2_geminated_or_aspirated, "α", :c3, "ου"), template(:tc1, "u", :tc2_geminated_or_aspirated, "a", :tc3, "ū")]
            end
          end

          def _pf_subjunctive_first_singular
            [template("в̄υ", :c1, "α", :c2_geminated_or_aspirated, "α", :c3), template("vu", :tc1, "ə", :tc2_geminated_or_aspirated, "a", :tc3)]
          end

          def _pf_subjunctive_first_plural
            [template("в̄ανου", :c1, "α", :c2_geminated_or_aspirated, "α", :c3), template("vanū", :tc1, "ə", :tc2_geminated_or_aspirated, "a", :tc3)]
          end

          def _pf_subjunctive_second
            [template("в̄ατου", :c1, "α", :c2_geminated_or_aspirated, "α", :c3), template("vatū", :tc1, "ə", :tc2_geminated_or_aspirated, "a", :tc3)]
          end

          def _pf_subjunctive_third
            [template("в̄η", :c1, "α", :c2_geminated_or_aspirated, "α", :c3), template("vē", :tc1, "ə", :tc2_geminated_or_aspirated, "a", :tc3)]
          end

          def _impf_subjunctive_first_singular
            [template("υ", :c1, "α", :c2_geminated_or_aspirated, "ω", :c3, "α"), template("'u", :tc1, "ə", :tc2_geminated_or_aspirated, "ā", :tc3, "a")]
          end

          def _impf_subjunctive_second_singular_masculine
            [template("τυ", :c1, "α", :c2_geminated_or_aspirated, "ω", :c3, "α"), template("tu", :tc1, "ə", :tc2_geminated_or_aspirated, "ā", :tc3, "a")]
          end

          def _impf_subjunctive_second_singular_feminine
            [template("τυ", :c1, "α", :c2_geminated_or_aspirated, "ω", :c3, "ια"), template("tu", :tc1, "ə", :tc2_geminated_or_aspirated, "ā", :tc3, "iya")]
          end

          def _impf_subjunctive_third_singular_masculine
            [template("ιυ", :c1, "α", :c2_geminated_or_aspirated, "ω", :c3, "α"), template("yu", :tc1, "ə", :tc2_geminated_or_aspirated, "ā", :tc3, "a")]
          end

          def _impf_subjunctive_third_singular_feminine
            [template("ιυ", :c1, "α", :c2_geminated_or_aspirated, "ω", :c3, "ια"), template("yu", :tc1, "ə", :tc2_geminated_or_aspirated, "ā", :tc3, "iya")]
          end

          def _impf_subjunctive_first_plural
            [template("νυ", :c1, "α", :c2_geminated_or_aspirated, "ω", :c3, "υ'α"), template("nu", :tc1, "ə", :tc2_geminated_or_aspirated, "ā", :tc3, "uwa")]
          end

          def _impf_subjunctive_second_plural
            [template("τυ", :c1, "α", :c2_geminated_or_aspirated, "ω", :c3, "υ'α"), template("tu", :tc1, "ə", :tc2_geminated_or_aspirated, "ā", :tc3, "uwa")]
          end

          def _impf_subjunctive_third_plural
            [template("ιυ", :c1, "α", :c2_geminated_or_aspirated, "ω", :c3, "υ'α"), template("yu", :tc1, "ə", :tc2_geminated_or_aspirated, "ā", :tc3, "uwa")]
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

          def _infinitive
            [template("μα", :c1, "α", :c2_geminated_or_aspirated, "ω", :c3), template("ma", :tc1, "ə", :tc2_geminated_or_aspirated, "ā", :tc3)]
          end

          def _passive_participle
            [template("μυ", :c1, "α", :c2_geminated_or_aspirated, "α", :c3), template("mu", :tc1, "ə", :tc2_geminated_or_aspirated, "a", :tc3)]
          end
        end
      end
    end
  end
end
