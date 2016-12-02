module Morphology
  module Alashian
    module Verbs
      module Irregular
        module Raya
          def conjugation
            "Active Scale I Verb"
          end

          def subtype
            "Irregular"
          end

          def _present_first_singular
            ["αρ̄ω", "'ařā"]
          end

          def _present_second_singular_masculine
            ["τερ̄ω", "teřā"]
          end

          def _present_second_singular_feminine
            ["τερ̄αει", "teřa'ī"]
          end

          def _present_third_singular_masculine
            ["ιερ̄ω", "yeřā"]
          end

          def _present_third_singular_feminine
            ["ιερ̄αει", "yeřa'ī"]
          end

          def _present_first_plural
            ["νερ̄αου", "neřa'ū"]
          end

          def _present_second_plural
            ["τερ̄αου", "teřa'ū"]
          end

          def _present_third_plural
            ["ιερ̄αου", "yeřa'ū"]
          end

          def _preterite_first_singular
            ["ρ̄ηυετ", "řēwet"]
          end

          def _preterite_second_singular_masculine
            ["ρ̄ηυετα", "řēweta"]
          end

          def _preterite_second_singular_feminine
            ["ρ̄ηυεσ̄ε", "řēweše"]
          end

          def _preterite_third_singular_masculine
            ["ρ̄αια", "řaya"]
          end

          def _preterite_third_singular_feminine
            ["ρ̄ηυω", "řēwā"]
          end

          def _preterite_first_plural
            ["ρ̄ηυενω", "řēwenā"]
          end

          def _preterite_second_plural_masculine
            ["ρ̄ηυετυν", "řēwetun"]
          end

          def _preterite_second_plural_feminine
            ["ρ̄ηυεσ̄ιν", "řēwešin"]
          end

          def _preterite_third_plural
            ["ρ̄ηιου", "řēyū"]
          end

          def _imperfect_first_singular
            ["ρ̄ηιε", "řēye"]
          end

          def _imperfect_second_singular_masculine
            ["ρ̄ηιετ", "řēyet"]
          end

          def _imperfect_second_singular_feminine
            ["ρ̄ηιες̄", "řēyeš"]
          end

          def _imperfect_third_singular_masculine
            ["ρ̄ηιε", "řēye"]
          end

          def _imperfect_third_singular_feminine
            ["ρ̄ηιω", "řēyā"]
          end

          def _imperfect_first_plural
            ["ρ̄ηιεν", "řēyen"]
          end

          def _imperfect_second_plural_masculine
            ["ρ̄ηιετυν", "řēyetun"]
          end

          def _imperfect_second_plural_feminine
            ["ρ̄ηιεσ̄ιν", "řēyešin"]
          end

          def _imperfect_third_plural
            ["ρ̄ηιου", "řēyū"]
          end

          def _pf_subjunctive_first_singular
            ["в̄ωρ̄υ", "vāřu"]
          end

          def _pf_subjunctive_first_plural
            ["в̄ανερ̄υ", "vaneřu"]
          end

          def _pf_subjunctive_second
            ["в̄ατερ̄υ", "vateřu"]
          end

          def _pf_subjunctive_third
            ["в̄ηρ̄υ", "vēřu"]
          end

          def _impf_subjunctive_first_singular
            ["αρ̄ωυα", "'ařāwa"]
          end

          def _impf_subjunctive_second_singular_masculine
            ["τερ̄ωυα", "teřāwa"]
          end

          def _impf_subjunctive_second_singular_feminine
            ["τερ̄ω'υια", "teřāwiya"]
          end

          def _impf_subjunctive_third_singular_masculine
            ["ιερ̄ωυα", "yeřāwa"]
          end

          def _impf_subjunctive_third_singular_feminine
            ["ιερ̄ω'υια", "yeřāwiya"]
          end

          def _impf_subjunctive_first_plural
            ["νερ̄ω'υυα", "neřāwuwa"]
          end

          def _impf_subjunctive_second_plural
            ["τερ̄ω'υυα", "teřāwuwa"]
          end

          def _impf_subjunctive_third_plural
            ["ιερ̄ω'υυα", "yeřāwuwa"]
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
            ["ρ̄η", "řē"]
          end

          def _imperative_feminine_singular
            ["ρ̄ηιει", "řēyī"]
          end

          def _imperative_plural
            ["ρ̄ηιου", "řēyū"]
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
            ["ρ̄αιου", "řayū"]
          end

          def _active_participle
            ["ρ̄ουιει", "řūyī"]
          end
        end
      end
    end
  end
end
