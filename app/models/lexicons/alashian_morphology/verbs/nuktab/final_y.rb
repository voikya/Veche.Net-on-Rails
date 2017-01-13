require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Nuktab
        module FinalY
          include Nuktab::Regular

          def subtype
            "C3 = Y"
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
              [template("νυ", :c1_lenited, :c2, "ητ"), template("nu", :tc1_lenited, :tc2, "ēt")]
            else
              [template("νυ", :c1, :c2, "ητ"), template("nu", :tc1, :tc2, "ēt")]
            end
          end

          def _preterite_second_singular_masculine
            if root.medial_plosive?
              [template("νυ", :c1_lenited, :c2, "ητα"), template("nu", :tc1_lenited, :tc2, "ēta")]
            else
              [template("νυ", :c1, :c2, "ητα"), template("nu", :tc1, :tc2, "ēta")]
            end
          end

          def _preterite_second_singular_feminine
            if root.medial_plosive?
              [template("νυ", :c1_lenited, :c2, "ησ̄ε"), template("nu", :tc1_lenited, :tc2, "ēše")]
            else
              [template("νυ", :c1, :c2, "ησ̄ε"), template("nu", :tc1, :tc2, "ēše")]
            end
          end

          def _preterite_third_singular_masculine
            if root.medial_plosive?
              [template("νυ", :c1_lenited, :c2, "η"), template("nu", :tc1_lenited, :tc2, "ē")]
            else
              [template("νυ", :c1, :c2, "η"), template("nu", :tc1, :tc2, "ē")]
            end
          end

          def _preterite_first_plural
            if root.medial_plosive?
              [template("νυ", :c1_lenited, :c2, "ηνω"), template("nu", :tc1_lenited, :tc2, "ēnā")]
            else
              [template("νυ", :c1, :c2, "ηνω"), template("nu", :tc1, :tc2, "ēnā")]
            end
          end

          def _preterite_second_plural_masculine
            if root.medial_plosive?
              [template("νυ", :c1_lenited, :c2, "ητυν"), template("nu", :tc1_lenited, :tc2, "ētun")]
            else
              [template("νυ", :c1, :c2, "ητυν"), template("nu", :tc1, :tc2, "ētun")]
            end
          end

          def _preterite_second_plural_feminine
            if root.medial_plosive?
              [template("νυ", :c1_lenited, :c2, "ησ̄ιν"), template("nu", :tc1_lenited, :tc2, "ēšin")]
            else
              [template("νυ", :c1, :c2, "ησ̄ιν"), template("nu", :tc1, :tc2, "ēšin")]
            end
          end

          def _imperfect_first_singular
            [template("νυ", :c1, "υω", :c2, "η"), template("nu", :tc1, "uo", :tc2, "ē")]
          end

          def _imperfect_second_singular_masculine
            [template("νυ", :c1, "υω", :c2, "ητ"), template("nu", :tc1, "uo", :tc2, "ēt")]
          end

          def _imperfect_second_singular_feminine
            [template("νυ", :c1, "υω", :c2, "ης̄"), template("nu", :tc1, "uo", :tc2, "ēš")]
          end

          def _imperfect_third_singular_masculine
            [template("νυ", :c1, "ου", :c2, "η"), template("nu", :tc1, "ū", :tc2, "ē")]
          end

          def _imperfect_third_singular_feminine
            [template("νυ", :c1, "ου", :c2, "ω"), template("nu", :tc1, "ū", :tc2, "ā")]
          end

          def _imperfect_first_plural
            [template("νυ", :c1, "υω", :c2, "ην"), template("nu", :tc1, "uo", :tc2, "ēn")]
          end

          def _imperfect_second_plural_masculine
            [template("νυ", :c1, "υω", :c2, "ητυν"), template("nu", :tc1, "uo", :tc2, "ētun")]
          end

          def _imperfect_second_plural_feminine
            [template("νυ", :c1, "υω", :c2, "ησ̄ιν"), template("nu", :tc1, "uo", :tc2, "ēšin")]
          end

          def _imperfect_third_plural
            [template("νυ", :c1, "ου", :c2, "ου"), template("nu", :tc1, "ū", :tc2, "ū")]
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
            [template("νι", :c1, "υ", :c2, "η"), template("ni", :tc1, "u", :tc2, "ē")]
          end

          def _infinitive
            [template("μα", :c1, :c1, "υ", :c2, "η"), template("ma", :tc1, :tc1, "u", :tc2, "ē")]
          end

          def _passive_participle
            if root.medial_plosive?
              [template("να", :c1_lenited, :c2, "εἰ"), template("na", :tc1_lenited, :tc2, "ī")]
            else
              [template("να", :c1, :c2, "εἰ"), template("na", :tc1, :tc2, "ī")]
            end
          end
        end
      end
    end
  end
end
