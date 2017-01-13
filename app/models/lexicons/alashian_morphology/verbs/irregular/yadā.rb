module Morphology
  module Alashian
    module Verbs
      module Irregular
        module Yada
          def conjugation
            "Active Scale I Verb"
          end

          def subtype
            "Irregular"
          end

          def _present_first_singular
            ["ηδω", "'ēdā"]
          end

          def _present_second_singular_masculine
            ["τειδω", "tīdā"]
          end

          def _present_second_singular_feminine
            ["τειδαηει", "tīdahī"]
          end

          def _present_third_singular_masculine
            ["ιειδω", "yīdā"]
          end

          def _present_third_singular_feminine
            ["ιειδαηει", "yīdahī"]
          end

          def _present_first_plural
            ["νειδαηου", "nīdahū"]
          end

          def _present_second_plural
            ["τειδαηου", "tīdahū"]
          end

          def _present_third_plural
            ["ιειδαηου", "yīdahū"]
          end

          def _preterite_first_singular
            ["ιαδωτ", "yadāt"]
          end

          def _preterite_second_singular_masculine
            ["ιαδωτα", "yadāta"]
          end

          def _preterite_second_singular_feminine
            ["ιαδωσ̄ε", "yadāše"]
          end

          def _preterite_third_singular_masculine
            ["ιαδω", "yadā"]
          end

          def _preterite_third_singular_feminine
            ["ιαδαηω", "yadahā"]
          end

          def _preterite_first_plural
            ["ιαδωνω", "yadānā"]
          end

          def _preterite_second_plural_masculine
            ["ιαδωτυν", "yadātun"]
          end

          def _preterite_second_plural_feminine
            ["ιαδωσ̄ιν", "yadāšin"]
          end

          def _preterite_third_plural
            ["ιαδαηου", "yadahū"]
          end

          def _imperfect_first_singular
            ["ιηδη", "yēdē"]
          end

          def _imperfect_second_singular_masculine
            ["ιηδητ", "yēdēt"]
          end

          def _imperfect_second_singular_feminine
            ["ιηδης̄", "yēdēš"]
          end

          def _imperfect_third_singular_masculine
            ["ιηδη", "yēdē"]
          end

          def _imperfect_third_singular_feminine
            ["ιηδεηω", "yēdehā"]
          end

          def _imperfect_first_plural
            ["ιηδην", "yēdēn"]
          end

          def _imperfect_second_plural_masculine
            ["ιηδητυν", "yēdētun"]
          end

          def _imperfect_second_plural_feminine
            ["ιηδησ̄ιν", "yēdēšin"]
          end

          def _imperfect_third_plural
            ["ιηδεηου", "yēdehū"]
          end

          def _pf_subjunctive_first_singular
            ["в̄ηδω", "vēdā"]
          end

          def _pf_subjunctive_first_plural
            ["в̄ενειδω", "venīdā"]
          end

          def _pf_subjunctive_second
            ["в̄ετειδω", "vetīdā"]
          end

          def _pf_subjunctive_third
            ["в̄ειδω", "vīdā"]
          end

          def _impf_subjunctive_first_singular
            ["ηδωηα", "'ēdāha"]
          end

          def _impf_subjunctive_second_singular_masculine
            ["τειδωηα", "tīdāha"]
          end

          def _impf_subjunctive_second_singular_feminine
            ["τειδωηια", "tīdāhiya"]
          end

          def _impf_subjunctive_third_singular_masculine
            ["ιειδωηα", "yīdāha"]
          end

          def _impf_subjunctive_third_singular_feminine
            ["ιειδωηια", "yīdāhiya"]
          end

          def _impf_subjunctive_first_plural
            ["νειδωηυα", "nīdāhuwa"]
          end

          def _impf_subjunctive_second_plural
            ["τειδωηυα", "tīdāhuwa"]
          end

          def _impf_subjunctive_third_plural
            ["ιειδωηυα", "yīdāhuwa"]
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
            ["δω", "dā"]
          end

          def _imperative_feminine_singular
            ["δαιει", "dayī"]
          end

          def _imperative_plural
            ["δαιου", "dayū"]
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
            ["ιαδου", "yadū"]
          end

          def _active_participle
            ["ιουδἠ", "yūdē"]
          end

          def _passive_participle
            ["μηδου", "mēdū"]
          end
        end
      end
    end
  end
end
