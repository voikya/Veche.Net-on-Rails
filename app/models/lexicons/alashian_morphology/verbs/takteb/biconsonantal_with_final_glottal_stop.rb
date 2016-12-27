require_relative 'biconsonantal'

module Morphology
  module Alashian
    module Verbs
      module Takteb
        module BiconsonantalWithFinalGlottalStop
          include Takteb::Biconsonantal

          def subtype
            "Biconsonantal Root with C3 = '"
          end

          def _present_first_singular
            [template("α", infix, :c1, :v), template("'a", infix_transliterated, :tc1, :tv)]
          end

          def _present_second_singular_masculine
            if root.tv == "ā" || root.tv == "ū"
              [template("τι", infix, :c1, :v), template("ti", infix_transliterated, :tc1, :tv)]
            else
              [template("τα", infix, :c1, :v), template("ta", infix_transliterated, :tc1, :tv)]
            end
          end

          def _present_third_singular_masculine
            if root.tv == "ā" || root.tv == "ū"
              [template("ι", infix, :c1, :v), template("yi", infix_transliterated, :tc1, :tv)]
            else
              [template("ια", infix, :c1, :v), template("ya", infix_transliterated, :tc1, :tv)]
            end
          end

          def _preterite_first_singular
            [template("τα", :c1, :v, "τ"), template("ta", :tc1, :tv, "t")]
          end

          def _preterite_second_singular_masculine
            [template("τα", :c1, :v, "ττα"), template("ta", :tc1, :tv, "tha")]
          end

          def _preterite_second_singular_feminine
            [template("τα", :c1, :v, "τζζε"), template("ta", :tc1, :tv, "čhe")]
          end

          def _preterite_third_singular_masculine
            [template("τα", :c1, :v), template("ta", :tc1, :tv)]
          end

          def _preterite_first_plural
            [template("τα", :c1, :v, "ννω"), template("ta", :tc1, :tv, "nnā")]
          end

          def _preterite_second_plural_masculine
            [template("τα", :c1, :v, "ττυν"), template("ta", :tc1, :tv, "thun")]
          end

          def _preterite_second_plural_feminine
            [template("τα", :c1, :v, "τζζιν"), template("ta", :tc1, :tv, "čhin")]
          end

          def _imperfect_first_singular
            [template("τα", :c1, "ιη"), template("ta", :tc1, "ie")]
          end

          def _imperfect_second_singular_masculine
            [template("τα", :c1, "ιητ"), template("ta", :tc1, "iet")]
          end

          def _imperfect_second_singular_feminine
            [template("τα", :c1, "ιης̄"), template("ta", :tc1, "ieš")]
          end

          def _imperfect_third_singular_masculine
            [template("τα", :c1, "ιη"), template("ta", :tc1, "ie")]
          end

          def _imperfect_first_plural
            [template("τα", :c1, "ιην"), template("ta", :tc1, "ien")]
          end

          def _imperfect_second_plural_masculine
            [template("τα", :c1, "ιηττυν"), template("ta", :tc1, "iethun")]
          end

          def _imperfect_second_plural_feminine
            [template("τα", :c1, "ιητζζιν"), template("ta", :tc1, "iečhin")]
          end

          def _pf_subjunctive_first_singular
            [template("в̄ω", infix, :c1, :v), template("vā", infix_transliterated, :tc1, :tv)]
          end

          def _pf_subjunctive_first_plural
            [template("в̄ανα", infix, :c1, :v), template("vəna", infix_transliterated, :tc1, :tv)]
          end

          def _pf_subjunctive_second
            [template("в̄ατα", infix, :c1, :v), template("vəta", infix_transliterated, :tc1, :tv)]
          end

          def _pf_subjunctive_third
            [template("в̄ει", infix, :c1, :v), template("vī", infix_transliterated, :tc1, :tv)]
          end

          def _impf_subjunctive_first_singular
            [template("α", infix, :c1, :v, :c3, "'α"), template("'a", infix_transliterated, :tc1, :tv, :tc2, "a")]
          end

          def _impf_subjunctive_second_singular_masculine
            if root.tv == "ā" || root.tv == "ū"
              [template("τι", infix, :c1, :v, :c3, "'α"), template("ti", infix_transliterated, :tc1, :tv, :tc2, "a")]
            else
              [template("τα", infix, :c1, :v, :c3, "'α"), template("ta", infix_transliterated, :tc1, :tv, :tc2, "a")]
            end
          end

          def _impf_subjunctive_second_singular_feminine
            if root.tv == "ā" || root.tv == "ū"
              [template("τι", infix, :c1, :v, :c3, "ιια"), template("ti", infix_transliterated, :tc1, :tv, :tc2, "iya")]
            else
              [template("τα", infix, :c1, :v, :c3, "ιια"), template("ta", infix_transliterated, :tc1, :tv, :tc2, "iya")]
            end
          end

          def _impf_subjunctive_third_singular_masculine
            if root.tv == "ā" || root.tv == "ū"
              [template("ι", infix, :c1, :v, :c3, "'α"), template("yi", infix_transliterated, :tc1, :tv, :tc2, "a")]
            else
              [template("ια", infix, :c1, :v, :c3, "'α"), template("ya", infix_transliterated, :tc1, :tv, :tc2, "a")]
            end
          end

          def _impf_subjunctive_third_singular_feminine
            if root.tv == "ā" || root.tv == "ū"
              [template("ι", infix, :c1, :v, :c3, "ιια"), template("yi", infix_transliterated, :tc1, :tv, :tc2, "iya")]
            else
              [template("ια", infix, :c1, :v, :c3, "ιια"), template("ya", infix_transliterated, :tc1, :tv, :tc2, "iya")]
            end
          end

          def _impf_subjunctive_first_plural
            if root.tv == "ā" || root.tv == "ū"
              [template("νι", infix, :c1, :v, :c3, "υυα"), template("ni", infix_transliterated, :tc1, :tv, :tc2, "uwa")]
            else
              [template("να", infix, :c1, :v, :c3, "υυα"), template("na", infix_transliterated, :tc1, :tv, :tc2, "uwa")]
            end
          end

          def _impf_subjunctive_second_plural
            if root.tv == "ā" || root.tv == "ū"
              [template("τι", infix, :c1, :v, :c3, "υυα"), template("ti", infix_transliterated, :tc1, :tv, :tc2, "uwa")]
            else
              [template("τα", infix, :c1, :v, :c3, "υυα"), template("ta", infix_transliterated, :tc1, :tv, :tc2, "uwa")]
            end
          end

          def _impf_subjunctive_third_plural
            if root.tv == "ā" || root.tv == "ū"
              [template("ι", infix, :c1, :v, :c3, "υυα"), template("yi", infix_transliterated, :tc1, :tv, :tc2, "uwa")]
            else
              [template("ια", infix, :c1, :v, :c3, "υυα"), template("ya", infix_transliterated, :tc1, :tv, :tc2, "uwa")]
            end
          end

          def _volitive_first_singular
            _present_first_singular.zip(["να", "na"]).map(&:join)
          end

          def _volitive_second_singular_masculine
            _present_second_singular_masculine.zip(["να", "na"]).map(&:join)
          end

          def _volitive_third_singular_masculine
            _present_third_singular_masculine.zip(["να", "na"]).map(&:join)
          end

          def _imperative_masculine_singular
            if root.tv == "ā" || root.tv == "ū"
              [template("τι", :c1, :v), template("ti", :tc1, :tv)]
            else
              [template("τα", :c1, :v), template("ta", :tc1, :tv)]
            end
          end

          def _infinitive
            [template("μα", infix, :c1, :v), template("ma", infix_transliterated, :tc1, :tv)]
          end

          def _active_participle
            [template("μι", infix, :c1, :v), template("mi", infix_transliterated, :tc1, :tv)]
          end
        end
      end
    end
  end
end
