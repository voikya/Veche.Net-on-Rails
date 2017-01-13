module Morphology
  module Alashian
    module Verbs
      module Irregular
        module Hab
          def conjugation
            "Active Scale I Verb"
          end

          def subtype
            "Irregular"
          end

          def _present_first_singular
            ["αυωβ", "'awāb"]
          end

          def _present_second_singular_masculine
            ["τιυωβ", "tiwāb"]
          end

          def _present_second_singular_feminine
            ["τιυαβει", "tiwabī"]
          end

          def _present_third_singular_masculine
            ["ιυωβ", "yiwāb"]
          end

          def _present_third_singular_feminine
            ["ιυαβει", "yiwabī"]
          end

          def _present_first_plural
            ["νιυαβου", "niwabū"]
          end

          def _present_second_plural
            ["τιυαβου", "tiwabū"]
          end

          def _present_third_plural
            ["ιυαβου", "yiwabū"]
          end

          def _preterite_first_singular
            ["ηαβετ", "habet"]
          end

          def _preterite_second_singular_masculine
            ["ηαв̄τα", "havta"]
          end

          def _preterite_second_singular_feminine
            ["ηάв̄σ̄ε", "havše"]
          end

          def _preterite_third_singular_masculine
            ["ηαβ", "hab"]
          end

          def _preterite_third_singular_feminine
            ["ηαβω", "habā"]
          end

          def _preterite_first_plural
            ["ηαβνω", "habnā"]
          end

          def _preterite_second_plural_masculine
            ["ηαв̄τυν", "havtun"]
          end

          def _preterite_second_plural_feminine
            ["ηαв̄σ̄ιν", "havšin"]
          end

          def _preterite_third_plural
            ["ηαβου", "habū"]
          end

          def _imperfect_first_singular
            ["ιηв̄", "yēv"]
          end

          def _imperfect_second_singular_masculine
            ["ιηв̄ετ", "yēvet"]
          end

          def _imperfect_second_singular_feminine
            ["ιηв̄ες̄", "yēveš"]
          end

          def _imperfect_third_singular_masculine
            ["ιηβ", "yēb"]
          end

          def _imperfect_third_singular_feminine
            ["ιηβω", "yēbā"]
          end

          def _imperfect_first_plural
            ["ιηв̄εν", "yēven"]
          end

          def _imperfect_second_plural_masculine
            ["ιηв̄τυν", "yēvtun"]
          end

          def _imperfect_second_plural_feminine
            ["ιηв̄σ̄ιν", "yēvšin"]
          end

          def _imperfect_third_plural
            ["ιηβου", "yēbū"]
          end

          def _pf_subjunctive_first_singular
            ["в̄ουηαβ", "vūhab"]
          end

          def _pf_subjunctive_first_plural
            ["в̄ανυηαβ", "vanuhab"]
          end

          def _pf_subjunctive_second
            ["в̄ατυηαβ", "vatuhab"]
          end

          def _pf_subjunctive_third
            ["в̄ηηαβ", "vēhab"]
          end

          def _impf_subjunctive_first_singular
            ["αυωβα", "'awāba"]
          end

          def _impf_subjunctive_second_singular_masculine
            ["τιυωβα", "tiwāba"]
          end

          def _impf_subjunctive_second_singular_feminine
            ["τιυωβια", "tiwābiya"]
          end

          def _impf_subjunctive_third_singular_masculine
            ["ιυωβα", "yiwāba"]
          end

          def _impf_subjunctive_third_singular_feminine
            ["ιυωβια", "yiwābiya"]
          end

          def _impf_subjunctive_first_plural
            ["νιυ'ωβυ'α", "niwābuwa"]
          end

          def _impf_subjunctive_second_plural
            ["τιυ'ωβυ'α", "tiwābuwa"]
          end

          def _impf_subjunctive_third_plural
            ["ιυ'ωβυ'α", "yiwābuwa"]
          end

          def _volitive_first_singular
            _present_first_singular.zip(["αννα", "anna"]).map(&:join)
          end

          def _volitive_second_singular_masculine
            _present_second_singular_masculine.zip(["αννα", "anna"]).map(&:join)
          end

          def _volitive_second_singular_feminine
            _present_second_singular_feminine.zip(["να", "na"]).map(&:join)
          end

          def _volitive_third_singular_masculine
            _present_third_singular_masculine.zip(["αννα", "anna"]).map(&:join)
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
            ["ηωβ", "hāb"]
          end

          def _imperative_feminine_singular
            ["ηαβει", "habī"]
          end

          def _imperative_plural
            ["ηαβου", "habū"]
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
            ["в̄αηουβ", "vahūb"]
          end

          def _active_participle
            ["в̄ουηιβ", "vūhib"]
          end

          def _passive_participle
            ["μουηουβ", "mūhūb"]
          end
        end
      end
    end
  end
end
