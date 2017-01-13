require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Nistuktab
        module FinalGlottalStop
          include Nistuktab::Regular

          def subtype
            "C3 = '"
          end

          def _present_first_singular
            if root.medial_plosive?
              [template("ωστυ", :c1_lenited, :c2, "ω"), template("'āstu", :tc1_lenited, :tc2, "ā")]
            else
              [template("ωστυ", :c1, :c2, "ω"), template("'āstu", :tc1, :tc2, "ā")]
            end
          end

          def _present_second_singular_masculine
            if root.medial_plosive?
              [template("τωστυ", :c1_lenited, :c2, "ω"), template("tāstu", :tc1_lenited, :tc2, "ā")]
            else
              [template("τωστυ", :c1, :c2, "ω"), template("tāstu", :tc1, :tc2, "ā")]
            end
          end

          def _present_third_singular_masculine
            if root.medial_plosive?
              [template("ιωστυ", :c1_lenited, :c2, "ω"), template("yāstu", :tc1_lenited, :tc2, "ā")]
            else
              [template("ιωστυ", :c1, :c2, "ω"), template("yāstu", :tc1, :tc2, "ā")]
            end
          end

          def _preterite_second_singular_masculine
            if root.medial_plosive?
              [template("νιστυ", :c1_lenited, :c2, "ωττα"), template("nistu", :tc1_lenited, :tc2, "ātha")]
            else
              [template("νιστυ", :c1, :c2, "ωττα"), template("nistu", :tc1, :tc2, "ātha")]
            end
          end

          def _preterite_second_singular_feminine
            if root.medial_plosive?
              [template("νιστυ", :c1_lenited, :c2, "ωτζζε"), template("nistu", :tc1_lenited, :tc2, "āčhe")]
            else
              [template("νιστυ", :c1, :c2, "ωτζζε"), template("nistu", :tc1, :tc2, "āčhe")]
            end
          end

          def _preterite_third_singular_masculine
            if root.medial_plosive?
              [template("νιστυ", :c1_lenited, :c2, "ω"), template("nistu", :tc1_lenited, :tc2, "ā")]
            else
              [template("νιστυ", :c1, :c2, "ω"), template("nistu", :tc1, :tc2, "ā")]
            end
          end

          def _preterite_first_plural
            if root.medial_plosive?
              [template("νιστυ", :c1_lenited, :c2, "ωννω"), template("nistu", :tc1_lenited, :tc2, "ānnā")]
            else
              [template("νιστυ", :c1, :c2, "ωννω"), template("nistu", :tc1, :tc2, "ānnā")]
            end
          end

          def _preterite_second_plural_masculine
            if root.medial_plosive?
              [template("νιστυ", :c1_lenited, :c2, "ωττυν"), template("nistu", :tc1_lenited, :tc2, "āthun")]
            else
              [template("νιστυ", :c1, :c2, "ωττυν"), template("nistu", :tc1, :tc2, "āthun")]
            end
          end

          def _preterite_second_plural_feminine
            if root.medial_plosive?
              [template("νιστυ", :c1_lenited, :c2, "ωτζζιν"), template("nistu", :tc1_lenited, :tc2, "āčhin")]
            else
              [template("νιστυ", :c1, :c2, "ωτζζιν"), template("nistu", :tc1, :tc2, "āčhin")]
            end
          end

          def _imperfect_first_singular
            if root.medial_plosive?
              [template("νιστυ", :c1_lenited, :c2, "υω"), template("nistu", :tc1_lenited, :tc2, "uo")]
            else
              [template("νιστυ", :c1, :c2, "υω"), template("nistu", :tc1, :tc2, "uo")]
            end
          end

          def _imperfect_second_singular_masculine
            if root.medial_plosive?
              [template("νιστυ", :c1_lenited, :c2, "υωτ"), template("nistu", :tc1_lenited, :tc2, "uot")]
            else
              [template("νιστυ", :c1, :c2, "υωτ"), template("nistu", :tc1, :tc2, "uot")]
            end
          end

          def _imperfect_second_singular_feminine
            if root.medial_plosive?
              [template("νιστυ", :c1_lenited, :c2, "υως̄"), template("nistu", :tc1_lenited, :tc2, "uoš")]
            else
              [template("νιστυ", :c1, :c2, "υως̄"), template("nistu", :tc1, :tc2, "uoš")]
            end
          end

          def _imperfect_third_singular_masculine
            if root.medial_plosive?
              [template("νιστυ", :c1_lenited, :c2, "υω"), template("nistu", :tc1_lenited, :tc2, "uo")]
            else
              [template("νιστυ", :c1, :c2, "υω"), template("nistu", :tc1, :tc2, "uo")]
            end
          end

          def _imperfect_first_plural
            if root.medial_plosive?
              [template("νιστυ", :c1_lenited, :c2, "υων"), template("nistu", :tc1_lenited, :tc2, "uon")]
            else
              [template("νιστυ", :c1, :c2, "υων"), template("nistu", :tc1, :tc2, "uon")]
            end
          end

          def _imperfect_second_plural_masculine
            if root.medial_plosive?
              [template("νιστυ", :c1_lenited, :c2, "υωττυν"), template("nistu", :tc1_lenited, :tc2, "uothun")]
            else
              [template("νιστυ", :c1, :c2, "υωττυν"), template("nistu", :tc1, :tc2, "uothun")]
            end
          end

          def _imperfect_second_plural_feminine
            if root.medial_plosive?
              [template("νιστυ", :c1_lenited, :c2, "υωτζζιν"), template("nistu", :tc1_lenited, :tc2, "uočhin")]
            else
              [template("νιστυ", :c1, :c2, "υωτζζιν"), template("nistu", :tc1, :tc2, "uočhin")]
            end
          end

          def _pf_subjunctive_first_singular
            if root.medial_plosive?
              [template("в̄ωστυ", :c1_lenited, :c2, "α"), template("vāstu", :tc1_lenited, :tc2, "a")]
            else
              [template("в̄ωστυ", :c1, :c2, "α"), template("vāstu", :tc1, :tc2, "a")]
            end
          end

          def _pf_subjunctive_first_plural
            if root.medial_plosive?
              [template("в̄ανωστυ", :c1_lenited, :c2, "α"), template("vanāstu", :tc1_lenited, :tc2, "a")]
            else
              [template("в̄ανωστυ", :c1, :c2, "α"), template("vanāstu", :tc1, :tc2, "a")]
            end
          end

          def _pf_subjunctive_second
            if root.medial_plosive?
              [template("в̄ατωστυ", :c1_lenited, :c2, "α"), template("vatāstu", :tc1_lenited, :tc2, "a")]
            else
              [template("в̄ατωστυ", :c1, :c2, "α"), template("vatāstu", :tc1, :tc2, "a")]
            end
          end

          def _pf_subjunctive_third
            if root.medial_plosive?
              [template("в̄ιωστυ", :c1_lenited, :c2, "α"), template("vyāstu", :tc1_lenited, :tc2, "a")]
            else
              [template("в̄ιωστυ", :c1, :c2, "α"), template("vyāstu", :tc1, :tc2, "a")]
            end
          end

          def _impf_subjunctive_first_singular
            if root.medial_plosive?
              [template("ωστυ", :c1_lenited, :c2, "ω'α"), template("'āstu", :tc1_lenited, :tc2, "ā'a")]
            else
              [template("ωστυ", :c1, :c2, "ω'α"), template("'astu", :tc1, :tc2, "ā'a")]
            end
          end

          def _impf_subjunctive_second_singular_masculine
            if root.medial_plosive?
              [template("τωστυ", :c1_lenited, :c2, "ω'α"), template("tāstu", :tc1_lenited, :tc2, "ā'a")]
            else
              [template("τωστυ", :c1, :c2, "ω'α"), template("tāstu", :tc1, :tc2, "ā'a")]
            end
          end

          def _impf_subjunctive_second_singular_feminine
            if root.medial_plosive?
              [template("τωστυ", :c1_lenited, :c2, "ω'ιια"), template("tāstu", :tc1_lenited, :tc2, "ā'iya")]
            else
              [template("τωστυ", :c1, :c2, "ω'ιια"), template("tāstu", :tc1, :tc2, "ā'iya")]
            end
          end

          def _impf_subjunctive_third_singular_masculine
            if root.medial_plosive?
              [template("ιωστυ", :c1_lenited, :c2, "ω'α"), template("yāstu", :tc1_lenited, :tc2, "ā'a")]
            else
              [template("ιωστυ", :c1, :c2, "ω'α"), template("yāstu", :tc1, :tc2, "ā'a")]
            end
          end

          def _impf_subjunctive_third_singular_feminine
            if root.medial_plosive?
              [template("ιωστυ", :c1_lenited, :c2, "ω'ιια"), template("yāstu", :tc1_lenited, :tc2, "ā'iya")]
            else
              [template("ιωστυ", :c1, :c2, "ω'ιια"), template("yāstu", :tc1, :tc2, "ā'iya")]
            end
          end

          def _impf_subjunctive_first_plural
            if root.medial_plosive?
              [template("νωστυ", :c1_lenited, :c2, "ω'υ'υα"), template("nāstu", :tc1_lenited, :tc2, "ā'uwa")]
            else
              [template("νωστυ", :c1, :c2, "ω'υ'υα"), template("nāstu", :tc1, :tc2, "ā'uwa")]
            end
          end

          def _impf_subjunctive_second_plural
            if root.medial_plosive?
              [template("τωστυ", :c1_lenited, :c2, "ω'υ'υα"), template("tāstu", :tc1_lenited, :tc2, "ā'uwa")]
            else
              [template("τωστυ", :c1, :c2, "ω'υ'υα"), template("tāstu", :tc1, :tc2, "ā'uwa")]
            end
          end

          def _impf_subjunctive_third_plural
            if root.medial_plosive?
              [template("ιωστυ", :c1_lenited, :c2, "ω'υ'υα"), template("yāstu", :tc1_lenited, :tc2, "ā'uwa")]
            else
              [template("ιωστυ", :c1, :c2, "ω'υ'υα"), template("yāstu", :tc1, :tc2, "ā'uwa")]
            end
          end

          def _volitive_first_singular
            if root.medial_plosive?
              [template("ωστυ", :c1_lenited, :c2, "ωνα"), template("'āstu", :tc1_lenited, :tc2, "āna")]
            else
              [template("ωστυ", :c1, :c2, "ωνα"), template("'āstu", :tc1, :tc2, "āna")]
            end
          end

          def _volitive_second_singular_masculine
            if root.medial_plosive?
              [template("τωστυ", :c1_lenited, :c2, "ωνα"), template("tāstu", :tc1_lenited, :tc2, "āna")]
            else
              [template("τωστυ", :c1, :c2, "ωνα"), template("tāstu", :tc1, :tc2, "āna")]
            end
          end

          def _volitive_third_singular_masculine
            if root.medial_plosive?
              [template("ιωστυ", :c1_lenited, :c2, "ωνα"), template("yāstu", :tc1_lenited, :tc2, "āna")]
            else
              [template("ιωστυ", :c1, :c2, "ωνα"), template("yāstu", :tc1, :tc2, "āna")]
            end
          end

          def _infinitive
            if root.medial_plosive?
              [template("μωστυ", :c1_lenited, :c2, "ω"), template("māstu", :tc1_lenited, :tc2, "ā")]
            else
              [template("μωστυ", :c1, :c2, "ω"), template("māstu", :tc1, :tc2, "ā")]
            end
          end

          def _passive_participle
            if root.medial_plosive?
              [template("μουστα", :c1_lenited, :c2, "α"), template("mūsta", :tc1_lenited, :tc2, "a")]
            else
              [template("μουστα", :c1, :c2, "α"), template("mūsta", :tc1, :tc2, "a")]
            end
          end
        end
      end
    end
  end
end
