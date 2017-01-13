require_relative 'medial_ř'

module Morphology
  module Alashian
    module Verbs
      module Ketheb
        module InitialGlottalAndMedialR
          include Ketheb::MedialR

          def subtype
            "C1 = '/H, C2 = Ř"
          end

          def _present_first_singular
            [template("αια", :c2, "α", :c3), template("'ayə", :tc2, "a", :tc3)]
          end

          def _present_second_singular_masculine
            [template("τι'α", :c2, "α", :c3), template("tiyə", :tc2, "a", :tc3)]
          end

          def _present_second_singular_feminine
            [template("τι'α", :c2, :c3, "ει"), template("tiyə", :tc2, :tc3, "ī")]
          end

          def _present_third_singular_masculine
            [template("ιια", :c2, "α", :c3), template("yiyə", :tc2, "a", :tc3)]
          end

          def _present_third_singular_feminine
            [template("ιια", :c2, :c3, "ει"), template("yiyə", :tc2, :tc3, "ī")]
          end

          def _present_first_plural
            [template("νι'α", :c2, :c3, "ου"), template("niyə", :tc2, :tc3, "ū")]
          end

          def _present_second_plural
            [template("τι'α", :c2, :c3, "ου"), template("tiyə", :tc2, :tc3, "ū")]
          end

          def _present_third_plural
            [template("ιια", :c2, :c3, "ου"), template("yiyə", :tc2, :tc3, "ū")]
          end

          def _pf_subjunctive_first_singular
            [template("в̄αια", :c2, "ε", :c3), template("vayə", :tc2, "e", :tc3)]
          end

          def _pf_subjunctive_first_plural
            [template("в̄ενειια", :c2, "ε", :c3), template("venīyə", :tc2, "e", :tc3)]
          end

          def _pf_subjunctive_second
            [template("в̄ετειια", :c2, "ε", :c3), template("vetīyə", :tc2, "e", :tc3)]
          end

          def _pf_subjunctive_third
            [template("в̄ηια", :c2, "ε", :c3), template("vēyə", :tc2, "e", :tc3)]
          end

          def _impf_subjunctive_first_singular
            [template("αια", :c2, "ω", :c3, "α"), template("'ayə", :tc2, "ā", :tc3, "a")]
          end

          def _impf_subjunctive_second_singular_masculine
            [template("τια", :c2, "ω", :c3, "α"), template("tiyə", :tc2, "ā", :tc3, "a")]
          end

          def _impf_subjunctive_second_singular_feminine
            [template("τια", :c2, "ω", :c3, "ια"), template("tiyə", :tc2, "ā", :tc3, "iya")]
          end

          def _impf_subjunctive_third_singular_masculine
            [template("ιια", :c2, "ω", :c3, "α"), template("yiyə", :tc2, "ā", :tc3, "a")]
          end

          def _impf_subjunctive_third_singular_feminine
            [template("ιια", :c2, "ω", :c3, "ια"), template("yiyə", :tc2, "ā", :tc3, "iya")]
          end

          def _impf_subjunctive_first_plural
            [template("νια", :c2, "ω", :c3, "υ'α"), template("niyə", :tc2, "ā", :tc3, "uwa")]
          end

          def _impf_subjunctive_second_plural
            [template("τια", :c2, "ω", :c3, "υ'α"), template("tiyə", :tc2, "ā", :tc3, "uwa")]
          end

          def _impf_subjunctive_third_plural
            [template("ιια", :c2, "ω", :c3, "υ'α"), template("yiyə", :tc2, "ā", :tc3, "uwa")]
          end

          def _infinitive
            [template("μαια", :c2, "ου", :c3), template("mayə", :tc2, "ū", :tc3)]
          end

          def _active_participle
            [template("μυια", :c2, "ι", :c3), template("muyə", :tc2, "i", :tc3)]
          end
        end
      end
    end
  end
end
