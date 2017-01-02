require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Nitkatab
        module InitialGlottal
          include Nitkatab::Regular

          def subtype
            "C1 = '/H"
          end

          def _present_first_singular
            [template("ατταηἀ", :c2, "α", :c3), template("'əthaha", :tc2, "a", :tc3)]
          end

          def _present_second_singular_masculine
            [template("τατταηἀ", :c2, "α", :c3), template("təthaha", :tc2, "a", :tc3)]
          end

          def _present_second_singular_feminine
            [template("τατταηα", :c2, "α", :c3, "ει"), template("təthaha", :tc2, "a", :tc3, "ī")]
          end

          def _present_third_singular_masculine
            [template("ιατταηἀ", :c2, "α", :c3), template("yəthaha", :tc2, "a", :tc3)]
          end

          def _present_third_singular_feminine
            [template("ιατταηα", :c2, "α", :c3, "ει"), template("yəthaha", :tc2, "a", :tc3, "ī")]
          end

          def _present_first_plural
            [template("νατταηα", :c2, "α", :c3, "ου"), template("nəthaha", :tc2, "a", :tc3, "ū")]
          end

          def _present_second_plural
            [template("τατταηα", :c2, "α", :c3, "ου"), template("təthaha", :tc2, "a", :tc3, "ū")]
          end

          def _present_third_plural
            [template("ιατταηα", :c2, "α", :c3, "ου"), template("yəthaha", :tc2, "a", :tc3, "ū")]
          end

          def _preterite_first_singular
            [template("ναττα", :c2, "α", :c3, "ετ"), template("nətha", :tc2, "a", :tc3, "et")]
          end

          def _preterite_second_singular_masculine
            [template("ναττα", :c2, "α", :c3_lenited, "τα"), template("nətha", :tc2, "a", :tc3_lenited, "ta")]
          end

          def _preterite_second_singular_feminine
            [template("ναττα", :c2, "α", :c3_lenited, "σ̄ε"), template("nətha", :tc2, "a", :tc3_lenited, "še")]
          end

          def _preterite_third_singular_masculine
            [template("ναττα", :c2, "α", :c3), template("nətha", :tc2, "a", :tc3)]
          end

          def _preterite_third_singular_feminine
            [template("ναττα", :c2, "α", :c3, "ω"), template("nətha", :tc2, "a", :tc3, "ā")]
          end

          def _preterite_first_plural
            [template("ναττα", :c2, "α", :c3, "νω"), template("nətha", :tc2, "a", :tc3, "nā")]
          end

          def _preterite_second_plural_masculine
            [template("ναττα", :c2, "α", :c3_lenited, "τυν"), template("nətha", :tc2, "a", :tc3_lenited, "tun")]
          end

          def _preterite_second_plural_feminine
            [template("ναττα", :c2, "α", :c3_lenited, "σ̄ιν"), template("nətha", :tc2, "a", :tc3_lenited, "šin")]
          end

          def _preterite_third_plural
            [template("ναττα", :c2, "α", :c3, "ου"), template("nətha", :tc2, "a", :tc3, "ū")]
          end

          def _imperfect_first_singular
            [template("ναττιη", :c2, "ε", :c3_lenited), template("nəthie", :tc2, "e", :tc3_lenited)]
          end

          def _imperfect_second_singular_masculine
            [template("ναττιη", :c2, "ε", :c3_lenited, "ετ"), template("nəthie", :tc2, "e", :tc3_lenited, "et")]
          end

          def _imperfect_second_singular_feminine
            [template("ναττιη", :c2, "ε", :c3_lenited, "ες̄"), template("nəthie", :tc2, "e", :tc3_lenited, "eš")]
          end

          def _imperfect_third_singular_masculine
            [template("ναττιη", :c2, "ε", :c3), template("nəthie", :tc2, "e", :tc3)]
          end

          def _imperfect_third_singular_feminine
            [template("ναττιη", :c2, "ε", :c3, "ω"), template("nəthie", :tc2, "e", :tc3, "ā")]
          end

          def _imperfect_first_plural
            [template("ναττιη", :c2, "ε", :c3_lenited, "εν"), template("nəthie", :tc2, "e", :tc3_lenited, "en")]
          end

          def _imperfect_second_plural_masculine
            [template("ναττιη", :c2, "ε", :c3_lenited, "τυν"), template("nəthie", :tc2, "e", :tc3_lenited, "tun")]
          end

          def _imperfect_second_plural_feminine
            [template("ναττιη", :c2, "ε", :c3_lenited, "σ̄ιν"), template("nəthie", :tc2, "e", :tc3_lenited, "šin")]
          end

          def _imperfect_third_plural
            [template("ναττιη", :c2, "ε", :c3, "ου"), template("nəthie", :tc2, "e", :tc3, "ū")]
          end

          def _pf_subjunctive_first_singular
            [template("в̄ωτταηἀ", :c2, "α", :c3), template("vāthaha", :tc2, "a", :tc3)]
          end

          def _pf_subjunctive_first_plural
            [template("в̄ενατταηἀ", :c2, "α", :c3), template("venəthaha", :tc2, "a", :tc3)]
          end

          def _pf_subjunctive_second
            [template("в̄ετατταηἀ", :c2, "α", :c3), template("vetəthaha", :tc2, "a", :tc3)]
          end

          def _pf_subjunctive_third
            [template("в̄ητταηἀ", :c2, "α", :c3), template("vēthaha", :tc2, "a", :tc3)]
          end

          def _impf_subjunctive_first_singular
            [template("ατταηἀ", :c2, "α", :c3, "α"), template("'əthaha", :tc2, "a", :tc3, "a")]
          end

          def _impf_subjunctive_second_singular_masculine
            [template("τατταηἀ", :c2, "α", :c3, "α"), template("təthaha", :tc2, "a", :tc3, "a")]
          end

          def _impf_subjunctive_second_singular_feminine
            [template("τατταηα", :c2, "α", :c3, "ι'α"), template("təthaha", :tc2, "a", :tc3, "iya")]
          end

          def _impf_subjunctive_third_singular_masculine
            [template("ιατταηἀ", :c2, "α", :c3, "α"), template("yəthaha", :tc2, "a", :tc3, "a")]
          end

          def _impf_subjunctive_third_singular_feminine
            [template("ιατταηα", :c2, "α", :c3, "ι'α"), template("yəthaha", :tc2, "a", :tc3, "iya")]
          end

          def _impf_subjunctive_first_plural
            [template("νατταηα", :c2, "α", :c3, "υ'α"), template("nəthaha", :tc2, "a", :tc3, "uwa")]
          end

          def _impf_subjunctive_second_plural
            [template("τατταηα", :c2, "α", :c3, "υ'α"), template("təthaha", :tc2, "a", :tc3, "uwa")]
          end

          def _impf_subjunctive_third_plural
            [template("ιατταηα", :c2, "α", :c3, "υ'α"), template("yəthaha", :tc2, "a", :tc3, "uwa")]
          end

          def _volitive_first_singular
            [template("ατταηα", :c2, "α", :c3, "αννα"), template("'əthaha", :tc2, "a", :tc3, "anna")]
          end

          def _volitive_second_singular_masculine
            [template("τατταηα", :c2, "α", :c3, "αννα"), template("təthaha", :tc2, "a", :tc3, "anna")]
          end

          def _volitive_third_singular_masculine
            [template("ιατταηα", :c2, "α", :c3, "αννα"), template("yəthaha", :tc2, "a", :tc3, "anna")]
          end

          def _imperative_masculine_singular
            [template("ατταηἀ", :c2, "α", :c3), template("'əthaha", :tc2, "a", :tc3)]
          end

          def _imperative_feminine_singular
            [template("ατταηα", :c2, "α", :c3, "ει"), template("'əthaha", :tc2, "a", :tc3, "ī")]
          end

          def _imperative_plural
            [template("ατταηα", :c2, "α", :c3, "ου"), template("'əthaha", :tc2, "a", :tc3, "ū")]
          end

          def _infinitive
            [template("μωτταηα", :c2, "α", :c3), template("māthaha", :tc2, "a", :tc3)]
          end

          def _active_participle
            [template("ματταηἀ", :c2, "ι", :c3), template("məthaha", :tc2, "i", :tc3)]
          end
        end
      end
    end
  end
end
