require_relative '../periphrastic_forms'

module Morphology
  module Novegradian
    module Verbs
      module AthematicConjugation
        module WeakStem
          include Verbs::PeriphrasticForms

          def conjugation
            "Athematic Conjugation"
          end

          def subtype
            "Weak Stem"
          end

          def _infinitive
            if stem[-2] == "а"
              [stem[0..-2] + "ти", stem_transliterated[0..-2] + "ti"]
            else
              [stem[0..-2] + "сти", stem_transliterated[0..-2] + "sti"]
            end
          end

          def _supine
            [stem[0..-2] + "с", stem_transliterated[0..-2] + "s"]
          end

          def _perfective
            unless perfective?
              [tertiary, tertiary_transliterated]
            end
          end

          def _imperfective
            if perfective?
              [tertiary, tertiary_transliterated]
            end
          end

          def _present_first_singular
            [stem[0..-2] + "м", stem_transliterated[0..-2] + "m"]
          end

          def _present_first_dual
            [stem[0..-2] + "ва", stem_transliterated[0..-2] + "va"]
          end

          def _present_first_plural
            [stem[0..-2] + "ме", stem_transliterated[0..-2] + "me"]
          end

          def _present_second_singular
            [desinence[0..-2] + "жи", desinence_transliterated[0..-2] + "źí"]
          end

          def _present_second_dual
            [stem[0..-2] + "ста", stem_transliterated[0..-2] + "sta"]
          end

          def _present_second_plural
            [stem[0..-2] + "сте", stem_transliterated[0..-2] + "ste"]
          end

          def _present_third_singular
            [stem[0..-2] + "ст", stem_transliterated[0..-2] + "st"]
          end

          def _present_third_dual
            _present_second_dual
          end

          def _present_third_plural
            [stem + "ит", stem_transliterated + "it"]
          end

          def _past_singular_masculine
            [stem[0..-2] + "гле", stem_transliterated[0..-2] + "gle"]
          end

          def _past_singular_feminine
            [desinence[0..-2] + "гла", desinence_transliterated[0..-2] + "glá"]
          end

          def _past_singular_neuter
            [stem[0..-2] + "гло", stem_transliterated[0..-2] + "glo"]
          end

          def _past_dual
            [stem[0..-2] + "глѣ", stem_transliterated[0..-2] + "glě"]
          end

          def _past_plural
            [stem[0..-2] + "гли", stem_transliterated[0..-2] + "gli"]
          end

          def _imperative_second_singular
            if stem[-2] == "а"
              [stem[0..-2] + "й", stem_transliterated[0..-2] + "i"]
            else
              [stem[0..-2] + "гь", stem_transliterated[0..-2] + "gj"]
            end
          end

          def _imperative_second_dual
            if stem[-2] == "а"
              [stem[0..-2] + "йта", stem_transliterated[0..-2] + "ita"]
            else
              [desinence[0..-2] + "гьита", desinence_transliterated[0..-2] + "gjíta"]
            end
          end

          def _imperative_second_plural
            if stem[-2] == "а"
              [stem[0..-2] + "йте", stem_transliterated[0..-2] + "ite"]
            else
              [desinence[0..-2] + "гьите", desinence_transliterated[0..-2] + "gjíte"]
            end
          end

          def _imperative_first_dual
            if stem[-2] == "а"
              [stem[0..-2] + "ута", stem_transliterated[0..-2] + "uta"]
            else
              [desinence[0..-2] + "гьиўта", desinence_transliterated[0..-2] + "gjíwta"]
            end
          end

          def _imperative_first_plural
            if stem[-2] == "а"
              [stem[0..-2] + "мте", stem_transliterated[0..-2] + "mte"]
            else
              [desinence[0..-2] + "гьимте", desinence_transliterated[0..-2] + "gjímte"]
            end
          end

          def _participle_active_imperfective
            unless perfective?
              [desinence + "акье", desinence_transliterated + "ákje"]
            end
          end

          def _participle_passive_imperfective
            unless perfective?
              [stem + "оме", stem_transliterated + "ome"]
            end
          end

          def _participle_passive_perfective
            if perfective?
              if stem[-2] == "а"
                [stem[0..-2] + "не", stem_transliterated[0..-2] + "ne"]
              else
                [stem + "ене", stem_transliterated + "ene"]
              end
            end
          end

          def _adv_participle_imperfective
            unless perfective?
              [desinence + "и", desinence_transliterated + "í"]
            end
          end

          def _adv_participle_perfective
            if perfective?
              [stem + "ове", stem_transliterated + "ove"]
            end
          end

        end
      end
    end
  end
end
