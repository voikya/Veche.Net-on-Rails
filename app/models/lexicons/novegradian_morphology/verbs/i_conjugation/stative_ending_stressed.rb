require_relative './regular_ending_stressed'

module Morphology
  module Novegradian
    module Verbs
      module IConjugation
        module StativeEndingStressed
          include IConjugation::RegularEndingStressed

          def conjugation
            "I Conjugation"
          end

          def subtype
            "Stative Ending-Stressed"
          end

          def _infinitive
            if palatal_stem?
              [desinence + "яти", desinence_transliterated[0..-2] + "iáti"]
            elsif retracted_stress?
              [stem + "ѣти", stem_transliterated + "ěti"]
            else
              [desinence + "ѣти", desinence_transliterated + "ě́ti"]
            end
          end

          def _supine
            if palatal_stem?
              [desinence + "ят", desinence_transliterated[0..-2] + "iát"]
            elsif retracted_stress?
              [stem + "ѣт", stem_transliterated + "ět"]
            else
              [desinence + "ѣт", desinence_transliterated + "ě́t"]
            end
          end

          def _present_first_singular
            if neoacute?
              [neoacute(desinence_mutated) + "ун", neoacute_transliterated(desinence_transliterated_mutated) + "ún"]
            elsif palatal_stem?
              [desinence + "юн", desinence_transliterated[0..-2] + "iún"]
            else
              [desinence_mutated + "ун", desinence_transliterated_mutated + "ún"]
            end
          end

          def _present_third_plural
            if neoacute?
              [neoacute(desinence) + "ат", neoacute_transliterated(desinence_transliterated) + "át"]
            elsif palatal_stem?
              [desinence + "ят", desinence_transliterated[0..-2] + "iát"]
            else
              [desinence + "ат", desinence_transliterated + "át"]
            end
          end

          def _past_singular_masculine
            if palatal_stem?
              [desinence + "яле", desinence_transliterated[0..-2] + "iále"]
            elsif retracted_stress?
              [stem + "ѣле", stem_transliterated + "ěle"]
            else
              [desinence + "ѣле", desinence_transliterated + "ě́le"]
            end
          end

          def _past_singular_feminine
            if palatal_stem?
              [desinence + "яла", desinence_transliterated[0..-2] + "iála"]
            elsif retracted_stress?
              [stem + "ѣла", stem_transliterated + "ěla"]
            else
              [desinence + "ѣла", desinence_transliterated + "ě́la"]
            end
          end

          def _past_singular_neuter
            if palatal_stem?
              [desinence + "яло", desinence_transliterated[0..-2] + "iálo"]
            elsif retracted_stress?
              [stem + "ѣло", stem_transliterated + "ělo"]
            else
              [desinence + "ѣло", desinence_transliterated + "ě́lo"]
            end
          end

          def _past_dual
            if palatal_stem?
              [desinence + "ялѣ", desinence_transliterated[0..-2] + "iálě"]
            elsif retracted_stress?
              [stem + "ѣлѣ", stem_transliterated + "ělě"]
            else
              [desinence + "ѣлѣ", desinence_transliterated + "ě́lě"]
            end
          end

          def _past_plural
            if palatal_stem?
              [desinence + "яли", desinence_transliterated[0..-2] + "iáli"]
            elsif retracted_stress?
              [stem + "ѣли", stem_transliterated + "ěli"]
            else
              [desinence + "ѣли", desinence_transliterated + "ě́li"]
            end
          end

          def _participle_active_imperfective
            unless perfective?
              if palatal_stem?
                [desinence + "екье", desinence_transliterated[0..-2] + "iékje"]
              else
                [desinence + "екье", desinence_transliterated + "ékje"]
              end
            end
          end

          def _adv_participle_perfective
            if perfective?
              if retracted_stress?
                [stem + "ѣве", stem_transliterated + "ěve"]
              else
                [desinence + "ѣве", desinence_transliterated + "ě́ve"]
              end
            end
          end

          private

          def palatal_stem?
            stem_transliterated[-1] == "j"
          end
        end
      end
    end
  end
end
