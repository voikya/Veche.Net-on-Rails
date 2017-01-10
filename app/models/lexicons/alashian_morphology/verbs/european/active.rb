module Morphology
  module Alashian
    module Verbs
      module European
        module Active
          def conjugation
            "European-Type Verb"
          end

          def subtype
            "Regular Active"
          end

          def _present_first_singular
            ["α" + stem + "ω", "'a" + stem_transliterated + "ā"]
          end

          def _present_second_singular_masculine
            if stem_transliterated[0] == "y"
              ["τ" + stem + "ω", "ti" + stem_transliterated + "ā"]
            else
              ["τι" + stem + "ω", "ti" + stem_transliterated + "ā"]
            end
          end

          def _present_second_singular_feminine
            if stem_transliterated[0] == "y"
              ["τ" + stem + "ει", "ti" + stem_transliterated + "ī"]
            else
              ["τι" + stem + "ει", "ti" + stem_transliterated + "ī"]
            end
          end

          def _present_third_singular_masculine
            ["ι" + stem + "ω", "yi" + stem_transliterated + "ā"]
          end

          def _present_third_singular_feminine
            ["ι" + stem + "ει", "yi" + stem_transliterated + "ī"]
          end

          def _present_first_plural
            if stem_transliterated[0] == "y"
              ["ν" + stem + "ου", "ni" + stem_transliterated + "ū"]
            else
              ["νι" + stem + "ου", "ni" + stem_transliterated + "ū"]
            end
          end

          def _present_second_plural
            if stem_transliterated[0] == "y"
              ["τ" + stem + "ου", "ti" + stem_transliterated + "ū"]
            else
              ["τι" + stem + "ου", "ti" + stem_transliterated + "ū"]
            end
          end

          def _present_third_plural
            ["ι" + stem + "ου", "yi" + stem_transliterated + "ū"]
          end

          def _preterite_first_singular
            [stem + "ωτ", stem_transliterated + "āt"]
          end

          def _preterite_second_singular_masculine
            [stem + "ωττα", stem_transliterated + "ātha"]
          end

          def _preterite_second_singular_feminine
            [stem + "ωτζζε", stem_transliterated + "āčhe"]
          end

          def _preterite_third_singular_masculine
            [stem + "ω", stem_transliterated + "ā"]
          end

          def _preterite_third_singular_feminine
            [stem + "αιω", stem_transliterated + "ayā"]
          end

          def _preterite_first_plural
            [stem + "ωνω", stem_transliterated + "ānā"]
          end

          def _preterite_second_plural_masculine
            [stem + "ωττυν", stem_transliterated + "āthun"]
          end

          def _preterite_second_plural_feminine
            [stem + "ωτζζιν", stem_transliterated + "āčhin"]
          end

          def _preterite_third_plural
            [stem + "αιου", stem_transliterated + "ayū"]
          end

          def _imperfect_first_singular
            if external_imperfect?
              [stem + "ιη", stem_transliterated + "ie"]
            else
              [imperfect_stem, imperfect_stem_transliterated]
            end
          end

          def _imperfect_second_singular_masculine
            if external_imperfect?
              [stem + "ιητ", stem_transliterated + "iet"]
            else
              [imperfect_stem + "ετ", imperfect_stem_transliterated + "et"]
            end
          end

          def _imperfect_second_singular_feminine
            if external_imperfect?
              [stem + "ιης̄", stem_transliterated + "ieš"]
            else
              [imperfect_stem + "ες̄", imperfect_stem_transliterated + "eš"]
            end
          end

          def _imperfect_third_singular_masculine
            if external_imperfect?
              [stem + "ιη", stem_transliterated + "ie"]
            else
              [imperfect_stem, imperfect_stem_transliterated]
            end
          end

          def _imperfect_third_singular_feminine
            if external_imperfect?
              [stem + "ειω", stem_transliterated + "eyā"]
            else
              [imperfect_stem + "ειω", imperfect_stem_transliterated + "eyā"]
            end
          end

          def _imperfect_first_plural
            if external_imperfect?
              [stem + "ιην", stem_transliterated + "ien"]
            else
              [imperfect_stem + "εν", imperfect_stem_transliterated + "en"]
            end
          end

          def _imperfect_second_plural_masculine
            if external_imperfect?
              [stem + "ιηττυν", stem_transliterated + "iethun"]
            else
              [imperfect_stem + "αττυν", imperfect_stem_transliterated + "əthun"]
            end
          end

          def _imperfect_second_plural_feminine
            if external_imperfect?
              [stem + "ιητζζιν", stem_transliterated + "iečhin"]
            else
              [imperfect_stem + "ατζζιν", imperfect_stem_transliterated + "əčhin"]
            end
          end

          def _imperfect_third_plural
            if external_imperfect?
              [stem + "ειου", stem_transliterated + "eyū"]
            else
              [imperfect_stem + "ειου", imperfect_stem_transliterated + "eyū"]
            end
          end

          def _pf_subjunctive_first_singular
            ["в̄ω" + stem + "α", "vā" + stem_transliterated + "a"]
          end

          def _pf_subjunctive_first_plural
            if stem_transliterated[0] == "y"
              ["в̄αν" + stem + "α", "vani" + stem_transliterated + "a"]
            else
              ["в̄ανι" + stem + "α", "vani" + stem_transliterated + "a"]
            end
          end

          def _pf_subjunctive_second
            if stem_transliterated[0] == "y"
              ["в̄ατ" + stem + "α", "vati" + stem_transliterated + "a"]
            else
              ["в̄ατι" + stem + "α", "vati" + stem_transliterated + "a"]
            end
          end

          def _pf_subjunctive_third
            ["в̄η" + stem + "α", "vē" + stem_transliterated + "a"]
          end

          def _impf_subjunctive_first_singular
            ["α" + stem + "α", "'a" + stem_transliterated + "a"]
          end

          def _impf_subjunctive_second_singular_masculine
            if stem_transliterated[0] == "y"
              ["τ" + stem + "α", "ti" + stem_transliterated + "a"]
            else
              ["τι" + stem + "α", "ti" + stem_transliterated + "a"]
            end
          end

          def _impf_subjunctive_second_singular_feminine
            prefix = stem_transliterated[0] == "y" ? "τ" : "τι"
            if stem_transliterated[-1] == "y"
              [prefix + stem + "'ια", "ti" + stem_transliterated + "iya"]
            else
              [prefix + stem + "ι'α", "ti" + stem_transliterated + "iya"]
            end
          end

          def _impf_subjunctive_third_singular_masculine
            ["ι" + stem + "α", "yi" + stem_transliterated + "a"]
          end

          def _impf_subjunctive_third_singular_feminine
            if stem_transliterated[-1] == "y"
              ["ι" + stem + "'ια", "yi" + stem_transliterated + "iya"]
            else
              ["ι" + stem + "ι'α", "yi" + stem_transliterated + "iya"]
            end
          end

          def _impf_subjunctive_first_plural
            if stem_transliterated[0] == "y"
              ["ν" + stem + "υ'α", "ni" + stem_transliterated + "uwa"]
            else
              ["νι" + stem + "υ'α", "ni" + stem_transliterated + "uwa"]
            end
          end

          def _impf_subjunctive_second_plural
            if stem_transliterated[0] == "y"
              ["τ" + stem + "υ'α", "ti" + stem_transliterated + "uwa"]
            else
              ["τι" + stem + "υ'α", "ti" + stem_transliterated + "uwa"]
            end
          end

          def _impf_subjunctive_third_plural
            ["ι" + stem + "υ'α", "yi" + stem_transliterated + "uwa"]
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
            [stem + "ω", stem_transliterated + "ā"]
          end

          def _imperative_feminine_singular
            [stem + "ει", stem_transliterated + "ī"]
          end

          def _imperative_plural
            [stem + "ου", stem_transliterated + "ū"]
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
            [stem + "ατ", stem_transliterated + "at"]
          end

          def _active_participle
            if stem_transliterated[0] == "y"
              ["μ" + stem + "α", "mi" + stem_transliterated + "a"]
            else
              ["μι" + stem + "α", "mi" + stem_transliterated + "a"]
            end
          end

          private

          def imperfect_stem
            stem.gsub(/(α|ω|ε|η|ι|ει|υ|ου)(?=[^αωεηιου]+$)/, "ιη")
          end

          def imperfect_stem_transliterated
            stem_transliterated.gsub(/(a|ā|e|ē|i|ī|u|ū|ə)(?=[^aāeēiīuūə]+$)/, "ie")
          end
        end
      end
    end
  end
end
