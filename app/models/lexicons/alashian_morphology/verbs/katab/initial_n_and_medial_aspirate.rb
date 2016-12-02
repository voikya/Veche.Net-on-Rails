require_relative 'initial_n'

module Morphology
  module Alashian
    module Verbs
      module Katab
        module InitialNAndMedialAspirate
          include Katab::InitialN

          def subtype
            "C1 = N, C2 = PH/TH/KH/TSH/ČH"
          end

          def _present_first_singular
            [template("α", :c2, :v, :c3), template("'ə", :tc2, :tv, :tc3)]
          end

          def _present_second_singular_masculine
            [template("τα", :c2, :v, :c3), template("tə", :tc2, :tv, :tc3)]
          end

          def _present_second_singular_feminine
            [template("τα", :c2, :short_v, :c3, "ει"), template("tə", :tc2, :short_tv, :tc3, "ī")]
          end

          def _present_third_singular_masculine
            [template("ια", :c2, :v, :c3), template("yə", :tc2, :tv, :tc3)]
          end

          def _present_third_singular_feminine
            [template("ια", :c2, :short_v, :c3, "ει"), template("yə", :tc2, :short_tv, :tc3, "ī")]
          end

          def _present_first_plural
            [template("να", :c2, :short_v, :c3, "ου"), template("nə", :tc2, :short_tv, :tc3, "ū")]
          end

          def _present_second_plural
            [template("τα", :c2, :short_v, :c3, "ου"), template("tə", :tc2, :short_tv, :tc3, "ū")]
          end

          def _present_third_plural
            [template("ια", :c2, :short_v, :c3, "ου"), template("yə", :tc2, :short_tv, :tc3, "ū")]
          end

          def _preterite_first_singular
            [template(:c1, "α", :c2, "α", :c3, "ετ"), template(:tc1, "ə", :tc2, "a", :tc3, "et")]
          end

          def _preterite_second_singular_masculine
            [template(:c1, "α", :c2, "α", :c3_lenited, "τα"), template(:tc1, "ə", :tc2, "a", :tc3_lenited, "ta")]
          end

          def _preterite_second_singular_feminine
            [template(:c1, "α", :c2, "α", :c3_lenited, "σ̄ε"), template(:tc1, "ə", :tc2, "a", :tc3_lenited, "še")]
          end

          def _preterite_third_singular_masculine
            [template(:c1, "α", :c2, "α", :c3), template(:tc1, "ə", :tc2, "a", :tc3)]
          end

          def _preterite_third_singular_feminine
            [template(:c1, "α", :c2, "α", :c3, "ω"), template(:tc1, "ə", :tc2, "a", :tc3, "ā")]
          end

          def _preterite_first_plural
            [template(:c1, "α", :c2, "α", :c3, "νω"), template(:tc1, "ə", :tc2, "a", :tc3, "nā")]
          end

          def _preterite_second_plural_masculine
            [template(:c1, "α", :c2, "α", :c3_lenited, "τυν"), template(:tc1, "ə", :tc2, "a", :tc3_lenited, "tun")]
          end

          def _preterite_second_plural_feminine
            [template(:c1, "α", :c2, "α", :c3_lenited, "σ̄ιν"), template(:tc1, "ə", :tc2, "a", :tc3_lenited, "šin")]
          end

          def _preterite_third_plural
            [template(:c1, "α", :c2, "α", :c3, "ου"), template(:tc1, "ə", :tc2, "a", :tc3, "ū")]
          end

          def _imperfect_third_singular_feminine
            [template(:c1, "η", :c2, "ε", :c3, "ω"), template(:tc1, "ē", :tc2, "e", :tc3, "ā")]
          end

          def _imperfect_third_plural
            [template(:c1, "η", :c2, "ε", :c3, "ου"), template(:tc1, "ē", :tc2, "e", :tc3, "ū")]
          end

          def _pf_subjunctive_first_singular
            [template("в̄α", :c2, "α", :c3), template("və", :tc2, "a", :tc3)]
          end

          def _pf_subjunctive_first_plural
            [template("в̄ανα", :c2, "α", :c3), template("vanə", :tc2, "a", :tc3)]
          end

          def _pf_subjunctive_second
            [template("в̄ατα", :c2, "α", :c3), template("vatə", :tc2, "a", :tc3)]
          end

          def _pf_subjunctive_third
            [template("в̄η", :c2, "α", :c3), template("vē", :tc2, "a", :tc3)]
          end

          def _impf_subjunctive_first_singular
            [template("α", :c2, :v, :c3, "α"), template("'ə", :tc2, :tv, :tc3, "a")]
          end

          def _impf_subjunctive_second_singular_masculine
            [template("τα", :c2, :v, :c3, "α"), template("tə", :tc2, :tv, :tc3, "a")]
          end

          def _impf_subjunctive_second_singular_feminine
            [template("τα", :c2, :v, :c3, "ια"), template("tə", :tc2, :tv, :tc3, "iya")]
          end

          def _impf_subjunctive_third_singular_masculine
            [template("ια", :c2, :v, :c3, "α"), template("yə", :tc2, :tv, :tc3, "a")]
          end

          def _impf_subjunctive_third_singular_feminine
            [template("ια", :c2, :v, :c3, "ια"), template("yə", :tc2, :tv, :tc3, "iya")]
          end

          def _impf_subjunctive_first_plural
            [template("να", :c2, :v, :c3, "υ'α"), template("nə", :tc2, :tv, :tc3, "uwa")]
          end

          def _impf_subjunctive_second_plural
            [template("τα", :c2, :v, :c3, "υ'α"), template("tə", :tc2, :tv, :tc3, "uwa")]
          end

          def _impf_subjunctive_third_plural
            [template("ια", :c2, :v, :c3, "υ'α"), template("yə", :tc2, :tv, :tc3, "uwa")]
          end

          def _imperative_masculine_singular
            [template(:c1, "α", :c2, :v, :c3), template(:tc1, "ə", :tc2, :tv, :tc3)]
          end

          def _imperative_feminine_singular
            [template(:c1, "α", :c2, :c3, "ει"), template(:tc1, "ə", :tc2, :tc3, "ī")]
          end

          def _imperative_plural
            [template(:c1, "α", :c2, :c3, "ου"), template(:tc1, "ə", :tc2, :tc3, "ū")]
          end

          def _infinitive
            [template(:c1, "α", :c2, "ου", :c3), template(:tc1, "ə", :tc2, "ū", :tc3)]
          end

          def _passive_participle
            [template("μα", :c2, "ου", :c3), template("mə", :tc2, "ū", :tc3)]
          end
        end
      end
    end
  end
end
