require_relative '../periphrastic_forms'
require_relative '../palatalization'
require_relative '../neoacute'

module Morphology
  module Novegradian
    module Verbs
      module IConjugation
        module RegularStemStressed
          include Verbs::PeriphrasticForms
          include Verbs::Palatalization
          include Verbs::Neoacute

          def conjugation
            "I Conjugation"
          end

          def subtype
            "Regular Stem-Stressed"
          end

          def _infinitive
            [stem + "ити", stem_transliterated + "iti"]
          end

          def _supine
            [stem + "ит", stem_transliterated + "it"]
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
            elsif palatal_stem?
              [stem + "юн", stem_transliterated[0..-2] + "iun"]
            else
              [stem_mutated + "ун", stem_transliterated_mutated + "un"]
            end
          end

          def _present_first_dual
            if neoacute?
              [neoacute(stem) + "ива", neoacute_transliterated(stem_transliterated) + "iva"]
            else
              [stem + "ива", stem_transliterated + "iva"]
            end
          end

          def _present_first_plural
            if neoacute?
              [neoacute(stem) + "им", neoacute_transliterated(stem_transliterated) + "im"]
            else
              [stem + "им", stem_transliterated + "im"]
            end
          end

          def _present_second_singular
            if neoacute?
              [neoacute(stem) + "иш", neoacute_transliterated(stem_transliterated) + "iś"]
            else
              [stem + "иш", stem_transliterated + "iś"]
            end
          end

          def _present_second_dual
            if neoacute?
              [neoacute(stem) + "ита", neoacute_transliterated(stem_transliterated) + "ita"]
            else
              [stem + "ита", stem_transliterated + "ita"]
            end
          end

          def _present_second_plural
            if neoacute?
              [neoacute(stem) + "ите", neoacute_transliterated(stem_transliterated) + "ite"]
            else
              [stem + "ите", stem_transliterated + "ite"]
            end
          end

          def _present_third_singular
            if neoacute?
              [neoacute(stem) + "ит", neoacute_transliterated(stem_transliterated) + "it"]
            else
              [stem + "ит", stem_transliterated + "it"]
            end
          end

          def _present_third_dual
            _present_second_dual
          end

          def _present_third_plural
            if neoacute?
              [neoacute(stem) + "ат", neoacute_transliterated(stem_transliterated) + "at"]
            elsif palatal_stem?
              [stem + "ят", stem_transliterated[0..-2] + "iat"]
            else
              [stem + "ат", stem_transliterated + "at"]
            end
          end

          def _past_singular_masculine
            [stem + "иле", stem_transliterated + "ile"]
          end

          def _past_singular_feminine
            [stem + "ила", stem_transliterated + "ila"]
          end

          def _past_singular_neuter
            [stem + "ило", stem_transliterated + "ilo"]
          end

          def _past_dual
            [stem + "илѣ", stem_transliterated + "ilě"]
          end

          def _past_plural
            [stem + "или", stem_transliterated + "ili"]
          end

          def _imperative_second_singular
            [desinence + "и", desinence_transliterated + "í"]
          end

          def _imperative_second_dual
            [desinence + "ита", desinence_transliterated + "íta"]
          end

          def _imperative_second_plural
            [desinence + "ите", desinence_transliterated + "íte"]
          end

          def _imperative_first_dual
            [desinence + "иўта", desinence_transliterated + "íwta"]
          end

          def _imperative_first_plural
            [desinence + "имте", desinence_transliterated + "ímte"]
          end

          def _participle_active_imperfective
            unless perfective?
              if palatal_stem?
                [stem + "екье", stem_transliterated[0..-2] + "iekje"]
              else
                [stem + "екье", stem_transliterated + "ekje"]
              end
            end
          end

          def _participle_passive_imperfective
            unless perfective?
              [stem + "име", stem_transliterated + "ime"]
            end
          end

          def _participle_passive_perfective
            if perfective?
              if past_participle_in_t?
                [stem + "ите", stem_transliterated + "ite"]
              elsif palatal_stem?
                [stem + "ене", stem_transliterated[0..-2] + "iene"]
              else
                [stem_mutated(labial_only: true) + "ене", stem_transliterated_mutated(labial_only: true) + "ene"]
              end
            end
          end

          def _adv_participle_imperfective
            unless perfective?
              [stem + "ин", stem_transliterated + "in"]
            end
          end

          def _adv_participle_perfective
            if perfective?
              [stem + "иве", stem_transliterated + "ive"]
            end
          end

          private

          def palatal_stem?
            stem_transliterated[-1] == "j" && stem[-1] != "ь"
          end
        end
      end
    end
  end
end
