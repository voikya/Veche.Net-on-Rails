module Morphology
  module Alashian
    module Verbs
      module Ketheb
        module Regular
          def conjugation
            "Active Scale II Verb"
          end

          def subtype
            "Regular"
          end

          def _present_first_singular
            [template("α", :c1, "α", :c2_geminated_or_aspirated, "α", :c3), template("'a", :tc1, "ə", :tc2_geminated_or_aspirated, "a", :tc3)]
          end

          def _present_second_singular_masculine
            [template("τι", :c1, "α", :c2_geminated_or_aspirated, "α", :c3), template("ti", :tc1, "ə", :tc2_geminated_or_aspirated, "a", :tc3)]
          end

          def _present_second_singular_feminine
            if root.final_plosive?
              [template("τι", :c1, "α", :c2_lenited, :c3, "ει"), template("ti", :tc1, "ə", :tc2_lenited, :tc3, "ī")]
            else
              [template("τι", :c1, "α", :c2, :c3, "ει"), template("ti", :tc1, "ə", :tc2, :tc3, "ī")]
            end
          end

          def _present_third_singular_masculine
            [template("ι", :c1, "α", :c2_geminated_or_aspirated, "α", :c3), template("yi", :tc1, "ə", :tc2_geminated_or_aspirated, "a", :tc3)]
          end

          def _present_third_singular_feminine
            if root.final_plosive?
              [template("ι", :c1, "α", :c2_lenited, :c3, "ει"), template("yi", :tc1, "ə", :tc2_lenited, :tc3, "ī")]
            else
              [template("ι", :c1, "α", :c2, :c3, "ει"), template("yi", :tc1, "ə", :tc2, :tc3, "ī")]
            end
          end

          def _present_first_plural
            if root.final_plosive?
              [template("νι", :c1, "α", :c2_lenited, :c3, "ου"), template("ni", :tc1, "ə", :tc2_lenited, :tc3, "ū")]
            else
              [template("νι", :c1, "α", :c2, :c3, "ου"), template("ni", :tc1, "ə", :tc2, :tc3, "ū")]
            end
          end

          def _present_second_plural
            if root.final_plosive?
              [template("τι", :c1, "α", :c2_lenited, :c3, "ου"), template("ti", :tc1, "ə", :tc2_lenited, :tc3, "ū")]
            else
              [template("τι", :c1, "α", :c2, :c3, "ου"), template("ti", :tc1, "ə", :tc2, :tc3, "ū")]
            end
          end

          def _present_third_plural
            if root.final_plosive?
              [template("ι", :c1, "α", :c2_lenited, :c3, "ου"), template("yi", :tc1, "ə", :tc2_lenited, :tc3, "ū")]
            else
              [template("ι", :c1, "α", :c2, :c3, "ου"), template("yi", :tc1, "ə", :tc2, :tc3, "ū")]
            end
          end

          def _preterite_first_singular
            [template(:c1, "α", :c2_geminated_or_aspirated, "η", :c3, "ετ"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "ē", :tc3, "et")]
          end

          def _preterite_second_singular_masculine
            [template(:c1, "α", :c2_geminated_or_aspirated, "η", :c3_lenited, "τα"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "ē", :tc3_lenited, "ta")]
          end

          def _preterite_second_singular_feminine
            [template(:c1, "α", :c2_geminated_or_aspirated, "η", :c3_lenited, "σ̄ε"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "ē", :tc3_lenited, "še")]
          end

          def _preterite_third_singular_masculine
            [template(:c1, "α", :c2_geminated_or_aspirated, "η", :c3), template(:tc1, "ə", :tc2_geminated_or_aspirated, "ē", :tc3)]
          end

          def _preterite_third_singular_feminine
            if root.medial_aspiratable?
              [template(:c1, "α", :c2_geminated_or_aspirated, "η", :c3, "ω"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "ē", :tc3, "ā")]
            else
              [template(:c1, "ι", :c2_geminated_or_aspirated, "η", :c3, "ω"), template(:tc1, "i", :tc2_geminated_or_aspirated, "ē", :tc3, "ā")]
            end
          end

          def _preterite_first_plural
            [template(:c1, "α", :c2_geminated_or_aspirated, "η", :c3, "νω"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "ē", :tc3, "nā")]
          end

          def _preterite_second_plural_masculine
            [template(:c1, "α", :c2_geminated_or_aspirated, "η", :c3_lenited, "τυν"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "ē", :tc3_lenited, "tun")]
          end

          def _preterite_second_plural_feminine
            [template(:c1, "α", :c2_geminated_or_aspirated, "η", :c3_lenited, "σ̄ιν"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "ē", :tc3_lenited, "šin")]
          end

          def _preterite_third_plural
            if root.medial_aspiratable?
              [template(:c1, "α", :c2_geminated_or_aspirated, "η", :c3, "ου"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "ē", :tc3, "ū")]
            else
              [template(:c1, "ι", :c2_geminated_or_aspirated, "η", :c3, "ου"), template(:tc1, "i", :tc2_geminated_or_aspirated, "ē", :tc3, "ū")]
            end
          end

          def _imperfect_first_singular
            if root.medial_aspiratable?
              [template(:c1, "α", :c2_geminated_or_aspirated, "ε", :c3_lenited), template(:tc1, "ə", :tc2_geminated_or_aspirated, "e", :tc3_lenited)]
            else
              [template(:c1, "ε", :c2_geminated_or_aspirated, "ε", :c3_lenited), template(:tc1, "e", :tc2_geminated_or_aspirated, "e", :tc3_lenited)]
            end
          end

          def _imperfect_second_singular_masculine
            if root.medial_aspiratable?
              [template(:c1, "α", :c2_geminated_or_aspirated, "ε", :c3_lenited, "ετ"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "e", :tc3_lenited, "et")]
            else
              [template(:c1, "ε", :c2_geminated_or_aspirated, "ε", :c3_lenited, "ετ"), template(:tc1, "e", :tc2_geminated_or_aspirated, "e", :tc3_lenited, "et")]
            end
          end

          def _imperfect_second_singular_feminine
            if root.medial_aspiratable?
              [template(:c1, "α", :c2_geminated_or_aspirated, "ε", :c3_lenited, "ες̄"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "e", :tc3_lenited, "eš")]
            else
              [template(:c1, "ε", :c2_geminated_or_aspirated, "ε", :c3_lenited, "ες̄"), template(:tc1, "e", :tc2_geminated_or_aspirated, "e", :tc3_lenited, "eš")]
            end
          end

          def _imperfect_third_singular_masculine
            if root.medial_aspiratable?
              [template(:c1, "α", :c2_geminated_or_aspirated, "ε", :c3), template(:tc1, "ə", :tc2_geminated_or_aspirated, "e", :tc3)]
            else
              [template(:c1, "ε", :c2_geminated_or_aspirated, "ε", :c3), template(:tc1, "e", :tc2_geminated_or_aspirated, "e", :tc3)]
            end
          end

          def _imperfect_third_singular_feminine
            if root.medial_aspiratable?
              [template(:c1, "α", :c2_geminated_or_aspirated, "ε", :c3, "ω"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "e", :tc3, "ā")]
            else
              [template(:c1, "ε", :c2_geminated_or_aspirated, "ε", :c3, "ω"), template(:tc1, "e", :tc2_geminated_or_aspirated, "e", :tc3, "ā")]
            end
          end

          def _imperfect_first_plural
            if root.medial_aspiratable?
              [template(:c1, "α", :c2_geminated_or_aspirated, "ε", :c3_lenited, "εν"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "e", :tc3_lenited, "en")]
            else
              [template(:c1, "ε", :c2_geminated_or_aspirated, "ε", :c3_lenited, "εν"), template(:tc1, "e", :tc2_geminated_or_aspirated, "e", :tc3_lenited, "en")]
            end
          end

          def _imperfect_second_plural_masculine
            if root.medial_aspiratable?
              [template(:c1, "α", :c2_geminated_or_aspirated, "ε", :c3_lenited, "τυν"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "e", :tc3_lenited, "tun")]
            else
              [template(:c1, "ε", :c2_geminated_or_aspirated, "ε", :c3_lenited, "τυν"), template(:tc1, "e", :tc2_geminated_or_aspirated, "e", :tc3_lenited, "tun")]
            end
          end

          def _imperfect_second_plural_feminine
            if root.medial_aspiratable?
              [template(:c1, "α", :c2_geminated_or_aspirated, "ε", :c3_lenited, "σ̄ιν"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "e", :tc3_lenited, "šin")]
            else
              [template(:c1, "ε", :c2_geminated_or_aspirated, "ε", :c3_lenited, "σ̄ιν"), template(:tc1, "e", :tc2_geminated_or_aspirated, "e", :tc3_lenited, "šin")]
            end
          end

          def _imperfect_third_plural
            if root.medial_aspiratable?
              [template(:c1, "α", :c2_geminated_or_aspirated, "ε", :c3, "ου"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "e", :tc3, "ū")]
            else
              [template(:c1, "ε", :c2_geminated_or_aspirated, "ε", :c3, "ου"), template(:tc1, "e", :tc2_geminated_or_aspirated, "e", :tc3, "ū")]
            end
          end

          def _pf_subjunctive_first_singular
            [template("в̄α", :c1, "α", :c2_geminated_or_aspirated, "ε", :c3), template("va", :tc1, "ə", :tc2_geminated_or_aspirated, "e", :tc3)]
          end

          def _pf_subjunctive_first_plural
            [template("в̄ενει", :c1, "α", :c2_geminated_or_aspirated, "ε", :c3), template("venī", :tc1, "ə", :tc2_geminated_or_aspirated, "e", :tc3)]
          end

          def _pf_subjunctive_second
            [template("в̄ετει", :c1, "α", :c2_geminated_or_aspirated, "ε", :c3), template("vetī", :tc1, "ə", :tc2_geminated_or_aspirated, "e", :tc3)]
          end

          def _pf_subjunctive_third
            [template("в̄η", :c1, "α", :c2_geminated_or_aspirated, "ε", :c3), template("vē", :tc1, "ə", :tc2_geminated_or_aspirated, "e", :tc3)]
          end

          def _impf_subjunctive_first_singular
            [template("α", :c1, "α", :c2_geminated_or_aspirated, "ω", :c3, "α"), template("'a", :tc1, "ə", :tc2_geminated_or_aspirated, "ā", :tc3, "a")]
          end

          def _impf_subjunctive_second_singular_masculine
            [template("τι", :c1, "α", :c2_geminated_or_aspirated, "ω", :c3, "α"), template("ti", :tc1, "ə", :tc2_geminated_or_aspirated, "ā", :tc3, "a")]
          end

          def _impf_subjunctive_second_singular_feminine
            [template("τι", :c1, "α", :c2_geminated_or_aspirated, "ω", :c3, "ια"), template("ti", :tc1, "ə", :tc2_geminated_or_aspirated, "ā", :tc3, "iya")]
          end

          def _impf_subjunctive_third_singular_masculine
            [template("ι", :c1, "α", :c2_geminated_or_aspirated, "ω", :c3, "α"), template("yi", :tc1, "ə", :tc2_geminated_or_aspirated, "ā", :tc3, "a")]
          end

          def _impf_subjunctive_third_singular_feminine
            [template("ι", :c1, "α", :c2_geminated_or_aspirated, "ω", :c3, "ια"), template("yi", :tc1, "ə", :tc2_geminated_or_aspirated, "ā", :tc3, "iya")]
          end

          def _impf_subjunctive_first_plural
            [template("νι", :c1, "α", :c2_geminated_or_aspirated, "ω", :c3, "υ'α"), template("ni", :tc1, "ə", :tc2_geminated_or_aspirated, "ā", :tc3, "uwa")]
          end

          def _impf_subjunctive_second_plural
            [template("τι", :c1, "α", :c2_geminated_or_aspirated, "ω", :c3, "υ'α"), template("ti", :tc1, "ə", :tc2_geminated_or_aspirated, "ā", :tc3, "uwa")]
          end

          def _impf_subjunctive_third_plural
            [template("ι", :c1, "α", :c2_geminated_or_aspirated, "ω", :c3, "υ'α"), template("yi", :tc1, "ə", :tc2_geminated_or_aspirated, "ā", :tc3, "uwa")]
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
            [template(:c1, "α", :c2_geminated_or_aspirated, "η", :c3), template(:tc1, "ə", :tc2_geminated_or_aspirated, "ē", :tc3)]
          end

          def _imperative_feminine_singular
            [template(:c1, "α", :c2_geminated_or_aspirated, "ε", :c3, "ει"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "e", :tc3, "ī")]
          end

          def _imperative_plural
            [template(:c1, "α", :c2_geminated_or_aspirated, "ε", :c3, "ου"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "e", :tc3, "ū")]
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
            [template("μα", :c1, "α", :c2_geminated_or_aspirated, "ου", :c3), template("ma", :tc1, "ə", :tc2_geminated_or_aspirated, "ū", :tc3)]
          end

          def _active_participle
            [template("μυ", :c1, "α", :c2_geminated_or_aspirated, "ι", :c3), template("mu", :tc1, "ə", :tc2_geminated_or_aspirated, "i", :tc3)]
          end
        end
      end
    end
  end
end
