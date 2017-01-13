require_relative 'active'

module Morphology
  module Alashian
    module Verbs
      module European
        module Passive
          include European::Active

          def subtype
            "Regular Passive"
          end

          def _present_first_singular
            ["αν" + stem + "ω", "'an" + stem_transliterated + "ā"]
          end

          def _present_second_singular_masculine
            ["τιν" + stem + "ω", "tin" + stem_transliterated + "ā"]
          end

          def _present_second_singular_feminine
            ["τιν" + stem + "ει", "tin" + stem_transliterated + "ī"]
          end

          def _present_third_singular_masculine
            ["ιν" + stem + "ω", "yin" + stem_transliterated + "ā"]
          end

          def _present_third_singular_feminine
            ["ιν" + stem + "ει", "yin" + stem_transliterated + "ī"]
          end

          def _present_first_plural
            ["νιν" + stem + "ου", "nin" + stem_transliterated + "ū"]
          end

          def _present_second_plural
            ["τιν" + stem + "ου", "tin" + stem_transliterated + "ū"]
          end

          def _present_third_plural
            ["ιν" + stem + "ου", "yin" + stem_transliterated + "ū"]
          end

          def _preterite_first_singular
            ["ιν" + stem + "ωτ", "'in" + stem_transliterated + "āt"]
          end

          def _preterite_second_singular_masculine
            ["ιν" + stem + "ωττα", "'in" + stem_transliterated + "ātha"]
          end

          def _preterite_second_singular_feminine
            ["ιν" + stem + "ωτζζε", "'in" + stem_transliterated + "āčhe"]
          end

          def _preterite_third_singular_masculine
            ["ιν" + stem + "ω", "'in" + stem_transliterated + "ā"]
          end

          def _preterite_third_singular_feminine
            ["ιν" + stem + "αιω", "'in" + stem_transliterated + "ayā"]
          end

          def _preterite_first_plural
            ["ιν" + stem + "ωνω", "'in" + stem_transliterated + "ānā"]
          end

          def _preterite_second_plural_masculine
            ["ιν" + stem + "ωττυν", "'in" + stem_transliterated + "āthun"]
          end

          def _preterite_second_plural_feminine
            ["ιν" + stem + "ωτζζιν", "'in" + stem_transliterated + "āčhin"]
          end

          def _preterite_third_plural
            ["ιν" + stem + "αιου", "'in" + stem_transliterated + "ayū"]
          end

          def _imperfect_first_singular
            if external_imperfect?
              ["ιν" + stem + "ιη", "'in" + stem_transliterated + "ie"]
            else
              ["ιν" + imperfect_stem, "'in" + imperfect_stem_transliterated]
            end
          end

          def _imperfect_second_singular_masculine
            if external_imperfect?
              ["ιν" + stem + "ιητ", "'in" + stem_transliterated + "iet"]
            else
              ["ιν" + imperfect_stem + "ετ", "'in" + imperfect_stem_transliterated + "et"]
            end
          end

          def _imperfect_second_singular_feminine
            if external_imperfect?
              ["ιν" + stem + "ιης̄", "'in" + stem_transliterated + "ieš"]
            else
              ["ιν" + imperfect_stem + "ες̄", "'in" + imperfect_stem_transliterated + "eš"]
            end
          end

          def _imperfect_third_singular_masculine
            if external_imperfect?
              ["ιν" + stem + "ιη", "'in" + stem_transliterated + "ie"]
            else
              ["ιν" + imperfect_stem, "'in" + imperfect_stem_transliterated]
            end
          end

          def _imperfect_third_singular_feminine
            if external_imperfect?
              ["ιν" + stem + "ειω", "'in" + stem_transliterated + "eyā"]
            else
              ["ιν" + imperfect_stem + "ειω", "'in" + imperfect_stem_transliterated + "eyā"]
            end
          end

          def _imperfect_first_plural
            if external_imperfect?
              ["ιν" + stem + "ιην", "'in" + stem_transliterated + "ien"]
            else
              ["ιν" + imperfect_stem + "εν", "'in" + imperfect_stem_transliterated + "en"]
            end
          end

          def _imperfect_second_plural_masculine
            if external_imperfect?
              ["ιν" + stem + "ιηττυν", "'in" + stem_transliterated + "iethun"]
            else
              ["ιν" + imperfect_stem + "αττυν", "'in" + imperfect_stem_transliterated + "əthun"]
            end
          end

          def _imperfect_second_plural_feminine
            if external_imperfect?
              ["ιν" + stem + "ιητζζιν", "'in" + stem_transliterated + "iečhin"]
            else
              ["ιν" + imperfect_stem + "ατζζιν", "'in" + imperfect_stem_transliterated + "əčhin"]
            end
          end

          def _imperfect_third_plural
            if external_imperfect?
              ["ιν" + stem + "ειου", "'in" + stem_transliterated + "eyū"]
            else
              ["ιν" + imperfect_stem + "ειου", "'in" + imperfect_stem_transliterated + "eyū"]
            end
          end

          def _pf_subjunctive_first_singular
            ["в̄ων" + stem + "α", "vān" + stem_transliterated + "a"]
          end

          def _pf_subjunctive_first_plural
            ["в̄ανιν" + stem + "α", "vanin" + stem_transliterated + "a"]
          end

          def _pf_subjunctive_second
            ["в̄ατιν" + stem + "α", "vatin" + stem_transliterated + "a"]
          end

          def _pf_subjunctive_third
            ["в̄ην" + stem + "α", "vēn" + stem_transliterated + "a"]
          end

          def _impf_subjunctive_first_singular
            ["αν" + stem + "α", "'an" + stem_transliterated + "a"]
          end

          def _impf_subjunctive_second_singular_masculine
            ["τιν" + stem + "α", "tin" + stem_transliterated + "a"]
          end

          def _impf_subjunctive_second_singular_feminine
            ["τιν" + stem + "ι'α", "tin" + stem_transliterated + "iya"]
          end

          def _impf_subjunctive_third_singular_masculine
            ["ιν" + stem + "α", "yin" + stem_transliterated + "a"]
          end

          def _impf_subjunctive_third_singular_feminine
            ["ιν" + stem + "ι'α", "yin" + stem_transliterated + "iya"]
          end

          def _impf_subjunctive_first_plural
            ["νιν" + stem + "υ'α", "nin" + stem_transliterated + "uwa"]
          end

          def _impf_subjunctive_second_plural
            ["τιν" + stem + "υ'α", "tin" + stem_transliterated + "uwa"]
          end

          def _impf_subjunctive_third_plural
            ["ιν" + stem + "υ'α", "yin" + stem_transliterated + "uwa"]
          end

          def _imperative_masculine_singular
            ["ιν" + stem + "ω", "'in" + stem_transliterated + "ā"]
          end

          def _imperative_feminine_singular
            ["ιν" + stem + "ει", "'in" + stem_transliterated + "ī"]
          end

          def _imperative_plural
            ["ιν" + stem + "ου", "'in" + stem_transliterated + "ū"]
          end

          def _infinitive
            ["ιν" + stem + "ατ", "'in" + stem_transliterated + "at"]
          end

          def _active_participle
            ["μαν" + stem + "α", "man" + stem_transliterated + "a"]
          end
        end
      end
    end
  end
end
