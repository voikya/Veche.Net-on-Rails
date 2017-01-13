module Morphology
  module Alashian
    module Verbs
      module Irregular
        module Vi
          def conjugation
            "Active Scale I Verb"
          end

          def subtype
            "Irregular"
          end

          def _present_first_singular
            ["αυη", "'awē"]
          end

          def _present_second_singular_masculine
            ["τιυη", "tiwē"]
          end

          def _present_second_singular_feminine
            ["ταυει", "tawī"]
          end

          def _present_third_singular_masculine
            ["ιυη", "yiwē"]
          end

          def _present_third_singular_feminine
            ["ιαυει", "yawī"]
          end

          def _present_first_plural
            ["νιυου", "niwū"]
          end

          def _present_second_plural
            ["τιυου", "tiwū"]
          end

          def _present_third_plural
            ["ιυου", "yiwū"]
          end

          def _preterite_first_singular
            ["в̄ειτ", "vīt"]
          end

          def _preterite_second_singular_masculine
            ["в̄ειτα", "vīta"]
          end

          def _preterite_second_singular_feminine
            ["в̄εισ̄ε", "vīše"]
          end

          def _preterite_third_singular_masculine
            ["в̄ει (ηαυη)", "vī (hawē)"]
          end

          def _preterite_third_singular_feminine
            ["в̄ιω (ηυιω)", "vyā (huyā)"]
          end

          def _preterite_first_plural
            ["в̄εινω", "vīnā"]
          end

          def _preterite_second_plural_masculine
            ["в̄ειτυν", "vītun"]
          end

          def _preterite_second_plural_feminine
            ["в̄εισ̄ιν", "vīšin"]
          end

          def _preterite_third_plural
            ["в̄ιου (ηυιου)", "vyū (huyū)"]
          end

          def _imperfect_first_singular
            ["υη", "wē"]
          end

          def _imperfect_second_singular_masculine
            ["υητ", "wēt"]
          end

          def _imperfect_second_singular_feminine
            ["υης̄", "wēš"]
          end

          def _imperfect_third_singular_masculine
            ["υη (ηει'υε)", "wē (hīwe)"]
          end

          def _imperfect_third_singular_feminine
            ["υειω (ηει'α)", "weyā (hīya)"]
          end

          def _imperfect_first_plural
            ["υην", "wēn"]
          end

          def _imperfect_second_plural_masculine
            ["υητυν", "wētun"]
          end

          def _imperfect_second_plural_feminine
            ["υησ̄ιν", "wēšin"]
          end

          def _imperfect_third_plural
            ["υειου (ηει'υ)", "weyū (hīyu)"]
          end

          def _pf_subjunctive_first_singular
            ["в̄ωυε", "vāwe"]
          end

          def _pf_subjunctive_first_plural
            ["в̄ανει'υε", "vanīwe"]
          end

          def _pf_subjunctive_second
            ["в̄ατει'υε", "vatīwe"]
          end

          def _pf_subjunctive_third
            ["в̄ει'υε", "vīwe"]
          end

          def _impf_subjunctive_first_singular
            ["αυ'η'ια", "'awēya"]
          end

          def _impf_subjunctive_second_singular_masculine
            ["τιυ'η'ια", "tiwēya"]
          end

          def _impf_subjunctive_second_singular_feminine
            ["ταυ'ει'α", "tawīya"]
          end

          def _impf_subjunctive_third_singular_masculine
            ["ιυ'η'ια", "yiwēya"]
          end

          def _impf_subjunctive_third_singular_feminine
            ["ιαυ'ει'α", "yawīya"]
          end

          def _impf_subjunctive_first_plural
            ["νιυ'ου'α", "niwūwa"]
          end

          def _impf_subjunctive_second_plural
            ["τιυ'ου'α", "tiwūwa"]
          end

          def _impf_subjunctive_third_plural
            ["ιυ'ου'α", "yiwūwa"]
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
            ["в̄η", "vē"]
          end

          def _imperative_feminine_singular
            ["в̄αιει", "vayī"]
          end

          def _imperative_plural
            ["в̄αιου", "vayū"]
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
            ["ηαυου", "hawū"]
          end

          def _active_participle
            ["ηουει", "hūwī"]
          end
        end
      end
    end
  end
end
