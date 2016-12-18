require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Ketheb
        module InitialGlottal
          include Ketheb::Regular

          def subtype
            "C1 = '/H"
          end

          def _present_first_singular
            [template("αια", :c2_geminated_or_aspirated, "α", :c3), template("'ayə", :tc2_geminated_or_aspirated, "a", :tc3)]
          end

          def _present_second_singular_masculine
            [template("τι'α", :c2_geminated_or_aspirated, "α", :c3), template("tiyə", :tc2_geminated_or_aspirated, "a", :tc3)]
          end

          def _present_second_singular_feminine
            if root.final_plosive?
              [template("τι'α", :c2_lenited, :c3, "ει"), template("tiyə", :tc2_lenited, :tc3, "ī")]
            else
              [template("τι'α", :c2, :c3, "ει"), template("tiyə", :tc2, :tc3, "ī")]
            end
          end

          def _present_third_singular_masculine
            [template("ιια", :c2_geminated_or_aspirated, "α", :c3), template("yiyə", :tc2_geminated_or_aspirated, "a", :tc3)]
          end

          def _present_third_singular_feminine
            if root.final_plosive?
              [template("ιια", :c2_lenited, :c3, "ει"), template("yiyə", :tc2_lenited, :tc3, "ī")]
            else
              [template("ιια", :c2, :c3, "ει"), template("yiyə", :tc2, :tc3, "ī")]
            end
          end

          def _present_first_plural
            if root.final_plosive?
              [template("νι'α", :c2_lenited, :c3, "ου"), template("niyə", :tc2_lenited, :tc3, "ū")]
            else
              [template("νι'α", :c2, :c3, "ου"), template("niyə", :tc2, :tc3, "ū")]
            end
          end

          def _present_second_plural
            if root.final_plosive?
              [template("τι'α", :c2_lenited, :c3, "ου"), template("tiyə", :tc2_lenited, :tc3, "ū")]
            else
              [template("τι'α", :c2, :c3, "ου"), template("tiyə", :tc2, :tc3, "ū")]
            end
          end

          def _present_third_plural
            if root.final_plosive?
              [template("ιια", :c2_lenited, :c3, "ου"), template("yiyə", :tc2_lenited, :tc3, "ū")]
            else
              [template("ιια", :c2, :c3, "ου"), template("yiyə", :tc2, :tc3, "ū")]
            end
          end

          def _pf_subjunctive_first_singular
            [template("в̄αια", :c2_geminated_or_aspirated, "ε", :c3), template("vayə", :tc2_geminated_or_aspirated, "e", :tc3)]
          end

          def _pf_subjunctive_first_plural
            [template("в̄ενειια", :c2_geminated_or_aspirated, "ε", :c3), template("venīyə", :tc2_geminated_or_aspirated, "e", :tc3)]
          end

          def _pf_subjunctive_second
            [template("в̄ετειια", :c2_geminated_or_aspirated, "ε", :c3), template("vetīyə", :tc2_geminated_or_aspirated, "e", :tc3)]
          end

          def _pf_subjunctive_third
            [template("в̄ηια", :c2_geminated_or_aspirated, "ε", :c3), template("vēyə", :tc2_geminated_or_aspirated, "e", :tc3)]
          end

          def _impf_subjunctive_first_singular
            [template("αια", :c2_geminated_or_aspirated, "ω", :c3, "α"), template("'ayə", :tc2_geminated_or_aspirated, "ā", :tc3, "a")]
          end

          def _impf_subjunctive_second_singular_masculine
            [template("τια", :c2_geminated_or_aspirated, "ω", :c3, "α"), template("tiyə", :tc2_geminated_or_aspirated, "ā", :tc3, "a")]
          end

          def _impf_subjunctive_second_singular_feminine
            [template("τια", :c2_geminated_or_aspirated, "ω", :c3, "ια"), template("tiyə", :tc2_geminated_or_aspirated, "ā", :tc3, "iya")]
          end

          def _impf_subjunctive_third_singular_masculine
            [template("ιια", :c2_geminated_or_aspirated, "ω", :c3, "α"), template("yiyə", :tc2_geminated_or_aspirated, "ā", :tc3, "a")]
          end

          def _impf_subjunctive_third_singular_feminine
            [template("ιια", :c2_geminated_or_aspirated, "ω", :c3, "ια"), template("yiyə", :tc2_geminated_or_aspirated, "ā", :tc3, "iya")]
          end

          def _impf_subjunctive_first_plural
            [template("νια", :c2_geminated_or_aspirated, "ω", :c3, "υ'α"), template("niyə", :tc2_geminated_or_aspirated, "ā", :tc3, "uwa")]
          end

          def _impf_subjunctive_second_plural
            [template("τια", :c2_geminated_or_aspirated, "ω", :c3, "υ'α"), template("tiyə", :tc2_geminated_or_aspirated, "ā", :tc3, "uwa")]
          end

          def _impf_subjunctive_third_plural
            [template("ιια", :c2_geminated_or_aspirated, "ω", :c3, "υ'α"), template("yiyə", :tc2_geminated_or_aspirated, "ā", :tc3, "uwa")]
          end

          def _infinitive
            [template("μαια", :c2_geminated_or_aspirated, "ου", :c3), template("mayə", :tc2_geminated_or_aspirated, "ū", :tc3)]
          end

          def _active_participle
            [template("μυια", :c2_geminated_or_aspirated, "ι", :c3), template("muyə", :tc2_geminated_or_aspirated, "i", :tc3)]
          end
        end
      end
    end
  end
end
