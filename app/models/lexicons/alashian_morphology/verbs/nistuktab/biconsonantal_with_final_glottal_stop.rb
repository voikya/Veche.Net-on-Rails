require_relative 'biconsonantal'

module Morphology
  module Alashian
    module Verbs
      module Nistuktab
        module BiconsonantalWithFinalGlottalStop
          include Nistuktab::Biconsonantal

          def subtype
            "Biconsonantal Root with C3 = '"
          end

          def _present_first_singular
            [template("ωστυ", :c1, "ω"), template("'āstu", :tc1, "ā")]
          end

          def _present_second_singular_masculine
            [template("τωστυ", :c1, "ω"), template("tāstu", :tc1, "ā")]
          end

          def _present_third_singular_masculine
            [template("ιωστυ", :c1, "ω"), template("yāstu", :tc1, "ā")]
          end

          def _preterite_first_singular
            [template("νιστυ", :c1, "ωτ"), template("nistu", :tc1, "āt")]
          end

          def _preterite_second_singular_masculine
            [template("νιστυ", :c1, "ωττα"), template("nistu", :tc1, "ātha")]
          end

          def _preterite_second_singular_feminine
            [template("νιστυ", :c1, "ωτζζε"), template("nistu", :tc1, "āčhe")]
          end

          def _preterite_third_singular_masculine
            [template("νιστυ", :c1, "ω"), template("nistu", :tc1, "ā")]
          end

          def _preterite_first_plural
            [template("νιστυ", :c1, "ωννω"), template("nistu", :tc1, "ānnā")]
          end

          def _preterite_second_plural_masculine
            [template("νιστυ", :c1, "ωττυν"), template("nistu", :tc1, "āthun")]
          end

          def _preterite_second_plural_feminine
            [template("νιστυ", :c1, "ωτζζιν"), template("nistu", :tc1, "āčhin")]
          end

          def _imperfect_first_singular
            [template("νιστυ", :c1, "υω"), template("nistu", :tc1, "uo")]
          end

          def _imperfect_second_singular_masculine
            [template("νιστυ", :c1, "υωτ"), template("nistu", :tc1, "uot")]
          end

          def _imperfect_second_singular_feminine
            [template("νιστυ", :c1, "υως̄"), template("nistu", :tc1, "uoš")]
          end

          def _imperfect_third_singular_masculine
            [template("νιστυ", :c1, "υω"), template("nistu", :tc1, "uo")]
          end

          def _imperfect_first_plural
            [template("νιστυ", :c1, "υων"), template("nistu", :tc1, "uon")]
          end

          def _imperfect_second_plural_masculine
            [template("νιστυ", :c1, "υωττυν"), template("nistu", :tc1, "uothun")]
          end

          def _imperfect_second_plural_feminine
            [template("νιστυ", :c1, "υωτζζιν"), template("nistu", :tc1, "uočhin")]
          end

          def _pf_subjunctive_first_singular
            [template("в̄ωστυ", :c1, "ω"), template("vāstu", :tc1, "ā")]
          end

          def _pf_subjunctive_first_plural
            [template("в̄ανωστυ", :c1, "ω"), template("vānastu", :tc1, "ā")]
          end

          def _pf_subjunctive_second
            [template("в̄ατωστυ", :c1, "ω"), template("vātastu", :tc1, "ā")]
          end

          def _pf_subjunctive_third
            [template("в̄ιωστυ", :c1, "ω"), template("vyāstu", :tc1, "ā")]
          end

          def _impf_subjunctive_first_singular
            [template("ωστυ", :c1, "ω'α"), template("'āstu", :tc1, "ā'a")]
          end

          def _impf_subjunctive_second_singular_masculine
            [template("τωστυ", :c1, "ω'α"), template("tāstu", :tc1, "ā'a")]
          end

          def _impf_subjunctive_second_singular_feminine
            [template("τωστυ", :c1, "ω'ιια"), template("tāstu", :tc1, "ā'iya")]
          end

          def _impf_subjunctive_third_singular_masculine
            [template("ιωστυ", :c1, "ω'α"), template("yāstu", :tc1, "ā'a")]
          end

          def _impf_subjunctive_third_singular_feminine
            [template("ιωστυ", :c1, "ω'ιια"), template("yāstu", :tc1, "ā'iya")]
          end

          def _impf_subjunctive_first_plural
            [template("νωστυ", :c1, "ω'υ'υα"), template("nāstu", :tc1, "ā'uwa")]
          end

          def _impf_subjunctive_second_plural
            [template("τωστυ", :c1, "ω'υ'υα"), template("tāstu", :tc1, "ā'uwa")]
          end

          def _impf_subjunctive_third_plural
            [template("ιωστυ", :c1, "ω'υ'υα"), template("yāstu", :tc1, "ā'uwa")]
          end

          def _volitive_first_singular
            [template("ωστυ", :c1, "ωνα"), template("'āstu", :tc1, "āna")]
          end

          def _volitive_second_singular_masculine
            [template("τωστυ", :c1, "ωνα"), template("tāstu", :tc1, "āna")]
          end

          def _volitive_third_singular_masculine
            [template("ιωστυ", :c1, "ωνα"), template("yāstu", :tc1, "āna")]
          end

          def _infinitive
            [template("μωστυ", :c1, "ω"), template("māstu", :tc1, "ā")]
          end

          def _passive_participle
            [template("μουστα", :c1, "ου"), template("mūsta", :tc1, "ū")]
          end
        end
      end
    end
  end
end
