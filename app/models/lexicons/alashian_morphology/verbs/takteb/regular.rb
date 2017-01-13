module Morphology
  module Alashian
    module Verbs
      module Takteb
        module Regular
          def conjugation
            "Scale IV Verb"
          end

          def subtype
            "Regular"
          end

          def _present_first_singular
            [template("α", infix, :c1, "α", :c2, :v, :c3), template("'a", infix_transliterated, :tc1, "a", :tc2, :tv, :tc3)]
          end

          def _present_second_singular_masculine
            if root.tv == "ā"
              [template("τι", infix, :c1, "α", :c2, :v, :c3), template("ti", infix_transliterated, :tc1, "a", :tc2, :tv, :tc3)]
            else
              [template("τα", infix, :c1, "α", :c2, :v, :c3), template("ta", infix_transliterated, :tc1, "a", :tc2, :tv, :tc3)]
            end
          end

          def _present_second_singular_feminine
            if root.tv == "ā"
              [template("τι", infix, :c1, "α", :c2, :short_v, :c3, "ει"), template("ti", infix_transliterated, :tc1, "a", :tc2, :short_tv, :tc3, "ī")]
            else
              [template("τα", infix, :c1, "α", :c2, :short_v, :c3, "ει"), template("ta", infix_transliterated, :tc1, "a", :tc2, :short_tv, :tc3, "ī")]
            end
          end

          def _present_third_singular_masculine
            if root.tv == "ā"
              [template("ι", infix, :c1, "α", :c2, :v, :c3), template("yi", infix_transliterated, :tc1, "a", :tc2, :tv, :tc3)]
            else
              [template("ια", infix, :c1, "α", :c2, :v, :c3), template("ya", infix_transliterated, :tc1, "a", :tc2, :tv, :tc3)]
            end
          end

          def _present_third_singular_feminine
            if root.tv == "ā"
              [template("ι", infix, :c1, "α", :c2, :short_v, :c3, "ει"), template("yi", infix_transliterated, :tc1, "a", :tc2, :short_tv, :tc3, "ī")]
            else
              [template("ια", infix, :c1, "α", :c2, :short_v, :c3, "ει"), template("ya", infix_transliterated, :tc1, "a", :tc2, :short_tv, :tc3, "ī")]
            end
          end

          def _present_first_plural
            if root.tv == "ā"
              [template("νι", infix, :c1, "α", :c2, :short_v, :c3, "ου"), template("ni", infix_transliterated, :tc1, "a", :tc2, :short_tv, :tc3, "ū")]
            else
              [template("να", infix, :c1, "α", :c2, :short_v, :c3, "ου"), template("na", infix_transliterated, :tc1, "a", :tc2, :short_tv, :tc3, "ū")]
            end
          end

          def _present_second_plural
            if root.tv == "ā"
              [template("τι", infix, :c1, "α", :c2, :short_v, :c3, "ου"), template("ti", infix_transliterated, :tc1, "a", :tc2, :short_tv, :tc3, "ū")]
            else
              [template("τα", infix, :c1, "α", :c2, :short_v, :c3, "ου"), template("ta", infix_transliterated, :tc1, "a", :tc2, :short_tv, :tc3, "ū")]
            end
          end

          def _present_third_plural
            if root.tv == "ā"
              [template("ι", infix, :c1, "α", :c2, :short_v, :c3, "ου"), template("yi", infix_transliterated, :tc1, "a", :tc2, :short_tv, :tc3, "ū")]
            else
              [template("ια", infix, :c1, "α", :c2, :short_v, :c3, "ου"), template("ya", infix_transliterated, :tc1, "a", :tc2, :short_tv, :tc3, "ū")]
            end
          end

          def _preterite_first_singular
            if root.medial_plosive?
              [template("τα", :c1_lenited, :c2, "η", :c3, "ετ"), template("ta", :tc1_lenited, :tc2, "ē", :tc3, "et")]
            else
              [template("τα", :c1, :c2, "η", :c3, "ετ"), template("ta", :tc1, :tc2, "ē", :tc3, "et")]
            end
          end

          def _preterite_second_singular_masculine
            if root.medial_plosive?
              [template("τα", :c1_lenited, :c2, "η", :c3_lenited, "τα"), template("ta", :tc1_lenited, :tc2, "ē", :tc3_lenited, "ta")]
            else
              [template("τα", :c1, :c2, "η", :c3_lenited, "τα"), template("ta", :tc1, :tc2, "ē", :tc3_lenited, "ta")]
            end
          end

          def _preterite_second_singular_feminine
            if root.medial_plosive?
              [template("τα", :c1_lenited, :c2, "η", :c3_lenited, "σ̄ε"), template("ta", :tc1_lenited, :tc2, "ē", :tc3_lenited, "še")]
            else
              [template("τα", :c1, :c2, "η", :c3_lenited, "σ̄ε"), template("ta", :tc1, :tc2, "ē", :tc3_lenited, "še")]
            end
          end

          def _preterite_third_singular_masculine
            if root.medial_plosive?
              [template("τα", :c1_lenited, :c2, "η", :c3), template("ta", :tc1_lenited, :tc2, "ē", :tc3)]
            else
              [template("τα", :c1, :c2, "η", :c3), template("ta", :tc1, :tc2, "ē", :tc3)]
            end
          end

          def _preterite_third_singular_feminine
            if root.medial_plosive?
              [template("τα", :c1_lenited, :c2, "η", :c3, "ω"), template("ta", :tc1_lenited, :tc2, "ē", :tc3, "ā")]
            else
              [template("τα", :c1, :c2, "η", :c3, "ω"), template("ta", :tc1, :tc2, "ē", :tc3, "ā")]
            end
          end

          def _preterite_first_plural
            if root.medial_plosive?
              [template("τα", :c1_lenited, :c2, "η", :c3, "νω"), template("ta", :tc1_lenited, :tc2, "ē", :tc3, "nā")]
            else
              [template("τα", :c1, :c2, "η", :c3, "νω"), template("ta", :tc1, :tc2, "ē", :tc3, "nā")]
            end
          end

          def _preterite_second_plural_masculine
            if root.medial_plosive?
              [template("τα", :c1_lenited, :c2, "η", :c3_lenited, "τυν"), template("ta", :tc1_lenited, :tc2, "ē", :tc3_lenited, "tun")]
            else
              [template("τα", :c1, :c2, "η", :c3_lenited, "τυν"), template("ta", :tc1, :tc2, "ē", :tc3_lenited, "tun")]
            end
          end

          def _preterite_second_plural_feminine
            if root.medial_plosive?
              [template("τα", :c1_lenited, :c2, "η", :c3_lenited, "σ̄ιν"), template("ta", :tc1_lenited, :tc2, "ē", :tc3_lenited, "šin")]
            else
              [template("τα", :c1, :c2, "η", :c3_lenited, "σ̄ιν"), template("ta", :tc1, :tc2, "ē", :tc3_lenited, "šin")]
            end
          end

          def _preterite_third_plural
            if root.medial_plosive?
              [template("τα", :c1_lenited, :c2, "η", :c3, "ου"), template("ta", :tc1_lenited, :tc2, "ē", :tc3, "ū")]
            else
              [template("τα", :c1, :c2, "η", :c3, "ου"), template("ta", :tc1, :tc2, "ē", :tc3, "ū")]
            end
          end

          def _imperfect_first_singular
            if root.medial_plosive?
              [template("τα", :c1_lenited, :c2, "ιη", :c3_lenited), template("ta", :tc1_lenited, :tc2, "ie", :tc3_lenited)]
            else
              [template("τα", :c1, :c2, "ιη", :c3_lenited), template("ta", :tc1, :tc2, "ie", :tc3_lenited)]
            end
          end

          def _imperfect_second_singular_masculine
            if root.medial_plosive?
              [template("τα", :c1_lenited, :c2, "ιη", :c3_lenited, "ετ"), template("ta", :tc1_lenited, :tc2, "ie", :tc3_lenited, "et")]
            else
              [template("τα", :c1, :c2, "ιη", :c3_lenited, "ετ"), template("ta", :tc1, :tc2, "ie", :tc3_lenited, "et")]
            end
          end

          def _imperfect_second_singular_feminine
            if root.medial_plosive?
              [template("τα", :c1_lenited, :c2, "ιη", :c3_lenited, "ες̄"), template("ta", :tc1_lenited, :tc2, "ie", :tc3_lenited, "eš")]
            else
              [template("τα", :c1, :c2, "ιη", :c3_lenited, "ες̄"), template("ta", :tc1, :tc2, "ie", :tc3_lenited, "eš")]
            end
          end

          def _imperfect_third_singular_masculine
            if root.medial_plosive?
              [template("τα", :c1_lenited, :c2, "ιη", :c3), template("ta", :tc1_lenited, :tc2, "ie", :tc3)]
            else
              [template("τα", :c1, :c2, "ιη", :c3), template("ta", :tc1, :tc2, "ie", :tc3)]
            end
          end

          def _imperfect_third_singular_feminine
            if root.medial_plosive?
              [template("τα", :c1_lenited, :c2, "ιη", :c3, "ω"), template("ta", :tc1_lenited, :tc2, "ie", :tc3, "ā")]
            else
              [template("τα", :c1, :c2, "ιη", :c3, "ω"), template("ta", :tc1, :tc2, "ie", :tc3, "ā")]
            end
          end

          def _imperfect_first_plural
            if root.medial_plosive?
              [template("τα", :c1_lenited, :c2, "ιη", :c3_lenited, "εν"), template("ta", :tc1_lenited, :tc2, "ie", :tc3_lenited, "en")]
            else
              [template("τα", :c1, :c2, "ιη", :c3_lenited, "εν"), template("ta", :tc1, :tc2, "ie", :tc3_lenited, "en")]
            end
          end

          def _imperfect_second_plural_masculine
            if root.medial_plosive?
              [template("τα", :c1_lenited, :c2, "ιη", :c3_lenited, "τυν"), template("ta", :tc1_lenited, :tc2, "ie", :tc3_lenited, "tun")]
            else
              [template("τα", :c1, :c2, "ιη", :c3_lenited, "τυν"), template("ta", :tc1, :tc2, "ie", :tc3_lenited, "tun")]
            end
          end

          def _imperfect_second_plural_feminine
            if root.medial_plosive?
              [template("τα", :c1_lenited, :c2, "ιη", :c3_lenited, "σ̄ιν"), template("ta", :tc1_lenited, :tc2, "ie", :tc3_lenited, "šin")]
            else
              [template("τα", :c1, :c2, "ιη", :c3_lenited, "σ̄ιν"), template("ta", :tc1, :tc2, "ie", :tc3_lenited, "šin")]
            end
          end

          def _imperfect_third_plural
            if root.medial_plosive?
              [template("τα", :c1_lenited, :c2, "ιη", :c3, "ου"), template("ta", :tc1_lenited, :tc2, "ie", :tc3, "ū")]
            else
              [template("τα", :c1, :c2, "ιη", :c3, "ου"), template("ta", :tc1, :tc2, "ie", :tc3, "ū")]
            end
          end

          def _pf_subjunctive_first_singular
            [template("в̄ω", infix, :c1, "α", :c2, :short_v, :c3), template("vā", infix_transliterated, :tc1, "a", :tc2, :short_tv, :tc3)]
          end

          def _pf_subjunctive_first_plural
            [template("в̄ανα", infix, :c1, "α", :c2, :short_v, :c3), template("vəna", infix_transliterated, :tc1, "a", :tc2, :short_tv, :tc3)]
          end

          def _pf_subjunctive_second
            [template("в̄ατα", infix, :c1, "α", :c2, :short_v, :c3), template("vəta", infix_transliterated, :tc1, "a", :tc2, :short_tv, :tc3)]
          end

          def _pf_subjunctive_third
            [template("в̄ει", infix, :c1, "α", :c2, :short_v, :c3), template("vī", infix_transliterated, :tc1, "a", :tc2, :short_tv, :tc3)]
          end

          def _impf_subjunctive_first_singular
            [template("α", infix, :c1, "α", :c2, :v, :c3, "α"), template("'a", infix_transliterated, :tc1, "a", :tc2, :tv, :tc3, "a")]
          end

          def _impf_subjunctive_second_singular_masculine
            if root.tv == "ā"
              [template("τι", infix, :c1, "α", :c2, :v, :c3, "α"), template("ti", infix_transliterated, :tc1, "a", :tc2, :tv, :tc3, "a")]
            else
              [template("τα", infix, :c1, "α", :c2, :v, :c3, "α"), template("ta", infix_transliterated, :tc1, "a", :tc2, :tv, :tc3, "a")]
            end
          end

          def _impf_subjunctive_second_singular_feminine
            if root.tv == "ā"
              [template("τι", infix, :c1, "α", :c2, :v, :c3, "ια"), template("ti", infix_transliterated, :tc1, "a", :tc2, :tv, :tc3, "iya")]
            else
              [template("τα", infix, :c1, "α", :c2, :v, :c3, "ια"), template("ta", infix_transliterated, :tc1, "a", :tc2, :tv, :tc3, "iya")]
            end
          end

          def _impf_subjunctive_third_singular_masculine
            if root.tv == "ā"
              [template("ι", infix, :c1, "α", :c2, :v, :c3, "α"), template("yi", infix_transliterated, :tc1, "a", :tc2, :tv, :tc3, "a")]
            else
              [template("ια", infix, :c1, "α", :c2, :v, :c3, "α"), template("ya", infix_transliterated, :tc1, "a", :tc2, :tv, :tc3, "a")]
            end
          end

          def _impf_subjunctive_third_singular_feminine
            if root.tv == "ā"
              [template("ι", infix, :c1, "α", :c2, :v, :c3, "ια"), template("yi", infix_transliterated, :tc1, "a", :tc2, :tv, :tc3, "iya")]
            else
              [template("ια", infix, :c1, "α", :c2, :v, :c3, "ια"), template("ya", infix_transliterated, :tc1, "a", :tc2, :tv, :tc3, "iya")]
            end
          end

          def _impf_subjunctive_first_plural
            if root.tv == "ā"
              [template("νι", infix, :c1, "α", :c2, :v, :c3, "υ'α"), template("ni", infix_transliterated, :tc1, "a", :tc2, :tv, :tc3, "uwa")]
            else
              [template("να", infix, :c1, "α", :c2, :v, :c3, "υ'α"), template("na", infix_transliterated, :tc1, "a", :tc2, :tv, :tc3, "uwa")]
            end
          end

          def _impf_subjunctive_second_plural
            if root.tv == "ā"
              [template("τι", infix, :c1, "α", :c2, :v, :c3, "υ'α"), template("ti", infix_transliterated, :tc1, "a", :tc2, :tv, :tc3, "uwa")]
            else
              [template("τα", infix, :c1, "α", :c2, :v, :c3, "υ'α"), template("ta", infix_transliterated, :tc1, "a", :tc2, :tv, :tc3, "uwa")]
            end
          end

          def _impf_subjunctive_third_plural
            if root.tv == "ā"
              [template("ι", infix, :c1, "α", :c2, :v, :c3, "υ'α"), template("yi", infix_transliterated, :tc1, "a", :tc2, :tv, :tc3, "uwa")]
            else
              [template("ια", infix, :c1, "α", :c2, :v, :c3, "υ'α"), template("ya", infix_transliterated, :tc1, "a", :tc2, :tv, :tc3, "uwa")]
            end
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
            c1 = root.medial_plosive? ? :c1_lenited : :c1
            tc1 = root.medial_plosive? ? :tc1_lenited : :tc1
            if root.tv == "ā"
              [template("τι", c1, :c2, :v, :c3), template("ti", tc1, :tc2, :tv, :tc3)]
            else
              [template("τα", c1, :c2, :v, :c3), template("ta", tc1, :tc2, :tv, :tc3)]
            end
          end

          def _imperative_feminine_singular
            c1 = root.medial_plosive? ? :c1_lenited : :c1
            tc1 = root.medial_plosive? ? :tc1_lenited : :tc1
            if root.tv == "ā"
              [template("τι", c1, :c2, :short_v, :c3, "ει"), template("ti", tc1, :tc2, :short_tv, :tc3, "ī")]
            else
              [template("τα", c1, :c2, :short_v, :c3, "ει"), template("ta", tc1, :tc2, :short_tv, :tc3, "ī")]
            end
          end

          def _imperative_plural
            c1 = root.medial_plosive? ? :c1_lenited : :c1
            tc1 = root.medial_plosive? ? :tc1_lenited : :tc1
            if root.tv == "ā"
              [template("τι", c1, :c2, :short_v, :c3, "ου"), template("ti", tc1, :tc2, :short_tv, :tc3, "ū")]
            else
              [template("τα", c1, :c2, :short_v, :c3, "ου"), template("ta", tc1, :tc2, :short_tv, :tc3, "ū")]
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
            [template("μα", infix, :c1, "α", :c2, "η", :c3), template("ma", infix_transliterated, :tc1, "a", :tc2, "ē", :tc3)]
          end

          def _active_participle
            [template("μι", infix, :c1, "α", :c2, "ι", :c3), template("mi", infix_transliterated, :tc1, "a", :tc2, "i", :tc3)]
          end

          private

          def infix
            "τ"
          end

          def infix_transliterated
            "t"
          end
        end
      end
    end
  end
end
