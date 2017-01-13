require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Staktab
        module FinalW
          include Staktab::Regular

          def subtype
            "C3 = W"
          end

          def _present_first_singular
            if root.medial_plosive?
              [template("αστα", :c1_lenited, :c2, "οὐ"), template("'asta", :tc1_lenited, :tc2, "ū")]
            else
              [template("αστα", :c1, :c2, "οὐ"), template("'asta", :tc1, :tc2, "ū")]
            end
          end

          def _present_second_singular_masculine
            if root.medial_plosive?
              [template("τιστα", :c1_lenited, :c2, "οὐ"), template("tista", :tc1_lenited, :tc2, "ū")]
            else
              [template("τιστα", :c1, :c2, "οὐ"), template("tista", :tc1, :tc2, "ū")]
            end
          end

          def _present_third_singular_masculine
            if root.medial_plosive?
              [template("ιστα", :c1_lenited, :c2, "οὐ"), template("yista", :tc1_lenited, :tc2, "ū")]
            else
              [template("ιστα", :c1, :c2, "οὐ"), template("yista", :tc1, :tc2, "ū")]
            end
          end

          def _preterite_second_singular_masculine
            if root.medial_plosive?
              [template("στα", :c1_lenited, :c2, "οὐτα"), template("sta", :tc1_lenited, :tc2, "ūta")]
            else
              [template("στα", :c1, :c2, "οὐτα"), template("sta", :tc1, :tc2, "ūta")]
            end
          end

          def _preterite_second_singular_feminine
            if root.medial_plosive?
              [template("στα", :c1_lenited, :c2, "οὐσ̄ε"), template("sta", :tc1_lenited, :tc2, "ūše")]
            else
              [template("στα", :c1, :c2, "οὐσ̄ε"), template("sta", :tc1, :tc2, "ūše")]
            end
          end

          def _preterite_third_singular_masculine
            if root.medial_plosive?
              [template("στα", :c1_lenited, :c2, "οὐ"), template("sta", :tc1_lenited, :tc2, "ū")]
            else
              [template("στα", :c1, :c2, "οὐ"), template("sta", :tc1, :tc2, "ū")]
            end
          end

          def _preterite_first_plural
            if root.medial_plosive?
              [template("στα", :c1_lenited, :c2, "ηνω"), template("sta", :tc1_lenited, :tc2, "ūnā")]
            else
              [template("στα", :c1, :c2, "ηνω"), template("sta", :tc1, :tc2, "ūnā")]
            end
          end

          def _preterite_second_singular_masculine
            if root.medial_plosive?
              [template("στα", :c1_lenited, :c2, "οὐτυν"), template("sta", :tc1_lenited, :tc2, "ūtun")]
            else
              [template("στα", :c1, :c2, "οὐτυν"), template("sta", :tc1, :tc2, "ūtun")]
            end
          end

          def _preterite_second_singular_feminine
            if root.medial_plosive?
              [template("στα", :c1_lenited, :c2, "οὐσ̄ιν"), template("sta", :tc1_lenited, :tc2, "ūšin")]
            else
              [template("στα", :c1, :c2, "οὐσ̄ιν"), template("sta", :tc1, :tc2, "ūšin")]
            end
          end

          def _imperfect_first_singular
            if root.medial_plosive?
              [template("στα", :c1_lenited, :c2, "ιη"), template("sta", :tc1_lenited, :tc2, "ie")]
            else
              [template("στα", :c1, :c2, "ιη"), template("sta", :tc1, :tc2, "ie")]
            end
          end

          def _imperfect_second_singular_masculine
            if root.medial_plosive?
              [template("στα", :c1_lenited, :c2, "ιητ"), template("sta", :tc1_lenited, :tc2, "iet")]
            else
              [template("στα", :c1, :c2, "ιητ"), template("sta", :tc1, :tc2, "iet")]
            end
          end

          def _imperfect_second_singular_feminine
            if root.medial_plosive?
              [template("στα", :c1_lenited, :c2, "ιης̄"), template("sta", :tc1_lenited, :tc2, "ieš")]
            else
              [template("στα", :c1, :c2, "ιης̄"), template("sta", :tc1, :tc2, "ieš")]
            end
          end

          def _imperfect_third_singular_masculine
            if root.medial_plosive?
              [template("στα", :c1_lenited, :c2, "ιη"), template("sta", :tc1_lenited, :tc2, "ie")]
            else
              [template("στα", :c1, :c2, "ιη"), template("sta", :tc1, :tc2, "ie")]
            end
          end

          def _imperfect_first_plural
            if root.medial_plosive?
              [template("στα", :c1_lenited, :c2, "ιην"), template("sta", :tc1_lenited, :tc2, "ien")]
            else
              [template("στα", :c1, :c2, "ιην"), template("sta", :tc1, :tc2, "ien")]
            end
          end

          def _imperfect_second_plural_masculine
            if root.medial_plosive?
              [template("στα", :c1_lenited, :c2, "ιητυν"), template("sta", :tc1_lenited, :tc2, "ietun")]
            else
              [template("στα", :c1, :c2, "ιητυν"), template("sta", :tc1, :tc2, "ietun")]
            end
          end

          def _imperfect_second_plural_feminine
            if root.medial_plosive?
              [template("στα", :c1_lenited, :c2, "ιησ̄ιν"), template("sta", :tc1_lenited, :tc2, "iešin")]
            else
              [template("στα", :c1, :c2, "ιησ̄ιν"), template("sta", :tc1, :tc2, "iešin")]
            end
          end

          def _pf_subjunctive_first_singular
            if root.medial_plosive?
              [template("в̄ωστα", :c1_lenited, :c2, "οὐ"), template("vāsta", :tc1_lenited, :tc2, "ū")]
            else
              [template("в̄ωστα", :c1, :c2, "οὐ"), template("vāsta", :tc1, :tc2, "ū")]
            end
          end

          def _pf_subjunctive_first_plural
            if root.medial_plosive?
              [template("в̄ενιστα", :c1_lenited, :c2, "οὐ"), template("venista", :tc1_lenited, :tc2, "ū")]
            else
              [template("в̄ενιστα", :c1, :c2, "οὐ"), template("venista", :tc1, :tc2, "ū")]
            end
          end

          def _pf_subjunctive_second
            if root.medial_plosive?
              [template("в̄ετιστα", :c1_lenited, :c2, "οὐ"), template("vetista", :tc1_lenited, :tc2, "ū")]
            else
              [template("в̄ετιστα", :c1, :c2, "οὐ"), template("vetista", :tc1, :tc2, "ū")]
            end
          end

          def _pf_subjunctive_third
            if root.medial_plosive?
              [template("в̄ηστα", :c1_lenited, :c2, "οὐ"), template("vēsta", :tc1_lenited, :tc2, "ū")]
            else
              [template("в̄ηστα", :c1, :c2, "οὐ"), template("vēsta", :tc1, :tc2, "ū")]
            end
          end

          def _volitive_first_singular
            if root.medial_plosive?
              [template("αστα", :c1_lenited, :c2, "οὐνα"), template("'asta", :tc1_lenited, :tc2, "ūna")]
            else
              [template("αστα", :c1, :c2, "οὐνα"), template("'asta", :tc1, :tc2, "ūna")]
            end
          end

          def _volitive_second_singular_masculine
            if root.medial_plosive?
              [template("τιστα", :c1_lenited, :c2, "οὐνα"), template("tista", :tc1_lenited, :tc2, "ūna")]
            else
              [template("τιστα", :c1, :c2, "οὐνα"), template("tista", :tc1, :tc2, "ūna")]
            end
          end

          def _volitive_third_singular_masculine
            if root.medial_plosive?
              [template("ιστα", :c1_lenited, :c2, "οὐνα"), template("yista", :tc1_lenited, :tc2, "ūna")]
            else
              [template("ιστα", :c1, :c2, "οὐνα"), template("yista", :tc1, :tc2, "ūna")]
            end
          end

          def _imperative_masculine_singular
            if root.medial_plosive?
              [template("εστα", :c1_lenited, :c2, "οὐ"), template("'esta", :tc1_lenited, :tc2, "ū")]
            else
              [template("εστα", :c1, :c2, "οὐ"), template("'esta", :tc1, :tc2, "ū")]
            end
          end

          def _infinitive
            if root.medial_plosive?
              [template("μαστα", :c1_lenited, :c2, "οὐ"), template("masta", :tc1_lenited, :tc2, "ū")]
            else
              [template("μαστα", :c1, :c2, "οὐ"), template("masta", :tc1, :tc2, "ū")]
            end
          end

          def _active_participle
            if root.medial_plosive?
              [template("μυστα", :c1_lenited, :c2, "εἰ"), template("musta", :tc1_lenited, :tc2, "ī")]
            else
              [template("μυστα", :c1, :c2, "εἰ"), template("musta", :tc1, :tc2, "ī")]
            end
          end
        end
      end
    end
  end
end
