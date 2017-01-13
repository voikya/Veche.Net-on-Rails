require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Nuktab
        module FinalGlottalStop
          include Nuktab::Regular

          def subtype
            "C3 = '"
          end

          def _present_first_singular
            [template("α", :c1, :c1, "υ", :c2, "ω"), template("'a", :tc1, :tc1, "u", :tc2, "ā")]
          end

          def _present_second_singular_masculine
            [template("τι", :c1, :c1, "υ", :c2, "ω"), template("ti", :tc1, :tc1, "u", :tc2, "ā")]
          end

          def _present_third_singular_masculine
            [template("ι", :c1, :c1, "υ", :c2, "ω"), template("yi", :tc1, :tc1, "u", :tc2, "ā")]
          end

          def _preterite_first_singular
            if root.medial_plosive?
              [template("νυ", :c1_lenited, :c2, "ωτ"), template("nu", :tc1_lenited, :tc2, "āt")]
            else
              [template("νυ", :c1, :c2, "ωτ"), template("nu", :tc1, :tc2, "āt")]
            end
          end

          def _preterite_second_singular_masculine
            if root.medial_plosive?
              [template("νυ", :c1_lenited, :c2, "ωττα"), template("nu", :tc1_lenited, :tc2, "ātha")]
            else
              [template("νυ", :c1, :c2, "ωττα"), template("nu", :tc1, :tc2, "ātha")]
            end
          end

          def _preterite_second_singular_feminine
            if root.medial_plosive?
              [template("νυ", :c1_lenited, :c2, "ωτζζε"), template("nu", :tc1_lenited, :tc2, "āčhe")]
            else
              [template("νυ", :c1, :c2, "ωτζζε"), template("nu", :tc1, :tc2, "āčhe")]
            end
          end

          def _preterite_third_singular_masculine
            if root.medial_plosive?
              [template("νυ", :c1_lenited, :c2, "ω"), template("nu", :tc1_lenited, :tc2, "ā")]
            else
              [template("νυ", :c1, :c2, "ω"), template("nu", :tc1, :tc2, "ā")]
            end
          end

          def _preterite_first_plural
            if root.medial_plosive?
              [template("νυ", :c1_lenited, :c2, "ωννω"), template("nu", :tc1_lenited, :tc2, "ānnā")]
            else
              [template("νυ", :c1, :c2, "ωννω"), template("nu", :tc1, :tc2, "ānnā")]
            end
          end

          def _preterite_second_plural_masculine
            if root.medial_plosive?
              [template("νυ", :c1_lenited, :c2, "ωττυν"), template("nu", :tc1_lenited, :tc2, "āthun")]
            else
              [template("νυ", :c1, :c2, "ωττυν"), template("nu", :tc1, :tc2, "āthun")]
            end
          end

          def _preterite_second_plural_feminine
            if root.medial_plosive?
              [template("νυ", :c1_lenited, :c2, "ωτζζιν"), template("nu", :tc1_lenited, :tc2, "āčhin")]
            else
              [template("νυ", :c1, :c2, "ωτζζιν"), template("nu", :tc1, :tc2, "āčhin")]
            end
          end

          def _imperfect_first_singular
            [template("νυ", :c1, "υω", :c2, "α"), template("nu", :tc1, "uo", :tc2, "a")]
          end

          def _imperfect_second_singular_masculine
            [template("νυ", :c1, "υω", :c2, "ὠτ"), template("nu", :tc1, "uo", :tc2, "āt")]
          end

          def _imperfect_second_singular_feminine
            [template("νυ", :c1, "υω", :c2, "ὠς̄"), template("nu", :tc1, "uo", :tc2, "āš")]
          end

          def _imperfect_third_singular_masculine
            [template("νυ", :c1, "ου", :c2, "α"), template("nu", :tc1, "ū", :tc2, "a")]
          end

          def _imperfect_first_plural
            [template("νυ", :c1, "υω", :c2, "ὠν"), template("nu", :tc1, "uo", :tc2, "ān")]
          end

          def _imperfect_second_plural_masculine
            [template("νυ", :c1, "υω", :c2, "αττυν"), template("nu", :tc1, "uo", :tc2, "əthun")]
          end

          def _imperfect_second_plural_feminine
            [template("νυ", :c1, "υω", :c2, "ατζζιν"), template("nu", :tc1, "uo", :tc2, "əčhin")]
          end

          def _pf_subjunctive_first_singular
            [template("в̄α", :c1, :c1, "υ", :c2, "ω"), template("va", :tc1, :tc1, "u", :tc2, "ā")]
          end

          def _pf_subjunctive_first_plural
            [template("в̄ανα", :c1, :c1, "υ", :c2, "ω"), template("vana", :tc1, :tc1, "u", :tc2, "ā")]
          end

          def _pf_subjunctive_second
            [template("в̄ατα", :c1, :c1, "υ", :c2, "ω"), template("vata", :tc1, :tc1, "u", :tc2, "ā")]
          end

          def _pf_subjunctive_third
            [template("в̄η", :c1, :c1, "υ", :c2, "ω"), template("vē", :tc1, :tc1, "u", :tc2, "ā")]
          end

          def _impf_subjunctive_second_singular_feminine
            [template("τι", :c1, :c1, "υ", :c2, "ω", :c3, "ιια"), template("ti", :tc1, :tc1, "u", :tc2, "ā", :tc3, "iya")]
          end

          def _impf_subjunctive_third_singular_feminine
            [template("ι", :c1, :c1, "υ", :c2, "ω", :c3, "ιια"), template("yi", :tc1, :tc1, "u", :tc2, "ā", :tc3, "iya")]
          end

          def _impf_subjunctive_first_plural
            [template("νι", :c1, :c1, "υ", :c2, "ω", :c3, "υυα"), template("ni", :tc1, :tc1, "u", :tc2, "ā", :tc3, "uwa")]
          end

          def _impf_subjunctive_second_plural
            [template("τι", :c1, :c1, "υ", :c2, "ω", :c3, "υυα"), template("ti", :tc1, :tc1, "u", :tc2, "ā", :tc3, "uwa")]
          end

          def _impf_subjunctive_third_plural
            [template("ι", :c1, :c1, "υ", :c2, "ω", :c3, "υυα"), template("yi", :tc1, :tc1, "u", :tc2, "ā", :tc3, "uwa")]
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
            [template("νι", :c1, "υ", :c2, "ω"), template("ni", :tc1, "u", :tc2, "ā")]
          end

          def _infinitive
            [template("μα", :c1, :c1, "υ", :c2, "ω"), template("ma", :tc1, :tc1, "u", :tc2, "ā")]
          end

          def _passive_participle
            if root.medial_plosive?
              [template("να", :c1_lenited, :c2, "ι"), template("na", :tc1_lenited, :tc2, "i")]
            else
              [template("να", :c1, :c2, "ι"), template("na", :tc1, :tc2, "i")]
            end
          end
        end
      end
    end
  end
end
