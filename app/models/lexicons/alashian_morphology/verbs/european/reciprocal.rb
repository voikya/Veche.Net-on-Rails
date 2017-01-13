require_relative 'active'

module Morphology
  module Alashian
    module Verbs
      module European
        module Reciprocal
          include European::Active

          def subtype
            "Regular Reciprocal"
          end

          def _present_first_singular
            ["ατ" + stem + "ω", "'at" + stem_transliterated + "ā"]
          end

          def _present_second_singular_masculine
            ["τιτ" + stem + "ω", "tit" + stem_transliterated + "ā"]
          end

          def _present_second_singular_feminine
            ["τιτ" + stem + "ει", "tit" + stem_transliterated + "ī"]
          end

          def _present_third_singular_masculine
            ["ιτ" + stem + "ω", "yit" + stem_transliterated + "ā"]
          end

          def _present_third_singular_feminine
            ["ιτ" + stem + "ει", "yit" + stem_transliterated + "ī"]
          end

          def _present_first_plural
            ["νιτ" + stem + "ου", "nit" + stem_transliterated + "ū"]
          end

          def _present_second_plural
            ["τιτ" + stem + "ου", "tit" + stem_transliterated + "ū"]
          end

          def _present_third_plural
            ["ιτ" + stem + "ου", "yit" + stem_transliterated + "ū"]
          end

          def _preterite_first_singular
            ["ιτ" + stem + "ωτ", "'it" + stem_transliterated + "āt"]
          end

          def _preterite_second_singular_masculine
            ["ιτ" + stem + "ωττα", "'it" + stem_transliterated + "ātha"]
          end

          def _preterite_second_singular_feminine
            ["ιτ" + stem + "ωτζζε", "'it" + stem_transliterated + "āčhe"]
          end

          def _preterite_third_singular_masculine
            ["ιτ" + stem + "ω", "'it" + stem_transliterated + "ā"]
          end

          def _preterite_third_singular_feminine
            ["ιτ" + stem + "αιω", "'it" + stem_transliterated + "ayā"]
          end

          def _preterite_first_plural
            ["ιτ" + stem + "ωνω", "'it" + stem_transliterated + "ānā"]
          end

          def _preterite_second_plural_masculine
            ["ιτ" + stem + "ωττυν", "'it" + stem_transliterated + "āthun"]
          end

          def _preterite_second_plural_feminine
            ["ιτ" + stem + "ωτζζιν", "'it" + stem_transliterated + "āčhin"]
          end

          def _preterite_third_plural
            ["ιτ" + stem + "αιου", "'it" + stem_transliterated + "ayū"]
          end

          def _imperfect_first_singular
            if external_imperfect?
              ["ιτ" + stem + "ιη", "'it" + stem_transliterated + "ie"]
            else
              ["ιτ" + imperfect_stem, "'it" + imperfect_stem_transliterated]
            end
          end

          def _imperfect_second_singular_masculine
            if external_imperfect?
              ["ιτ" + stem + "ιητ", "'it" + stem_transliterated + "iet"]
            else
              ["ιτ" + imperfect_stem + "ετ", "'it" + imperfect_stem_transliterated + "et"]
            end
          end

          def _imperfect_second_singular_feminine
            if external_imperfect?
              ["ιτ" + stem + "ιης̄", "'it" + stem_transliterated + "ieš"]
            else
              ["ιτ" + imperfect_stem + "ες̄", "'it" + imperfect_stem_transliterated + "eš"]
            end
          end

          def _imperfect_third_singular_masculine
            if external_imperfect?
              ["ιτ" + stem + "ιη", "'it" + stem_transliterated + "ie"]
            else
              ["ιτ" + imperfect_stem, "'it" + imperfect_stem_transliterated]
            end
          end

          def _imperfect_third_singular_feminine
            if external_imperfect?
              ["ιτ" + stem + "ειω", "'it" + stem_transliterated + "eyā"]
            else
              ["ιτ" + imperfect_stem + "ειω", "'it" + imperfect_stem_transliterated + "eyā"]
            end
          end

          def _imperfect_first_plural
            if external_imperfect?
              ["ιτ" + stem + "ιην", "'it" + stem_transliterated + "ien"]
            else
              ["ιτ" + imperfect_stem + "εν", "'it" + imperfect_stem_transliterated + "en"]
            end
          end

          def _imperfect_second_plural_masculine
            if external_imperfect?
              ["ιτ" + stem + "ιηττυν", "'it" + stem_transliterated + "iethun"]
            else
              ["ιτ" + imperfect_stem + "αττυν", "'it" + imperfect_stem_transliterated + "əthun"]
            end
          end

          def _imperfect_second_plural_feminine
            if external_imperfect?
              ["ιτ" + stem + "ιητζζιν", "'it" + stem_transliterated + "iečhin"]
            else
              ["ιτ" + imperfect_stem + "ατζζιν", "'it" + imperfect_stem_transliterated + "əčhin"]
            end
          end

          def _imperfect_third_plural
            if external_imperfect?
              ["ιτ" + stem + "ειου", "'it" + stem_transliterated + "eyū"]
            else
              ["ιτ" + imperfect_stem + "ειου", "'it" + imperfect_stem_transliterated + "eyū"]
            end
          end

          def _pf_subjunctive_first_singular
            ["в̄ωτ" + stem + "α", "vāt" + stem_transliterated + "a"]
          end

          def _pf_subjunctive_first_plural
            ["в̄ανιτ" + stem + "α", "vanit" + stem_transliterated + "a"]
          end

          def _pf_subjunctive_second
            ["в̄ατιτ" + stem + "α", "vatit" + stem_transliterated + "a"]
          end

          def _pf_subjunctive_third
            ["в̄ητ" + stem + "α", "vēt" + stem_transliterated + "a"]
          end

          def _impf_subjunctive_first_singular
            ["ατ" + stem + "α", "'at" + stem_transliterated + "a"]
          end

          def _impf_subjunctive_second_singular_masculine
            ["τιτ" + stem + "α", "tit" + stem_transliterated + "a"]
          end

          def _impf_subjunctive_second_singular_feminine
            ["τιτ" + stem + "ι'α", "tit" + stem_transliterated + "iya"]
          end

          def _impf_subjunctive_third_singular_masculine
            ["ιτ" + stem + "α", "yit" + stem_transliterated + "a"]
          end

          def _impf_subjunctive_third_singular_feminine
            ["ιτ" + stem + "ι'α", "yit" + stem_transliterated + "iya"]
          end

          def _impf_subjunctive_first_plural
            ["νιτ" + stem + "υ'α", "nit" + stem_transliterated + "uwa"]
          end

          def _impf_subjunctive_second_plural
            ["τιτ" + stem + "υ'α", "tit" + stem_transliterated + "uwa"]
          end

          def _impf_subjunctive_third_plural
            ["ιτ" + stem + "υ'α", "yit" + stem_transliterated + "uwa"]
          end

          def _imperative_masculine_singular
            ["ιτ" + stem + "ω", "'it" + stem_transliterated + "ā"]
          end

          def _imperative_feminine_singular
            ["ιτ" + stem + "ει", "'it" + stem_transliterated + "ī"]
          end

          def _imperative_plural
            ["ιτ" + stem + "ου", "'it" + stem_transliterated + "ū"]
          end

          def _infinitive
            ["ιτ" + stem + "ατ", "'it" + stem_transliterated + "at"]
          end

          def _active_participle
            ["ματ" + stem + "α", "mat" + stem_transliterated + "a"]
          end
        end
      end
    end
  end
end
