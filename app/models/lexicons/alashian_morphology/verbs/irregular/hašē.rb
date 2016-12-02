module Morphology
  module Alashian
    module Verbs
      module Irregular
        module Hase
          def conjugation
            "Active Scale I Verb"
          end

          def subtype
            "Irregular"
          end

          def _present_first_singular
            ["ασ̄η", "'ašē"]
          end

          def _present_second_singular_masculine
            ["τισ̄η", "tišē"]
          end

          def _present_second_singular_feminine
            ["τισ̄αιει", "tišayī"]
          end

          def _present_third_singular_masculine
            ["ισ̄η", "yišē"]
          end

          def _present_third_singular_feminine
            ["ισ̄αιει", "yišayī"]
          end

          def _present_first_plural
            ["νισ̄αιου", "nišayū"]
          end

          def _present_second_plural
            ["τισ̄αιου", "tišayū"]
          end

          def _present_third_plural
            ["ισ̄αιου", "yišayū"]
          end

          def _preterite_first_singular
            ["ηασ̄ητ", "hašēt"]
          end

          def _preterite_second_singular_masculine
            ["ηασ̄ητα", "hašēta"]
          end

          def _preterite_second_singular_feminine
            ["ηασ̄ησ̄ε", "hašēše"]
          end

          def _preterite_third_singular_masculine
            ["ηασ̄η", "hašē"]
          end

          def _preterite_third_singular_feminine
            ["ηασ̄αιω", "hašayā"]
          end

          def _preterite_first_plural
            ["ηασ̄ηνω", "hašēnā"]
          end

          def _preterite_second_plural_masculine
            ["ηασ̄ητυν", "hašētun"]
          end

          def _preterite_second_plural_feminine
            ["ηασ̄ησ̄ιν", "hašēšin"]
          end

          def _preterite_third_plural
            ["ηασ̄αιου", "hašayū"]
          end

          def _imperfect_first_singular
            ["ιεσ̄η", "yešē"]
          end

          def _imperfect_second_singular_masculine
            ["ιεσ̄ητ", "yešēt"]
          end

          def _imperfect_second_singular_feminine
            ["ιεσ̄ης̄", "yešēš"]
          end

          def _imperfect_third_singular_masculine
            ["ιεσ̄η", "yešē"]
          end

          def _imperfect_third_singular_feminine
            ["ιεσ̄ειω", "yešeyā"]
          end

          def _imperfect_first_plural
            ["ιεσ̄ην", "yešēn"]
          end

          def _imperfect_second_plural_masculine
            ["ιεσ̄ητυν", "yešētun"]
          end

          def _imperfect_second_plural_feminine
            ["ιεσ̄ησ̄ιν", "yešēšin"]
          end

          def _imperfect_third_plural
            ["ιεσ̄ειου", "yešeyū"]
          end

          def _pf_subjunctive_first_singular
            ["в̄ωσ̄ω", "vāšā"]
          end

          def _pf_subjunctive_first_plural
            ["в̄ανασ̄ω", "vanašā"]
          end

          def _pf_subjunctive_second
            ["в̄ατασ̄ω", "vatašā"]
          end

          def _pf_subjunctive_third
            ["в̄ησ̄ω", "vēšā"]
          end

          def _impf_subjunctive_first_singular
            ["ασ̄ηια", "'ašēya"]
          end

          def _impf_subjunctive_second_singular_masculine
            ["τισ̄ηια", "tišēya"]
          end

          def _impf_subjunctive_second_singular_feminine
            ["τισ̄ηιια", "tišēyiya"]
          end

          def _impf_subjunctive_third_singular_masculine
            ["ισ̄ηια", "yišēya"]
          end

          def _impf_subjunctive_third_singular_feminine
            ["ισ̄ηιια", "yišēyiya"]
          end

          def _impf_subjunctive_first_plural
            ["νισ̄ηιυυα", "nišēyuwa"]
          end

          def _impf_subjunctive_second_plural
            ["τισ̄ηιυυα", "tišēyuwa"]
          end

          def _impf_subjunctive_third_plural
            ["ισ̄ηιυυα", "yišēyuwa"]
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
            ["σ̄η", "šē"]
          end

          def _imperative_feminine_singular
            ["σ̄ει", "šī"]
          end

          def _imperative_plural
            ["σ̄ου", "šū"]
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
            ["ηασ̄ου", "hašū"]
          end

          def _active_participle
            ["ηουσ̄εἰ", "hūšī"]
          end

          def _passive_participle
            ["μωσ̄ου", "māšū"]
          end
        end
      end
    end
  end
end
