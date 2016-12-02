module Morphology
  module Alashian
    module Verbs
      module Irregular
        module Vaca
          def conjugation
            "Active Scale I Verb"
          end

          def subtype
            "Irregular"
          end

          def _present_first_singular
            ["ουτζω", "'ūčā"]
          end

          def _present_second_singular_masculine
            ["τειτζω", "tīčā"]
          end

          def _present_second_singular_feminine
            ["τειτζαει", "tīča'ī"]
          end

          def _present_third_singular_masculine
            ["ιειτζω", "yīčā"]
          end

          def _present_third_singular_feminine
            ["ιειτζαει", "yīča'ī"]
          end

          def _present_first_plural
            ["νειτζαου", "nīča'ū"]
          end

          def _present_second_plural
            ["τειτζαου", "tīča'ū"]
          end

          def _present_third_plural
            ["ιειτζαου", "yīča'ū"]
          end

          def _preterite_first_singular
            ["τζωτ", "čāt"]
          end

          def _preterite_second_singular_masculine
            ["τζωττα", "čātha"]
          end

          def _preterite_second_singular_feminine
            ["τζωτζζε", "čāčhe"]
          end

          def _preterite_third_singular_masculine
            ["в̄ατζα", "vača"]
          end

          def _preterite_third_singular_feminine
            ["в̄ατζαω", "vača'ā"]
          end

          def _preterite_first_plural
            ["τζωννω", "čānnā"]
          end

          def _preterite_second_plural_masculine
            ["τζωττυν", "čāthun"]
          end

          def _preterite_second_plural_feminine
            ["τζωτζζιν", "čāčhin"]
          end

          def _preterite_third_plural
            ["в̄ατζαου", "vača'ū"]
          end

          def _imperfect_first_singular
            ["ιητζε", "yēče"]
          end

          def _imperfect_second_singular_masculine
            ["ιητζετ", "yēčet"]
          end

          def _imperfect_second_singular_feminine
            ["ιητζες̄", "yēčeš"]
          end

          def _imperfect_third_singular_masculine
            ["ιητζε", "yēče"]
          end

          def _imperfect_third_singular_feminine
            ["ιητζζω", "yēčhā"]
          end

          def _imperfect_first_plural
            ["ιητζεν", "yēčen"]
          end

          def _imperfect_second_plural_masculine
            ["ιητζαττυν", "yēčəthun"]
          end

          def _imperfect_second_plural_feminine
            ["ιητζατζζιν", "yēčəčhin"]
          end

          def _imperfect_third_plural
            ["ιητζζου", "yēčhū"]
          end

          def _pf_subjunctive_first_singular
            ["в̄ουτζω", "vūčā"]
          end

          def _pf_subjunctive_first_plural
            ["в̄ανουτζω", "vanūčā"]
          end

          def _pf_subjunctive_second
            ["в̄ατουτζω", "vatūčā"]
          end

          def _pf_subjunctive_third
            ["в̄ητζω", "vēčā"]
          end

          def _impf_subjunctive_first_singular
            ["ουτζωα", "'ūčā'a"]
          end

          def _impf_subjunctive_second_singular_masculine
            ["τειτζωα", "tīčā'a"]
          end

          def _impf_subjunctive_second_singular_feminine
            ["τειτζωια", "tīčāya"]
          end

          def _impf_subjunctive_third_singular_masculine
            ["ιειτζωα", "yīčā'a"]
          end

          def _impf_subjunctive_third_singular_feminine
            ["ιειτζωια", "yīčāya"]
          end

          def _impf_subjunctive_first_plural
            ["νειτζωυα", "nīčāwa"]
          end

          def _impf_subjunctive_second_plural
            ["τειτζωυα", "tīčāwa"]
          end

          def _impf_subjunctive_third_plural
            ["ιειτζωυα", "yīčāwa"]
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
            ["τζω", "čā"]
          end

          def _imperative_feminine_singular
            ["τζαει", "ča'ī"]
          end

          def _imperative_plural
            ["τζαου", "ča'ū"]
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
            ["в̄ατζου", "vačū"]
          end

          def _active_participle
            ["в̄ουτζι", "vūči"]
          end
        end
      end
    end
  end
end
