require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Staktab
        module Geminate
          include Staktab::Regular

          def subtype
            "Geminated Root"
          end

          def _present_first_singular
            [template("αστα", :c1, "α", :c2), template("'asta", :tc1, "a", :tc2)]
          end

          def _present_second_singular_masculine
            [template("τιστα", :c1, "α", :c2), template("tista", :tc1, "a", :tc2)]
          end

          def _present_third_singular_masculine
            [template("ιστα", :c1, "α", :c2), template("yista", :tc1, "a", :tc2)]
          end

          def _preterite_second_singular_masculine
            [template("στα", :c1, "α", :c2_lenited, "τα"), template("sta", :tc1, "a", :tc2_lenited, "ta")]
          end

          def _preterite_second_singular_feminine
            [template("στα", :c1, "α", :c2_lenited, "σ̄ε"), template("sta", :tc1, "a", :tc2_lenited, "še")]
          end

          def _preterite_third_singular_masculine
            [template("στα", :c1, "α", :c2), template("sta", :tc1, "a", :tc2)]
          end

          def _preterite_first_plural
            [template("στα", :c1, "α", :c2, "νω"), template("sta", :tc1, "a", :tc2, "nā")]
          end

          def _preterite_second_plural_masculine
            [template("στα", :c1, "α", :c2_lenited, "τυν"), template("sta", :tc1, "a", :tc2_lenited, "tun")]
          end

          def _preterite_second_plural_feminine
            [template("στα", :c1, "α", :c2_lenited, "σ̄ιν"), template("sta", :tc1, "a", :tc2_lenited, "šin")]
          end

          def _imperfect_first_singular
            [template("στα", :c1, "ιη", :c2_lenited), template("sta", :tc1, "ie", :tc2_lenited)]
          end

          def _imperfect_second_singular_masculine
            [template("στα", :c1, "ιη", :c2_lenited, :c2_lenited, "ετ"), template("sta", :tc1, "ie", :tc2_lenited, :tc2_lenited, "et")]
          end

          def _imperfect_second_singular_feminine
            [template("στα", :c1, "ιη", :c2_lenited, :c2_lenited, "ες̄"), template("sta", :tc1, "ie", :tc2_lenited, :tc2_lenited, "eš")]
          end

          def _imperfect_third_singular_masculine
            [template("στα", :c1, "ιη", :c2), template("sta", :tc1, "ie", :tc2)]
          end

          def _imperfect_first_plural
            [template("στα", :c1, "ιη", :c2_lenited, :c2_lenited, "εν"), template("sta", :tc1, "ie", :tc2_lenited, :tc2_lenited, "en")]
          end

          def _imperfect_second_plural_masculine
            [template("στα", :c1, "ιη", :c2_lenited, "τυν"), template("sta", :tc1, "ie", :tc2_lenited, "tun")]
          end

          def _imperfect_second_plural_feminine
            [template("στα", :c1, "ιη", :c2_lenited, "σ̄ιν"), template("sta", :tc1, "ie", :tc2_lenited, "šin")]
          end

          def _pf_subjunctive_first_singular
            [template("в̄ωστα", :c1, "α", :c2), template("vāsta", :tc1, "a", :tc2)]
          end

          def _pf_subjunctive_first_plural
            [template("в̄ενιστα", :c1, "α", :c2), template("venista", :tc1, "a", :tc2)]
          end

          def _pf_subjunctive_second
            [template("в̄ετιστα", :c1, "α", :c2), template("vetista", :tc1, "a", :tc2)]
          end

          def _pf_subjunctive_third
            [template("в̄ηστα", :c1, "α", :c2), template("vēsta", :tc1, "a", :tc2)]
          end

          def _imperative_masculine_singular
            [template("εστα", :c1, "α", :c2), template("'esta", :tc1, "a", :tc2)]
          end

          def _infinitive
            [template("μαστα", :c1, "α", :c2), template("masta", :tc1, "a", :tc2)]
          end

          def _active_participle
            [template("μυστα", :c1, "ου", :c2), template("musta", :tc1, "ū", :tc2)]
          end

          private

          def stem(lenition: nil)
            template("στα", :c1, "α", :c2, :c2)
          end

          def stem_transliterated(lenition: nil)
            template("sta", :tc1, "a", :tc2, :tc2)
          end

          def imperfect_stem(lenition: nil)
            template("στα", :c1, "ιη", :c2, :c2)
          end

          def imperfect_stem_transliterated(lenition: nil)
            template("sta", :tc1, "ie", :tc2, :tc2)
          end
        end
      end
    end
  end
end
