require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Takteb
        module FinalGlottalStop
          include Takteb::Regular

          def subtype
            "C3 = '"
          end

          def _present_first_singular
            [template("α", infix, :c1, "α", :c2, :v), template("'a", infix_transliterated, :tc1, "a", :tc2, :tv)]
          end

          def _present_second_singular_masculine
            if root.tv == "ā"
              [template("τι", infix, :c1, "α", :c2, :v), template("ti", infix_transliterated, :tc1, "a", :tc2, :tv)]
            else
              [template("τα", infix, :c1, "α", :c2, :v), template("ta", infix_transliterated, :tc1, "a", :tc2, :tv)]
            end
          end

          def _present_third_singular_masculine
            if root.tv == "ā"
              [template("ι", infix, :c1, "α", :c2, :v), template("yi", infix_transliterated, :tc1, "a", :tc2, :tv)]
            else
              [template("ια", infix, :c1, "α", :c2, :v), template("ya", infix_transliterated, :tc1, "a", :tc2, :tv)]
            end
          end

          def _preterite_first_singular
            if root.medial_plosive?
              [template("τα", :c1_lenited, :c2, "ητ"), template("ta", :tc1_lenited, :tc2, "ēt")]
            else
              [template("τα", :c1, :c2, "ητ"), template("ta", :tc1, :tc2, "ēt")]
            end
          end

          def _preterite_second_singular_masculine
            if root.medial_plosive?
              [template("τα", :c1_lenited, :c2, "ηττα"), template("ta", :tc1_lenited, :tc2, "ētha")]
            else
              [template("τα", :c1, :c2, "ηττα"), template("ta", :tc1, :tc2, "ētha")]
            end
          end

          def _preterite_second_singular_feminine
            if root.medial_plosive?
              [template("τα", :c1_lenited, :c2, "ητζζε"), template("ta", :tc1_lenited, :tc2, "ēčhe")]
            else
              [template("τα", :c1, :c2, "ητζζε"), template("ta", :tc1, :tc2, "ēčhe")]
            end
          end

          def _preterite_third_singular_masculine
            if root.medial_plosive?
              [template("τα", :c1_lenited, :c2, "η"), template("ta", :tc1_lenited, :tc2, "ē")]
            else
              [template("τα", :c1, :c2, "η"), template("ta", :tc1, :tc2, "ē")]
            end
          end

          def _preterite_first_plural
            if root.medial_plosive?
              [template("τα", :c1_lenited, :c2, "ηννω"), template("ta", :tc1_lenited, :tc2, "ēnnā")]
            else
              [template("τα", :c1, :c2, "ηννω"), template("ta", :tc1, :tc2, "ēnnā")]
            end
          end

          def _preterite_second_plural_masculine
            if root.medial_plosive?
              [template("τα", :c1_lenited, :c2, "ηττυν"), template("ta", :tc1_lenited, :tc2, "ēthun")]
            else
              [template("τα", :c1, :c2, "ηττυν"), template("ta", :tc1, :tc2, "ēthun")]
            end
          end

          def _preterite_second_plural_feminine
            if root.medial_plosive?
              [template("τα", :c1_lenited, :c2, "ητζζιν"), template("ta", :tc1_lenited, :tc2, "ēčhin")]
            else
              [template("τα", :c1, :c2, "ητζζιν"), template("ta", :tc1, :tc2, "ēčhin")]
            end
          end

          def _imperfect_first_singular
            if root.medial_plosive?
              [template("τα", :c1_lenited, :c2, "ιη"), template("ta", :tc1_lenited, :tc2, "ie")]
            else
              [template("τα", :c1, :c2, "ιη"), template("ta", :tc1, :tc2, "ie")]
            end
          end

          def _imperfect_second_singular_masculine
            if root.medial_plosive?
              [template("τα", :c1_lenited, :c2, "ιητ"), template("ta", :tc1_lenited, :tc2, "iet")]
            else
              [template("τα", :c1, :c2, "ιητ"), template("ta", :tc1, :tc2, "iet")]
            end
          end

          def _imperfect_second_singular_feminine
            if root.medial_plosive?
              [template("τα", :c1_lenited, :c2, "ιης̄"), template("ta", :tc1_lenited, :tc2, "ieš")]
            else
              [template("τα", :c1, :c2, "ιης̄"), template("ta", :tc1, :tc2, "ieš")]
            end
          end

          def _imperfect_third_singular_masculine
            if root.medial_plosive?
              [template("τα", :c1_lenited, :c2, "ιη"), template("ta", :tc1_lenited, :tc2, "ie")]
            else
              [template("τα", :c1, :c2, "ιη"), template("ta", :tc1, :tc2, "ie")]
            end
          end

          def _imperfect_first_plural
            if root.medial_plosive?
              [template("τα", :c1_lenited, :c2, "ιην"), template("ta", :tc1_lenited, :tc2, "ien")]
            else
              [template("τα", :c1, :c2, "ιην"), template("ta", :tc1, :tc2, "ien")]
            end
          end

          def _imperfect_second_plural_masculine
            if root.medial_plosive?
              [template("τα", :c1_lenited, :c2, "ιηττυν"), template("ta", :tc1_lenited, :tc2, "iethun")]
            else
              [template("τα", :c1, :c2, "ιηττυν"), template("ta", :tc1, :tc2, "iethun")]
            end
          end

          def _imperfect_second_plural_feminine
            if root.medial_plosive?
              [template("τα", :c1_lenited, :c2, "ιητζζιν"), template("ta", :tc1_lenited, :tc2, "iečhin")]
            else
              [template("τα", :c1, :c2, "ιητζζιν"), template("ta", :tc1, :tc2, "iečhin")]
            end
          end

          def _pf_subjunctive_first_singular
            [template("в̄ω", infix, :c1, "α", :c2, :short_v), template("vā", infix_transliterated, :tc1, "a", :tc2, :short_tv)]
          end

          def _pf_subjunctive_first_plural
            [template("в̄ανα", infix, :c1, "α", :c2, :short_v), template("vəna", infix_transliterated, :tc1, "a", :tc2, :short_tv)]
          end

          def _pf_subjunctive_second
            [template("в̄ατα", infix, :c1, "α", :c2, :short_v), template("vəta", infix_transliterated, :tc1, "a", :tc2, :short_tv)]
          end

          def _pf_subjunctive_third
            [template("в̄ει", infix, :c1, "α", :c2, :short_v), template("vī", infix_transliterated, :tc1, "a", :tc2, :short_tv)]
          end

          def _impf_subjunctive_first_plural
            if root.tv == "ā"
              [template("νι", infix, :c1, "α", :c2, :v, :c3, "'υ'α"), template("ni", infix_transliterated, :tc1, "a", :tc2, :tv, :tc3, "uwa")]
            else
              [template("να", infix, :c1, "α", :c2, :v, :c3, "'υ'α"), template("na", infix_transliterated, :tc1, "a", :tc2, :tv, :tc3, "uwa")]
            end
          end

          def _impf_subjunctive_second_plural
            if root.tv == "ā"
              [template("τι", infix, :c1, "α", :c2, :v, :c3, "'υ'α"), template("ti", infix_transliterated, :tc1, "a", :tc2, :tv, :tc3, "uwa")]
            else
              [template("τα", infix, :c1, "α", :c2, :v, :c3, "'υ'α"), template("ta", infix_transliterated, :tc1, "a", :tc2, :tv, :tc3, "uwa")]
            end
          end

          def _impf_subjunctive_third_plural
            if root.tv == "ā"
              [template("ι", infix, :c1, "α", :c2, :v, :c3, "'υ'α"), template("yi", infix_transliterated, :tc1, "a", :tc2, :tv, :tc3, "uwa")]
            else
              [template("ια", infix, :c1, "α", :c2, :v, :c3, "'υ'α"), template("ya", infix_transliterated, :tc1, "a", :tc2, :tv, :tc3, "uwa")]
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
            c1 = root.medial_plosive? ? :c1_lenited : :c1
            tc1 = root.medial_plosive? ? :tc1_lenited : :tc1
            if root.tv == "ā"
              [template("τι", c1, :c2, :v), template("ti", tc1, :tc2, :tv)]
            else
              [template("τα", c1, :c2, :v), template("ta", tc1, :tc2, :tv)]
            end
          end

          def _infinitive
            [template("μα", infix, :c1, "α", :c2, "η", :c3), template("ma", infix_transliterated, :tc1, "a", :tc2, "ē")]
          end

          def _active_participle
            [template("μι", infix, :c1, "α", :c2, "ι", :c3), template("mi", infix_transliterated, :tc1, "a", :tc2, "i")]
          end
        end
      end
    end
  end
end
