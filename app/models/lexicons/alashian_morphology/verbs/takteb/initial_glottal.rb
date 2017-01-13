require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Takteb
        module InitialGlottal
          include Takteb::Regular

          def subtype
            "C1 = '/H"
          end

          def _present_first_singular
            [template("αττα", :c2, :v, :c3), template("'ətha", :tc2, :tv, :tc3)]
          end

          def _present_second_singular_masculine
            [template("ταττα", :c2, :v, :c3), template("tətha", :tc2, :tv, :tc3)]
          end

          def _present_second_singular_feminine
            [template("ταττα", :c2, :short_v, :c3, "ει"), template("tətha", :tc2, :short_tv, :tc3, "ī")]
          end

          def _present_third_singular_masculine
            [template("ιαττα", :c2, :v, :c3), template("yətha", :tc2, :tv, :tc3)]
          end

          def _present_third_singular_feminine
            [template("ιαττα", :c2, :short_v, :c3, "ει"), template("yətha", :tc2, :short_tv, :tc3, "ī")]
          end

          def _present_first_plural
            [template("ναττα", :c2, :short_v, :c3, "ου"), template("nətha", :tc2, :short_tv, :tc3, "ū")]
          end

          def _present_second_plural
            [template("ταττα", :c2, :short_v, :c3, "ου"), template("tətha", :tc2, :short_tv, :tc3, "ū")]
          end

          def _present_third_plural
            [template("ιαττα", :c2, :short_v, :c3, "ου"), template("yətha", :tc2, :short_tv, :tc3, "ū")]
          end

          def _preterite_first_singular
            [template("ταηα", :c2, "η", :c3, "ετ"), template("taha", :tc2, "ē", :tc3, "et")]
          end

          def _preterite_second_singular_masculine
            [template("ταηα", :c2, "η", :c3_lenited, "τα"), template("taha", :tc2, "ē", :tc3_lenited, "ta")]
          end

          def _preterite_second_singular_feminine
            [template("ταηα", :c2, "η", :c3_lenited, "σ̄ε"), template("taha", :tc2, "ē", :tc3_lenited, "še")]
          end

          def _preterite_third_singular_masculine
            [template("ταηα", :c2, "η", :c3), template("taha", :tc2, "ē", :tc3)]
          end

          def _preterite_third_singular_feminine
            [template("ταηα", :c2, "η", :c3, "ω"), template("taha", :tc2, "ē", :tc3, "ā")]
          end

          def _preterite_first_plural
            [template("ταηα", :c2, "η", :c3, "νω"), template("taha", :tc2, "ē", :tc3, "nā")]
          end

          def _preterite_second_plural_masculine
            [template("ταηα", :c2, "η", :c3_lenited, "τυν"), template("taha", :tc2, "ē", :tc3_lenited, "tun")]
          end

          def _preterite_second_plural_feminine
            [template("ταηα", :c2, "η", :c3_lenited, "σ̄ιν"), template("taha", :tc2, "ē", :tc3_lenited, "šin")]
          end

          def _preterite_third_plural
            [template("ταηα", :c2, "η", :c3, "ου"), template("taha", :tc2, "ē", :tc3, "ū")]
          end

          def _imperfect_first_singular
            [template("ταηα", :c2, "ιη", :c3_lenited), template("taha", :tc2, "ie", :tc3_lenited)]
          end

          def _imperfect_second_singular_masculine
            [template("ταηα", :c2, "ιη", :c3_lenited, "ετ"), template("taha", :tc2, "ie", :tc3_lenited, "et")]
          end

          def _imperfect_second_singular_feminine
            [template("ταηα", :c2, "ιη", :c3_lenited, "ες̄"), template("taha", :tc2, "ie", :tc3_lenited, "eš")]
          end

          def _imperfect_third_singular_masculine
            [template("ταηα", :c2, "ιη", :c3), template("taha", :tc2, "ie", :tc3)]
          end

          def _imperfect_third_singular_feminine
            [template("ταηα", :c2, "ιη", :c3, "ω"), template("taha", :tc2, "ie", :tc3, "ā")]
          end

          def _imperfect_first_plural
            [template("ταηα", :c2, "ιη", :c3_lenited, "εν"), template("taha", :tc2, "ie", :tc3_lenited, "en")]
          end

          def _imperfect_second_plural_masculine
            [template("ταηα", :c2, "ιη", :c3_lenited, "τυν"), template("taha", :tc2, "ie", :tc3_lenited, "tun")]
          end

          def _imperfect_second_plural_feminine
            [template("ταηα", :c2, "ιη", :c3_lenited, "σ̄ιν"), template("taha", :tc2, "ie", :tc3_lenited, "šin")]
          end

          def _imperfect_third_plural
            [template("ταηα", :c2, "ιη", :c3, "ου"), template("taha", :tc2, "ie", :tc3, "ū")]
          end

          def _pf_subjunctive_first_singular
            [template("в̄ωττα", :c2, :short_v, :c3), template("vātha", :tc2, :short_tv, :tc3)]
          end

          def _pf_subjunctive_first_plural
            [template("в̄αναττα", :c2, :short_v, :c3), template("vənətha", :tc2, :short_tv, :tc3)]
          end

          def _pf_subjunctive_second
            [template("в̄αταττα", :c2, :short_v, :c3), template("vətətha", :tc2, :short_tv, :tc3)]
          end

          def _pf_subjunctive_third
            [template("в̄ειττα", :c2, :short_v, :c3), template("vītha", :tc2, :short_tv, :tc3)]
          end

          def _impf_subjunctive_first_singular
            [template("αττα", :c2, :v, :c3, "α"), template("'ətha", :tc2, :tv, :tc3, "a")]
          end

          def _impf_subjunctive_second_singular_masculine
            [template("ταττα", :c2, :v, :c3, "α"), template("tətha", :tc2, :tv, :tc3, "a")]
          end

          def _impf_subjunctive_second_singular_feminine
            [template("ταττα", :c2, :v, :c3, "ια"), template("tətha", :tc2, :tv, :tc3, "iya")]
          end

          def _impf_subjunctive_third_singular_masculine
            [template("ιαττα", :c2, :v, :c3, "α"), template("yətha", :tc2, :tv, :tc3, "a")]
          end

          def _impf_subjunctive_third_singular_feminine
            [template("ιαττα", :c2, :v, :c3, "ια"), template("yətha", :tc2, :tv, :tc3, "iya")]
          end

          def _impf_subjunctive_first_plural
            [template("ναττα", :c2, :v, :c3, "υ'α"), template("nətha", :tc2, :tv, :tc3, "uwa")]
          end

          def _impf_subjunctive_second_plural
            [template("ταττα", :c2, :v, :c3, "υ'α"), template("tətha", :tc2, :tv, :tc3, "uwa")]
          end

          def _impf_subjunctive_third_plural
            [template("ιαττα", :c2, :v, :c3, "υ'α"), template("yətha", :tc2, :tv, :tc3, "uwa")]
          end

          def _imperative_masculine_singular
            if root.tv == "ā"
              [template("τιηα", :c2, :v, :c3), template("tiha", :tc2, :tv, :tc3)]
            else
              [template("ταηα", :c2, :v, :c3), template("taha", :tc2, :tv, :tc3)]
            end
          end

          def _imperative_feminine_singular
            if root.tv == "ā"
              [template("τιηα", :c2, :short_v, :c3, "ει"), template("tiha", :tc2, :short_tv, :tc3, "ī")]
            else
              [template("ταηα", :c2, :short_v, :c3, "ει"), template("taha", :tc2, :short_tv, :tc3, "ī")]
            end
          end

          def _imperative_plural
            if root.tv == "ā"
              [template("τιηα", :c2, :short_v, :c3, "ου"), template("tiha", :tc2, :short_tv, :tc3, "ū")]
            else
              [template("ταηα", :c2, :short_v, :c3, "ου"), template("taha", :tc2, :short_tv, :tc3, "ū")]
            end
          end

          def _infinitive
            [template("ματτα", :c2, "η", :c3), template("mətha", :tc2, "ē", :tc3)]
          end

          def _active_participle
            [template("ματτα", :c2, "ι", :c3), template("mətha", :tc2, "i", :tc3)]
          end
        end
      end
    end
  end
end
