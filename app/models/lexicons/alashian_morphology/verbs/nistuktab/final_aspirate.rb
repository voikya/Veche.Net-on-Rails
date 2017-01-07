require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Nistuktab
        module FinalAspirate
          include Nistuktab::Regular

          def subtype
            "C3 = PH/TH/KH/TSH/ČH"
          end

          def _present_first_singular
            if root.medial_plosive?
              [template("ωστυ", :c1_lenited, :c2, "ω", :c3), template("'āstu", :tc1_lenited, :tc2, "ā", :tc3)]
            else
              [template("ωστυ", :c1, :c2, "ω", :c3), template("'āstu", :tc1, :tc2, "ā", :tc3)]
            end
          end

          def _present_second_singular_masculine
            if root.medial_plosive?
              [template("τωστυ", :c1_lenited, :c2, "ω", :c3), template("tāstu", :tc1_lenited, :tc2, "ā", :tc3)]
            else
              [template("τωστυ", :c1, :c2, "ω", :c3), template("tāstu", :tc1, :tc2, "ā", :tc3)]
            end
          end

          def _present_second_singular_feminine
            if root.medial_plosive?
              [template("τωστυ", :c1_lenited, :c2, "α", :c3, "ει"), template("tāstu", :tc1_lenited, :tc2, "ə", :tc3, "ī")]
            else
              [template("τωστυ", :c1, :c2, "α", :c3, "ει"), template("tāstu", :tc1, :tc2, "ə", :tc3, "ī")]
            end
          end

          def _present_third_singular_masculine
            if root.medial_plosive?
              [template("ιωστυ", :c1_lenited, :c2, "ω", :c3), template("yāstu", :tc1_lenited, :tc2, "ā", :tc3)]
            else
              [template("ιωστυ", :c1, :c2, "ω", :c3), template("yāstu", :tc1, :tc2, "ā", :tc3)]
            end
          end

          def _present_third_singular_feminine
            if root.medial_plosive?
              [template("ιωστυ", :c1_lenited, :c2, "α", :c3, "ει"), template("yāstu", :tc1_lenited, :tc2, "ə", :tc3, "ī")]
            else
              [template("ιωστυ", :c1, :c2, "α", :c3, "ει"), template("yāstu", :tc1, :tc2, "ə", :tc3, "ī")]
            end
          end

          def _present_first_plural
            if root.medial_plosive?
              [template("νωστυ", :c1_lenited, :c2, "α", :c3, "ου"), template("nāstu", :tc1_lenited, :tc2, "ə", :tc3, "ū")]
            else
              [template("νωστυ", :c1, :c2, "α", :c3, "ου"), template("nāstu", :tc1, :tc2, "ə", :tc3, "ū")]
            end
          end

          def _present_second_plural
            if root.medial_plosive?
              [template("τωστυ", :c1_lenited, :c2, "α", :c3, "ου"), template("tāstu", :tc1_lenited, :tc2, "ə", :tc3, "ū")]
            else
              [template("τωστυ", :c1, :c2, "α", :c3, "ου"), template("tāstu", :tc1, :tc2, "ə", :tc3, "ū")]
            end
          end

          def _present_third_plural
            if root.medial_plosive?
              [template("ιωστυ", :c1_lenited, :c2, "α", :c3, "ου"), template("yāstu", :tc1_lenited, :tc2, "ə", :tc3, "ū")]
            else
              [template("ιωστυ", :c1, :c2, "α", :c3, "ου"), template("yāstu", :tc1, :tc2, "ə", :tc3, "ū")]
            end
          end

          def _preterite_first_singular
            if root.medial_plosive?
              [template("νιστυ", :c1_lenited, :c2, "ω", :c3, "ετ"), template("nistu", :tc1_lenited, :tc2, "ā", :tc3, "et")]
            else
              [template("νιστυ", :c1, :c2, "ω", :c3, "ετ"), template("nistu", :tc1, :tc2, "ā", :tc3, "et")]
            end
          end

          def _preterite_second_singular_masculine
            if root.medial_plosive?
              [template("νιστυ", :c1_lenited, :c2, "ω", :c3, "αττα"), template("nistu", :tc1_lenited, :tc2, "ā", :tc3, "ətha")]
            else
              [template("νιστυ", :c1, :c2, "ω", :c3, "αττα"), template("nistu", :tc1, :tc2, "ā", :tc3, "ətha")]
            end
          end

          def _preterite_second_singular_feminine
            if root.medial_plosive?
              [template("νιστυ", :c1_lenited, :c2, "ω", :c3, "ατζζε"), template("nistu", :tc1_lenited, :tc2, "ā", :tc3, "əčhe")]
            else
              [template("νιστυ", :c1, :c2, "ω", :c3, "ατζζε"), template("nistu", :tc1, :tc2, "ā", :tc3, "əčhe")]
            end
          end

          def _preterite_third_singular_masculine
            if root.medial_plosive?
              [template("νιστυ", :c1_lenited, :c2, "ω", :c3), template("nistu", :tc1_lenited, :tc2, "ā", :tc3)]
            else
              [template("νιστυ", :c1, :c2, "ω", :c3), template("nistu", :tc1, :tc2, "ā", :tc3)]
            end
          end

          def _preterite_third_singular_feminine
            if root.medial_plosive?
              [template("νιστυ", :c1_lenited, :c2, "ω", :c3, "ω"), template("nistu", :tc1_lenited, :tc2, "ā", :tc3, "ā")]
            else
              [template("νιστυ", :c1, :c2, "ω", :c3, "ω"), template("nistu", :tc1, :tc2, "ā", :tc3, "ā")]
            end
          end

          def _preterite_first_plural
            if root.medial_plosive?
              [template("νιστυ", :c1_lenited, :c2, "ω", :c3_unaspirated, "νω"), template("nistu", :tc1_lenited, :tc2, "ā", :tc3_unaspirated, "nā")]
            else
              [template("νιστυ", :c1, :c2, "ω", :c3_unaspirated, "νω"), template("nistu", :tc1, :tc2, "ā", :tc3_unaspirated, "nā")]
            end
          end

          def _preterite_second_plural_masculine
            if root.medial_plosive?
              [template("νιστυ", :c1_lenited, :c2, "ω", :c3, "αττυν"), template("nistu", :tc1_lenited, :tc2, "ā", :tc3, "əthun")]
            else
              [template("νιστυ", :c1, :c2, "ω", :c3, "αττυν"), template("nistu", :tc1, :tc2, "ā", :tc3, "əthun")]
            end
          end

          def _preterite_second_plural_feminine
            if root.medial_plosive?
              [template("νιστυ", :c1_lenited, :c2, "ω", :c3, "ατζζιν"), template("nistu", :tc1_lenited, :tc2, "ā", :tc3, "əčhin")]
            else
              [template("νιστυ", :c1, :c2, "ω", :c3, "ατζζιν"), template("nistu", :tc1, :tc2, "ā", :tc3, "əčhin")]
            end
          end

          def _preterite_third_plural
            if root.medial_plosive?
              [template("νιστυ", :c1_lenited, :c2, "ω", :c3, "ου"), template("nistu", :tc1_lenited, :tc2, "ā", :tc3, "ū")]
            else
              [template("νιστυ", :c1, :c2, "ω", :c3, "ου"), template("nistu", :tc1, :tc2, "ā", :tc3, "ū")]
            end
          end

          def _imperfect_first_singular
            if root.medial_plosive?
              [template("νιστυ", :c1_lenited, :c2, "υω", :c3), template("nistu", :tc1_lenited, :tc2, "uo", :tc3)]
            else
              [template("νιστυ", :c1, :c2, "υω", :c3), template("nistu", :tc1, :tc2, "uo", :tc3)]
            end
          end

          def _imperfect_second_singular_masculine
            if root.medial_plosive?
              [template("νιστυ", :c1_lenited, :c2, "υω", :c3, "ατ"), template("nistu", :tc1_lenited, :tc2, "uo", :tc3, "at")]
            else
              [template("νιστυ", :c1, :c2, "υω", :c3, "ατ"), template("nistu", :tc1, :tc2, "uo", :tc3, "at")]
            end
          end

          def _imperfect_second_singular_feminine
            if root.medial_plosive?
              [template("νιστυ", :c1_lenited, :c2, "υω", :c3, "ας̄"), template("nistu", :tc1_lenited, :tc2, "uo", :tc3, "aš")]
            else
              [template("νιστυ", :c1, :c2, "υω", :c3, "ας̄"), template("nistu", :tc1, :tc2, "uo", :tc3, "aš")]
            end
          end

          def _imperfect_third_singular_masculine
            if root.medial_plosive?
              [template("νιστυ", :c1_lenited, :c2, "υω", :c3), template("nistu", :tc1_lenited, :tc2, "uo", :tc3)]
            else
              [template("νιστυ", :c1, :c2, "υω", :c3), template("nistu", :tc1, :tc2, "uo", :tc3)]
            end
          end

          def _imperfect_third_singular_feminine
            if root.medial_plosive?
              [template("νιστυ", :c1_lenited, :c2, "υω", :c3, "ω"), template("nistu", :tc1_lenited, :tc2, "uo", :tc3, "ā")]
            else
              [template("νιστυ", :c1, :c2, "υω", :c3, "ω"), template("nistu", :tc1, :tc2, "uo", :tc3, "ā")]
            end
          end

          def _imperfect_first_plural
            if root.medial_plosive?
              [template("νιστυ", :c1_lenited, :c2, "υω", :c3, "αν"), template("nistu", :tc1_lenited, :tc2, "uo", :tc3, "an")]
            else
              [template("νιστυ", :c1, :c2, "υω", :c3, "αν"), template("nistu", :tc1, :tc2, "uo", :tc3, "an")]
            end
          end

          def _imperfect_second_plural_masculine
            if root.medial_plosive?
              [template("νιστυ", :c1_lenited, :c2, "υω", :c3, "αττυν"), template("nistu", :tc1_lenited, :tc2, "uo", :tc3, "əthun")]
            else
              [template("νιστυ", :c1, :c2, "υω", :c3, "αττυν"), template("nistu", :tc1, :tc2, "uo", :tc3, "əthun")]
            end
          end

          def _imperfect_second_plural_feminine
            if root.medial_plosive?
              [template("νιστυ", :c1_lenited, :c2, "υω", :c3, "ατζζιν"), template("nistu", :tc1_lenited, :tc2, "uo", :tc3, "əčhin")]
            else
              [template("νιστυ", :c1, :c2, "υω", :c3, "ατζζιν"), template("nistu", :tc1, :tc2, "uo", :tc3, "əčhin")]
            end
          end

          def _imperfect_third_plural
            if root.medial_plosive?
              [template("νιστυ", :c1_lenited, :c2, "υω", :c3, "ου"), template("nistu", :tc1_lenited, :tc2, "uo", :tc3, "ū")]
            else
              [template("νιστυ", :c1, :c2, "υω", :c3, "ου"), template("nistu", :tc1, :tc2, "uo", :tc3, "ū")]
            end
          end

          def _pf_subjunctive_first_singular
            if root.medial_plosive?
              [template("в̄ωστυ", :c1_lenited, :c2, "α", :c3), template("vāstu", :tc1_lenited, :tc2, "ə", :tc3)]
            else
              [template("в̄ωστυ", :c1, :c2, "α", :c3), template("vāstu", :tc1, :tc2, "ə", :tc3)]
            end
          end

          def _pf_subjunctive_first_plural
            if root.medial_plosive?
              [template("в̄ανωστυ", :c1_lenited, :c2, "α", :c3), template("vanāstu", :tc1_lenited, :tc2, "ə", :tc3)]
            else
              [template("в̄ανωστυ", :c1, :c2, "α", :c3), template("vanāstu", :tc1, :tc2, "ə", :tc3)]
            end
          end

          def _pf_subjunctive_second
            if root.medial_plosive?
              [template("в̄ατωστυ", :c1_lenited, :c2, "α", :c3), template("vatāstu", :tc1_lenited, :tc2, "ə", :tc3)]
            else
              [template("в̄ατωστυ", :c1, :c2, "α", :c3), template("vatāstu", :tc1, :tc2, "ə", :tc3)]
            end
          end

          def _pf_subjunctive_third
            if root.medial_plosive?
              [template("в̄ιωστυ", :c1_lenited, :c2, "α", :c3), template("vyāstu", :tc1_lenited, :tc2, "ə", :tc3)]
            else
              [template("в̄ιωστυ", :c1, :c2, "α", :c3), template("vyāstu", :tc1, :tc2, "ə", :tc3)]
            end
          end

          def _impf_subjunctive_first_singular
            if root.medial_plosive?
              [template("ωστυ", :c1_lenited, :c2, "ω", :c3, "α"), template("'āstu", :tc1_lenited, :tc2, "ā", :tc3, "a")]
            else
              [template("ωστυ", :c1, :c2, "ω", :c3, "α"), template("'āstu", :tc1, :tc2, "ā", :tc3, "a")]
            end
          end

          def _impf_subjunctive_second_singular_masculine
            if root.medial_plosive?
              [template("τωστυ", :c1_lenited, :c2, "ω", :c3, "α"), template("tāstu", :tc1_lenited, :tc2, "ā", :tc3, "a")]
            else
              [template("τωστυ", :c1, :c2, "ω", :c3, "α"), template("tāstu", :tc1, :tc2, "ā", :tc3, "a")]
            end
          end

          def _impf_subjunctive_second_singular_feminine
            if root.medial_plosive?
              [template("τωστυ", :c1_lenited, :c2, "ω", :c3, "ι'α"), template("tāstu", :tc1_lenited, :tc2, "ā", :tc3, "iya")]
            else
              [template("τωστυ", :c1, :c2, "ω", :c3, "ι'α"), template("tāstu", :tc1, :tc2, "ā", :tc3, "iya")]
            end
          end

          def _impf_subjunctive_third_singular_masculine
            if root.medial_plosive?
              [template("ιωστυ", :c1_lenited, :c2, "ω", :c3, "α"), template("yāstu", :tc1_lenited, :tc2, "ā", :tc3, "a")]
            else
              [template("ιωστυ", :c1, :c2, "ω", :c3, "α"), template("yāstu", :tc1, :tc2, "ā", :tc3, "a")]
            end
          end

          def _impf_subjunctive_third_singular_feminine
            if root.medial_plosive?
              [template("ιωστυ", :c1_lenited, :c2, "ω", :c3, "ι'α"), template("yāstu", :tc1_lenited, :tc2, "ā", :tc3, "iya")]
            else
              [template("ιωστυ", :c1, :c2, "ω", :c3, "ι'α"), template("yāstu", :tc1, :tc2, "ā", :tc3, "iya")]
            end
          end

          def _impf_subjunctive_first_plural
            if root.medial_plosive?
              [template("νωστυ", :c1_lenited, :c2, "ω", :c3, "υ'α"), template("nāstu", :tc1_lenited, :tc2, "ā", :tc3, "uwa")]
            else
              [template("νωστυ", :c1, :c2, "ω", :c3, "υ'α"), template("nāstu", :tc1, :tc2, "ā", :tc3, "uwa")]
            end
          end

          def _impf_subjunctive_second_plural
            if root.medial_plosive?
              [template("τωστυ", :c1_lenited, :c2, "ω", :c3, "υ'α"), template("tāstu", :tc1_lenited, :tc2, "ā", :tc3, "uwa")]
            else
              [template("τωστυ", :c1, :c2, "ω", :c3, "υ'α"), template("tāstu", :tc1, :tc2, "ā", :tc3, "uwa")]
            end
          end

          def _impf_subjunctive_third_plural
            if root.medial_plosive?
              [template("ιωστυ", :c1_lenited, :c2, "ω", :c3, "υ'α"), template("yāstu", :tc1_lenited, :tc2, "ā", :tc3, "uwa")]
            else
              [template("ιωστυ", :c1, :c2, "ω", :c3, "υ'α"), template("yāstu", :tc1, :tc2, "ā", :tc3, "uwa")]
            end
          end

          def _volitive_first_singular
            if root.medial_plosive?
              [template("ωστυ", :c1_lenited, :c2, "ω", :c3, "αννα"), template("'āstu", :tc1_lenited, :tc2, "ā", :tc3, "anna")]
            else
              [template("ωστυ", :c1, :c2, "ω", :c3, "αννα"), template("'āstu", :tc1, :tc2, "ā", :tc3, "anna")]
            end
          end

          def _volitive_second_singular_masculine
            if root.medial_plosive?
              [template("τωστυ", :c1_lenited, :c2, "ω", :c3, "αννα"), template("tāstu", :tc1_lenited, :tc2, "ā", :tc3, "anna")]
            else
              [template("τωστυ", :c1, :c2, "ω", :c3, "αννα"), template("tāstu", :tc1, :tc2, "ā", :tc3, "anna")]
            end
          end

          def _volitive_third_singular_masculine
            if root.medial_plosive?
              [template("ιωστυ", :c1_lenited, :c2, "ω", :c3, "αννα"), template("yāstu", :tc1_lenited, :tc2, "ā", :tc3, "anna")]
            else
              [template("ιωστυ", :c1, :c2, "ω", :c3, "αννα"), template("yāstu", :tc1, :tc2, "ā", :tc3, "anna")]
            end
          end

          def _infinitive
            if root.medial_plosive?
              [template("μωστυ", :c1_lenited, :c2, "ω", :c3), template("māstu", :tc1_lenited, :tc2, "ā", :tc3)]
            else
              [template("μωστυ", :c1, :c2, "ω", :c3), template("māstu", :tc1, :tc2, "ā", :tc3)]
            end
          end

          def _passive_participle
            if root.medial_plosive?
              [template("μουστα", :c1_lenited, :c2, "α", :c3), template("mūsta", :tc1_lenited, :tc2, "ə", :tc3)]
            else
              [template("μουστα", :c1, :c2, "α", :c3), template("mūsta", :tc1, :tc2, "ə", :tc3)]
            end
          end
        end
      end
    end
  end
end
