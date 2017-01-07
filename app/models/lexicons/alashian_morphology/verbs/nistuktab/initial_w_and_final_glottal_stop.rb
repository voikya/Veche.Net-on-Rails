require_relative 'initial_w'

module Morphology
  module Alashian
    module Verbs
      module Nistuktab
        module InitialWAndFinalGlottalStop
          include Nistuktab::InitialW

          def subtype
            "C1 = W, C3 = '"
          end

          def _present_first_singular
            [template("ωστου", :c2, "ω"), template("'āstū", :tc2, "ā")]
          end

          def _present_second_singular_masculine
            [template("τωστου", :c2, "ω"), template("tāstū", :tc2, "ā")]
          end

          def _present_third_singular_masculine
            [template("ιωστου", :c2, "ω"), template("yāstū", :tc2, "ā")]
          end

          def _preterite_second_singular_masculine
            [template("νιστου", :c2, "ωττα"), template("nistū", :tc2, "ātha")]
          end

          def _preterite_second_singular_feminine
            [template("νιστου", :c2, "ωτζζε"), template("nistū", :tc2, "āčhe")]
          end

          def _preterite_third_singular_masculine
            [template("νιστου", :c2, "ω"), template("nistū", :tc2, "ā")]
          end

          def _preterite_first_plural
            [template("νιστου", :c2, "ωννω"), template("nistū", :tc2, "ānnā")]
          end

          def _preterite_second_plural_masculine
            [template("νιστου", :c2, "ωττυν"), template("nistū", :tc2, "āthun")]
          end

          def _preterite_second_plural_feminine
            [template("νιστου", :c2, "ωτζζιν"), template("nistū", :tc2, "āčhin")]
          end

          def _imperfect_first_singular
            [template("νιστου", :c2, "υω"), template("nistū", :tc2, "uo")]
          end

          def _imperfect_second_singular_masculine
            [template("νιστου", :c2, "υωτ"), template("nistū", :tc2, "uot")]
          end

          def _imperfect_second_singular_feminine
            [template("νιστου", :c2, "υως̄"), template("nistū", :tc2, "uoš")]
          end

          def _imperfect_third_singular_masculine
            [template("νιστου", :c2, "υω"), template("nistū", :tc2, "uo")]
          end

          def _imperfect_first_plural
            [template("νιστου", :c2, "υων"), template("nistū", :tc2, "uon")]
          end

          def _imperfect_second_plural_masculine
            [template("νιστου", :c2, "υωττυν"), template("nistū", :tc2, "uothun")]
          end

          def _imperfect_second_plural_feminine
            [template("νιστου", :c2, "υωτζζιν"), template("nistū", :tc2, "uočhin")]
          end

          def _pf_subjunctive_first_singular
            [template("в̄ωστοὐ", :c2, "α"), template("vāstū", :tc2, "a")]
          end

          def _pf_subjunctive_first_plural
            [template("в̄ανωστοὐ", :c2, "α"), template("vanāstū", :tc2, "a")]
          end

          def _pf_subjunctive_second
            [template("в̄ατωστοὐ", :c2, "α"), template("vatāstū", :tc2, "a")]
          end

          def _pf_subjunctive_third
            [template("в̄ιωστοὐ", :c2, "α"), template("vyāstū", :tc2, "a")]
          end

          def _impf_subjunctive_first_singular
            [template("ωστου", :c2, "ω'α"), template("'astū", :tc2, "ā'a")]
          end

          def _impf_subjunctive_second_singular_masculine
            [template("τωστου", :c2, "ω'α"), template("tāstū", :tc2, "ā'a")]
          end

          def _impf_subjunctive_second_singular_feminine
            [template("τωστου", :c2, "ω'ιια"), template("tāstū", :tc2, "ā'iya")]
          end

          def _impf_subjunctive_third_singular_masculine
            [template("ιωστου", :c2, "ω'α"), template("yāstū", :tc2, "ā'a")]
          end

          def _impf_subjunctive_third_singular_feminine
            [template("ιωστου", :c2, "ω'ιια"), template("yāstū", :tc2, "ā'iya")]
          end

          def _impf_subjunctive_first_plural
            [template("νωστου", :c2, "ω'υ'υα"), template("nāstū", :tc2, "ā'uwa")]
          end

          def _impf_subjunctive_second_plural
            [template("τωστου", :c2, "ω'υ'υα"), template("tāstū", :tc2, "ā'uwa")]
          end

          def _impf_subjunctive_third_plural
            [template("ιωστου", :c2, "ω'υ'υα"), template("yāstū", :tc2, "ā'uwa")]
          end

          def _volitive_first_singular
            [template("ωστου", :c2, "ωνα"), template("'āstu", :tc2, "āna")]
          end

          def _volitive_second_singular_masculine
            [template("τωστου", :c2, "ωνα"), template("tāstu", :tc2, "āna")]
          end

          def _volitive_third_singular_masculine
            [template("ιωστου", :c2, "ωνα"), template("yāstu", :tc2, "āna")]
          end

          def _infinitive
            [template("μωστου", :c2, "ω"), template("māstū", :tc2, "ā")]
          end

          def _passive_participle
            [template("μουστοὐ", :c2, "α"), template("mūstū", :tc2, "a")]
          end
        end
      end
    end
  end
end
