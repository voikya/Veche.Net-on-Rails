require_relative 'biconsonantal'

module Morphology
  module Alashian
    module Verbs
      module Staktab
        module BiconsonantalWithFinalGlottalStop
          include Staktab::Biconsonantal

          def subtype
            "Biconsonantal Root with C3 = '"
          end

          def _present_first_singular
            [template("αστα", :c1, :v), template("'asta", :tc1, :tv)]
          end

          def _present_second_singular_masculine
            [template("τιστα", :c1, :v), template("tista", :tc1, :tv)]
          end

          def _present_third_singular_masculine
            [template("ιστα", :c1, :v), template("yista", :tc1, :tv)]
          end

          def _preterite_first_singular
            [template("στα", :c1, :v, "τ"), template("sta", :tc1, :tv, "t")]
          end

          def _preterite_second_singular_masculine
            [template("στα", :c1, :v, "ττα"), template("sta", :tc1, :tv, "tha")]
          end

          def _preterite_second_singular_feminine
            [template("στα", :c1, :v, "τζζε"), template("sta", :tc1, :tv, "čhe")]
          end

          def _preterite_third_singular_masculine
            [template("στα", :c1, :v), template("sta", :tc1, :tv)]
          end

          def _preterite_first_plural
            [template("στα", :c1, :v, "ννω"), template("sta", :tc1, :tv, "nnā")]
          end

          def _preterite_second_plural_masculine
            [template("στα", :c1, :v, "ττυν"), template("sta", :tc1, :tv, "thun")]
          end

          def _preterite_second_plural_feminine
            [template("στα", :c1, :v, "τζζιν"), template("sta", :tc1, :tv, "čhin")]
          end

          def _imperfect_first_singular
            [template("στα", :c1, "ιη"), template("sta", :tc1, "ie")]
          end

          def _imperfect_second_singular_masculine
            [template("στα", :c1, "ιητ"), template("sta", :tc1, "iet")]
          end

          def _imperfect_second_singular_feminine
            [template("στα", :c1, "ιης̄"), template("sta", :tc1, "ieš")]
          end

          def _imperfect_third_singular_masculine
            [template("στα", :c1, "ιη"), template("sta", :tc1, "ie")]
          end

          def _imperfect_first_plural
            [template("στα", :c1, "ιην"), template("sta", :tc1, "ien")]
          end

          def _imperfect_second_plural_masculine
            [template("στα", :c1, "ιηττυν"), template("sta", :tc1, "iethun")]
          end

          def _imperfect_second_plural_feminine
            [template("στα", :c1, "ιητζζιν"), template("sta", :tc1, "iečhin")]
          end

          def _pf_subjunctive_first_singular
            [template("в̄ωστα", :c1, :v), template("vāsta", :tc1, :tv)]
          end

          def _pf_subjunctive_first_plural
            [template("в̄ενιστα", :c1, :v), template("venista", :tc1, :tv)]
          end

          def _pf_subjunctive_second
            [template("в̄ετιστα", :c1, :v), template("vetista", :tc1, :tv)]
          end

          def _pf_subjunctive_third
            [template("в̄ηστα", :c1, :v), template("vēsta", :tc1, :tv)]
          end

          def _impf_subjunctive_first_singular
            [template("αστα", :c1, :v, "'α"), template("'asta", :tc1, :tv, "'a")]
          end

          def _impf_subjunctive_second_singular_masculine
            [template("τιστα", :c1, :v, "'α"), template("tista", :tc1, :tv, "'a")]
          end

          def _impf_subjunctive_second_singular_feminine
            [template("τιστα", :c1, :v, "'ιια"), template("tista", :tc1, :tv, "'iya")]
          end

          def _impf_subjunctive_third_singular_masculine
            [template("ιστα", :c1, :v, "'α"), template("yista", :tc1, :tv, "'a")]
          end

          def _impf_subjunctive_third_singular_feminine
            [template("ιστα", :c1, :v, "'ιια"), template("yista", :tc1, :tv, "'iya")]
          end

          def _impf_subjunctive_first_plural
            [template("νιστα", :c1, :v, "'υ'υα"), template("nista", :tc1, :tv, "'uwa")]
          end

          def _impf_subjunctive_second_plural
            [template("τιστα", :c1, :v, "'υ'υα"), template("tista", :tc1, :tv, "'uwa")]
          end

          def _impf_subjunctive_third_plural
            [template("ιστα", :c1, :v, "'υ'υα"), template("yista", :tc1, :tv, "'uwa")]
          end

          def _volitive_first_singular
            [template("αστα", :c1, :v, "να"), template("'asta", :tc1, :tv, "na")]
          end

          def _volitive_second_singular_masculine
            [template("τιστα", :c1, :v, "να"), template("tista", :tc1, :tv, "na")]
          end

          def _volitive_third_singular_masculine
            [template("ιστα", :c1, :v, "να"), template("yista", :tc1, :tv, "na")]
          end

          def _imperative_masculine_singular
            [template("εστα", :c1, :v), template("'esta", :tc1, :tv)]
          end

          def _infinitive
            [template("μαστα", :c1, :v), template("masta", :tc1, :tv)]
          end

          def _active_participle
            [template("μυστα", :c1, "ου"), template("musta", :tc1, "ū")]
          end
        end
      end
    end
  end
end
