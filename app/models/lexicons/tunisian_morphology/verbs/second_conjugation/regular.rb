module Morphology
  module Tunisian
    module Verbs
      module SecondConjugation
        module Regular
          def conjugation
            "Conjugation II"
          end

          def subtype
            "Regular"
          end

          def _infinitive_singular
            weak + "é"
          end

          def _infinitive_plural
            strong + "nes"
          end

          def _present_participle_masculine
            weak + "èn"
          end

          def _present_participle_feminine
            weak + "ène"
          end

          def _present_participle_plural
            weak + "eis"
          end

          def _past_participle_masculine
            weak + "ut"
          end

          def _past_participle_feminine
            weak + "ute"
          end

          def _past_participle_plural
            weak + "uts"
          end

          def _present_first_singular
            ablaut
          end

          def _present_second_singular
            strong + "s"
          end

          def _present_third_singular
            strong
          end

          def _present_first_plural
            weak + "èms"
          end

          def _present_second_plural
            weak + "èts"
          end

          def _present_third_plural
            strong + "é"
          end

          def _imperfect_first_singular
            weak + "ève"
          end

          def _imperfect_second_singular
            weak + "èvs"
          end

          def _imperfect_third_singular
            weak + "ève"
          end

          def _imperfect_first_plural
            weak + "ivams"
          end

          def _imperfect_second_plural
            weak + "ivats"
          end

          def _imperfect_third_plural
            weak + "èvé"
          end

          def _preterite_first_singular
            weak + "ís"
          end

          def _preterite_second_singular
            weak + "ís"
          end

          def _preterite_third_singular
            weak + "ís"
          end

          def _preterite_first_plural
            weak + "írims"
          end

          def _preterite_second_plural
            weak + "írisç"
          end

          def _preterite_third_plural
            weak + "íré"
          end

          def _subjunctive_first_singular
            ablaut
          end

          def _subjunctive_second_singular
            ablaut + "s"
          end

          def _subjunctive_third_singular
            ablaut
          end

          def _subjunctive_first_plural
            weak + "ams"
          end

          def _subjunctive_second_plural
            weak + "ats"
          end

          def _subjunctive_third_plural
            ablaut + "é"
          end

          def _perfect_complex_first_singular
            if intransitive? || mediopassive?
              "sem " + _past_participle_masculine + "(e)"
            else
              "ai " + _past_participle_masculine + "(e/s)"
            end
          end

          def _perfect_complex_second_singular
            if intransitive? || mediopassive?
              "es " + _past_participle_masculine + "(e)"
            else
              "ais " + _past_participle_masculine + "(e/s)"
            end
          end

          def _perfect_complex_third_singular
            if intransitive? || mediopassive?
              "e " + _past_participle_masculine + "(e)"
            else
              "ae " + _past_participle_masculine + "(e/s)"
            end
          end

          def _perfect_complex_first_plural
            if intransitive? || mediopassive?
              "sems " + _past_participle_plural
            else
              "ems " + _past_participle_masculine + "(e/s)"
            end
          end

          def _perfect_complex_second_plural
            if intransitive? || mediopassive?
              "esç " + _past_participle_plural
            else
              "ets " + _past_participle_masculine + "(e/s)"
            end
          end

          def _perfect_complex_third_plural
            if intransitive? || mediopassive?
              "só " + _past_participle_plural
            else
              "aié " + _past_participle_masculine + "(e/s)"
            end
          end

          def _perfect_simple_first_singular
            if intransitive? || mediopassive?
              _past_participle_masculine + "-em"
            else
              _past_participle_masculine + "-ai"
            end
          end

          def _perfect_simple_second_singular
            _past_participle_masculine + "-es"
          end

          def _perfect_simple_third_singular
            if intransitive? || mediopassive?
              _past_participle_masculine + "-e"
            else
              _past_participle_masculine + "-ae"
            end
          end

          def _perfect_simple_first_plural
            if intransitive? || mediopassive?
              _past_participle_masculine + "-esms"
            else
              _past_participle_masculine + "-ems"
            end
          end

          def _perfect_simple_second_plural
            if intransitive? || mediopassive?
              _past_participle_masculine + "-esç"
            else
              _past_participle_masculine + "-ets"
            end
          end

          def _perfect_simple_third_plural
            if intransitive? || mediopassive?
              _past_participle_masculine + "-çu"
            else
              _past_participle_masculine + "-çi"
            end
          end

          def _future_simple_first_singular
            strong + "ray"
          end

          def _future_simple_second_singular
            strong + "rais"
          end

          def _future_simple_third_singular
            strong + "ray"
          end

          def _future_simple_first_plural
            strong + "rems"
          end

          def _future_simple_second_plural
            strong + "rets"
          end

          def _future_simple_third_plural
            strong + "ré"
          end

          def _future_complex_first_singular
            "viuc il " + _infinitive_singular
          end

          def _future_complex_second_singular
            "vucs il " + _infinitive_singular
          end

          def _future_complex_third_singular
            "vuc il " + _infinitive_singular
          end

          def _future_complex_first_plural
            "vucms ls " + _infinitive_plural
          end

          def _future_complex_second_plural
            "vucts ls " + _infinitive_plural
          end

          def _future_complex_third_plural
            "vuccé ls " + _infinitive_plural
          end

          def _imperative_second_singular
            strong
          end

          def _imperative_second_plural
            strong + "it"
          end
        end
      end
    end
  end
end
