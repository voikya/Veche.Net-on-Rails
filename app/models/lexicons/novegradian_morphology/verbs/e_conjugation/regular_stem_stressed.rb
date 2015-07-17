require_relative '../periphrastic_forms'
require_relative '../palatalization'
require_relative '../neoacute'

module Morphology
  module Novegradian
    module Verbs
      module EConjugation
        module RegularStemStressed
          include Verbs::PeriphrasticForms
          include Verbs::Palatalization
          include Verbs::Neoacute

          def conjugation
            "E Conjugation"
          end

          def subtype
            "Regular Stem-Stressed"
          end

          def _infinitive
            if retracted_stress?
              [stem + (palatal_stem? ? "яти" : "ати"), stem_transliterated + "ati"]
            else
              [desinence + (palatal_stem? ? "яти" : "ати"), desinence_transliterated + "áti"]
            end
          end

          def _supine
            if retracted_stress?
              [stem + (palatal_stem? ? "ят" : "ат"), stem_transliterated + "at"]
            else
              [desinence + (palatal_stem? ? "ят" : "ат"), desinence_transliterated + "át"]
            end
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
            if neoacute?
              [neoacute(stem_mutated) + "ун", neoacute_transliterated(stem_transliterated_mutated) + "un"]
            else
              [stem_mutated + (palatal_stem? ? "юн" : "ун"), stem_transliterated_mutated + "un"]
            end
          end

          def _present_first_dual
            if neoacute?
              [neoacute(stem_mutated) + "ева", neoacute_transliterated(stem_transliterated_mutated) + "eva"]
            else
              [stem_mutated + "ева", stem_transliterated_mutated + "eva"]
            end
          end

          def _present_first_plural
            if neoacute?
              [neoacute(stem_mutated) + "ем", neoacute_transliterated(stem_transliterated_mutated) + "em"]
            else
              [stem_mutated + "ем", stem_transliterated_mutated + "em"]
            end
          end

          def _present_second_singular
            if neoacute?
              [neoacute(stem_mutated) + "еш", neoacute_transliterated(stem_transliterated_mutated) + "eś"]
            else
              [stem_mutated + "еш", stem_transliterated_mutated + "eś"]
            end
          end

          def _present_second_dual
            if neoacute?
              [neoacute(stem_mutated) + "ета", neoacute_transliterated(stem_transliterated_mutated) + "eta"]
            else
              [stem_mutated + "ета", stem_transliterated_mutated + "eta"]
            end
          end

          def _present_second_plural
            if neoacute?
              [neoacute(stem_mutated) + "ете", neoacute_transliterated(stem_transliterated_mutated) + "ete"]
            else
              [stem_mutated + "ете", stem_transliterated_mutated + "ete"]
            end
          end

          def _present_third_singular
            if neoacute?
              [neoacute(stem_mutated) + "ет", neoacute_transliterated(stem_transliterated_mutated) + "et"]
            else
              [stem_mutated + "ет", stem_transliterated_mutated + "et"]
            end
          end

          def _present_third_dual
            _present_second_dual
          end

          def _present_third_plural
            if neoacute?
              [neoacute(stem_mutated) + "ут", neoacute_transliterated(stem_transliterated_mutated) + "ut"]
            else
              [stem_mutated + (palatal_stem? ? "ют" : "ут"), stem_transliterated_mutated + "ut"]
            end
          end

          def _past_singular_masculine
            if retracted_stress?
              [stem + (palatal_stem? ? "яле" : "але"), stem_transliterated + "ale"]
            else
              [desinence + (palatal_stem? ? "яле" : "але"), desinence_transliterated + "ále"]
            end
          end

          def _past_singular_feminine
            if retracted_stress?
              [stem + (palatal_stem? ? "яла" : "ала"), stem_transliterated + "ala"]
            else
              [desinence + (palatal_stem? ? "яла" : "ала"), desinence_transliterated + "ála"]
            end
          end

          def _past_singular_neuter
            if retracted_stress?
              [stem + (palatal_stem? ? "яло" : "ало"), stem_transliterated + "alo"]
            else
              [desinence + (palatal_stem? ? "яло" : "ало"), desinence_transliterated + "álo"]
            end
          end

          def _past_dual
            if retracted_stress?
              [stem + (palatal_stem? ? "ялѣ" : "алѣ"), stem_transliterated + "alě"]
            else
              [desinence + (palatal_stem? ? "ялѣ" : "алѣ"), desinence_transliterated + "álě"]
            end
          end

          def _past_plural
            if retracted_stress?
              [stem + (palatal_stem? ? "яли" : "али"), stem_transliterated + "ali"]
            else
              [desinence + (palatal_stem? ? "яли" : "али"), desinence_transliterated + "áli"]
            end
          end

          def _imperative_second_singular
            if palatal_stem?
              [stem + "й", stem_transliterated]
            else
              [stem_mutated + "и", remove_stress(stem_transliterated_mutated) + "í"]
            end
          end

          def _imperative_second_dual
            [stem_mutated + "ѣта", remove_stress(stem_transliterated_mutated) + "ě́ta"]
          end

          def _imperative_second_plural
            [stem_mutated + "ѣте", remove_stress(stem_transliterated_mutated) + "ě́te"]
          end

          def _imperative_first_dual
            [stem_mutated + "ѣута", remove_stress(stem_transliterated_mutated) + "ě́uta"]
          end

          def _imperative_first_plural
            [stem_mutated + "ѣмте", remove_stress(stem_transliterated_mutated) + "ě́mte"]
          end

          def _participle_active_imperfective
            unless perfective?
              if retracted_stress?
                [stem_mutated + (palatal_stem? ? "якье" : "акье"), stem_transliterated_mutated + "akje"]
              else
                [stem_mutated + (palatal_stem? ? "якье" : "акье"), remove_stress(stem_transliterated_mutated) + "ákje"]
              end
            end
          end

          def _participle_passive_imperfective
            unless perfective?
              if retracted_stress?
                [stem_mutated + "еме", stem_transliterated_mutated + "eme"]
              else
                [stem_mutated + "еме", remove_stress(stem_transliterated_mutated) + "éme"]
              end
            end
          end

          def _participle_passive_perfective
            if perfective?
              if retracted_stress?
                [stem + (palatal_stem? ? "яне" : "ане"), stem_transliterated + "ane"]
              else
                [desinence + (palatal_stem? ? "яне" : "ане"), desinence_transliterated + "áne"]
              end
            end
          end

          def _adv_participle_imperfective
            unless perfective?
              if palatal_stem?
                [stem + "и", remove_stress(stem_transliterated)[0..-2] + "jí"]
              else
                [stem_mutated + "и", remove_stress(stem_transliterated_mutated) + "í"]
              end
            end
          end

          def _adv_participle_perfective
            if perfective?
              if retracted_stress?
                [stem + (palatal_stem? ? "яве" : "аве"), stem_transliterated + "ave"]
              else
                [desinence + (palatal_stem? ? "яве" : "аве"), desinence_transliterated + "áve"]
              end
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
