module Morphology
  module Alashian
    module Verbs
      module Irregular
        module Bu
          def conjugation
            "Active Scale I Verb"
          end

          def subtype
            "Irregular"
          end

          def _present_first_singular
            ["αβου", "'abū"]
          end

          def _present_second_singular_masculine
            ["τιβου", "tibū"]
          end

          def _present_second_singular_feminine
            ["τιβει", "tibī"]
          end

          def _present_third_singular_masculine
            ["ιβου", "yibū"]
          end

          def _present_third_singular_feminine
            ["ιβει", "yibī"]
          end

          def _present_first_plural
            ["νιβου", "nibū"]
          end

          def _present_second_plural
            ["τιβου", "tibū"]
          end

          def _present_third_plural
            ["ιβου", "yibū"]
          end

          def _preterite_first_singular
            ["βυωτ", "buot"]
          end

          def _preterite_second_singular_masculine
            ["βουττα", "būtha"]
          end

          def _preterite_second_singular_feminine
            ["βουτζζε", "būčhe"]
          end

          def _preterite_third_singular_masculine
            ["βου", "bū"]
          end

          def _preterite_third_singular_feminine
            ["βυω", "bu'ā"]
          end

          def _preterite_first_plural
            ["βουνω", "būnā"]
          end

          def _preterite_second_plural_masculine
            ["βουττυν", "būthun"]
          end

          def _preterite_second_plural_feminine
            ["βουτζζιν", "būčhin"]
          end

          def _preterite_third_plural
            ["βυου", "bu'ū"]
          end

          def _imperfect_first_singular
            ["βιη'υε", "biewe"]
          end

          def _imperfect_second_singular_masculine
            ["βιητ", "biet"]
          end

          def _imperfect_second_singular_feminine
            ["βιης̄", "bieš"]
          end

          def _imperfect_third_singular_masculine
            ["βηυε", "bēwe"]
          end

          def _imperfect_third_singular_feminine
            ["βηω", "bē'ā"]
          end

          def _imperfect_first_plural
            ["βιην", "bien"]
          end

          def _imperfect_second_plural_masculine
            ["βιηττυν", "biethun"]
          end

          def _imperfect_second_plural_feminine
            ["βιητζζιν", "biečhin"]
          end

          def _imperfect_third_plural
            ["βηου", "bē'ū"]
          end

          def _pf_subjunctive_first_singular
            ["в̄ωβου", "vābū"]
          end

          def _pf_subjunctive_first_plural
            ["в̄ανιβου", "vanibū"]
          end

          def _pf_subjunctive_second
            ["в̄ατιβου", "vatibū"]
          end

          def _pf_subjunctive_third
            ["в̄ηβου", "vēbū"]
          end

          def _impf_subjunctive_first_singular
            ["αβουα", "'abū'a"]
          end

          def _impf_subjunctive_second_singular_masculine
            ["τιβουα", "tibū'a"]
          end

          def _impf_subjunctive_second_singular_feminine
            ["τιβουια", "tibūya"]
          end

          def _impf_subjunctive_third_singular_masculine
            ["ιβουα", "yibū'a"]
          end

          def _impf_subjunctive_third_singular_feminine
            ["ιβουια", "yibūya"]
          end

          def _impf_subjunctive_first_plural
            ["νιβουα", "nibūwa"]
          end

          def _impf_subjunctive_second_plural
            ["τιβουα", "tibūwa"]
          end

          def _impf_subjunctive_third_plural
            ["ιβουα", "yibūwa"]
          end

          def _volitive_first_singular
            _present_first_singular.zip(["να", "na"]).map(&:join)
          end

          def _volitive_second_singular_masculine
            _present_second_singular_masculine.zip(["να", "na"]).map(&:join)
          end

          def _volitive_second_singular_feminine
            _present_second_singular_feminine.zip(["να", "na"]).map(&:join)
          end

          def _volitive_third_singular_masculine
            _present_third_singular_masculine.zip(["να", "na"]).map(&:join)
          end

          def _volitive_third_singular_feminine
            _present_third_singular_feminine.zip(["να", "na"]).map(&:join)
          end

          def _volitive_first_plural
            _present_first_plural.zip(["να", "na"]).map(&:join)
          end

          def _volitive_second_plural
            _present_second_plural.zip(["να", "na"]).map(&:join)
          end

          def _volitive_third_plural
            _present_third_plural.zip(["να", "na"]).map(&:join)
          end

          def _imperative_masculine_singular
            ["βου", "bū"]
          end

          def _imperative_feminine_singular
            ["βυει", "bwī"]
          end

          def _imperative_plural
            ["βυου", "bwū"]
          end

          def _precative_masculine_singular
            _imperative_masculine_singular.zip(["να", "na"]).map(&:join)
          end

          def _precative_feminine_singular
            _imperative_feminine_singular.zip(["να", "na"]).map(&:join)
          end

          def _precative_plural
            _imperative_plural.zip(["να", "na"]).map(&:join)
          end

          def _infinitive
            ["βου", "bū"]
          end

          def _active_participle
            ["βου'ε", "būwe"]
          end
        end
      end
    end
  end
end
