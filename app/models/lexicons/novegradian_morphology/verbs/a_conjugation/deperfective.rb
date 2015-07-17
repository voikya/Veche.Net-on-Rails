require_relative '../periphrastic_forms'

module Morphology
  module Novegradian
    module Verbs
      module AConjugation
        module Deperfective
          include Verbs::PeriphrasticForms

          def conjugation
            "A Conjugation"
          end

          def subtype
            "Deperfective"
          end

          def _infinitive
            [desinence + (palatal_stem? ? "ёвати" : "овати"), desinence_transliterated + "ováti"]
          end

          def _supine
            [desinence + (palatal_stem? ? "ёват" : "оват"), desinence_transliterated + "ovát"]
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
            [desinence + (palatal_stem? ? "ёвам" : "овам"), desinence_transliterated + "ovám"]
          end

          def _present_first_dual
            [desinence + (palatal_stem? ? "ёвава" : "овава"), desinence_transliterated + "ováva"]
          end

          def _present_first_plural
            [desinence + (palatal_stem? ? "ёваме" : "оваме"), desinence_transliterated + "ováme"]
          end

          def _present_second_singular
            [desinence + (palatal_stem? ? "ёваш" : "оваш"), desinence_transliterated + "ováś"]
          end

          def _present_second_dual
            [desinence + (palatal_stem? ? "ёваста" : "оваста"), desinence_transliterated + "ovásta"]
          end

          def _present_second_plural
            [desinence + (palatal_stem? ? "ёвате" : "овате"), desinence_transliterated + "ováte"]
          end

          def _present_third_singular
            [desinence + (palatal_stem? ? "ёваст" : "оваст"), desinence_transliterated + "ovást"]
          end

          def _present_third_dual
            _present_second_dual
          end

          def _present_third_plural
            [desinence + (palatal_stem? ? "ёвати" : "овати"), desinence_transliterated + "ováti"]
          end

          def _past_singular_masculine
            [desinence + (palatal_stem? ? "ёвале" : "овале"), desinence_transliterated + "ovále"]
          end

          def _past_singular_feminine
            [desinence + (palatal_stem? ? "ёвала" : "овала"), desinence_transliterated + "ovála"]
          end

          def _past_singular_neuter
            [desinence + (palatal_stem? ? "ёвало" : "овало"), desinence_transliterated + "oválo"]
          end

          def _past_dual
            [desinence + (palatal_stem? ? "ёвалѣ" : "овалѣ"), desinence_transliterated + "oválě"]
          end

          def _past_plural
            [desinence + (palatal_stem? ? "ёвали" : "овали"), desinence_transliterated + "ováli"]
          end

          def _imperative_second_singular
            [desinence + (palatal_stem? ? "ёвай" : "овай"), desinence_transliterated + "ovái"]
          end

          def _imperative_second_dual
            [desinence + (palatal_stem? ? "ёвайта" : "овайта"), desinence_transliterated + "ováita"]
          end

          def _imperative_second_plural
            [desinence + (palatal_stem? ? "ёвайте" : "овайте"), desinence_transliterated + "ováite"]
          end

          def _imperative_first_dual
            [desinence + (palatal_stem? ? "ёваута" : "оваута"), desinence_transliterated + "ováuta"]
          end

          def _imperative_first_plural
            [desinence + (palatal_stem? ? "ёвамте" : "овамте"), desinence_transliterated + "ovámte"]
          end

          def _participle_active_imperfective
            unless perfective?
              [desinence + "акье", desinence_transliterated + "ákje"]
            end
          end

          def _participle_passive_imperfective
            unless perfective?
              [desinence + "аме", desinence_transliterated + "áme"]
            end
          end

          def _participle_passive_perfective
            if perfective?
              [desinence + "ане", desinence_transliterated + "áne"]
            end
          end

          def _adv_participle_imperfective
            unless perfective?
              [desinence + "аен", desinence_transliterated + "áien"]
            end
          end

          def _adv_participle_perfective
            if perfective?
              [desinence + "аве", desinence_transliterated + "áve"]
            end
          end

          private

          def palatal_stem?
            stem_transliterated[-1] == "i"
          end
        end
      end
    end
  end
end
