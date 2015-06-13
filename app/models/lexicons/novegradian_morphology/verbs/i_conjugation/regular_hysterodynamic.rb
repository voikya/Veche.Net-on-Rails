require_relative './regular_ending_stressed'

module Morphology
  module Novegradian
    module Verbs
      module IConjugation
        module RegularHysterodynamic
          include IConjugation::RegularEndingStressed

          def conjugation
            "I Conjugation"
          end

          def subtype
            "Regular with Hysterodynamic Stress"
          end

          def _present_first_singular
            if palatal_stem?
              if neoacute?
                [neoacute(desinence) + "юн", neoacute_transliterated(desinence_transliterated[0..-2]) + "iún"]
              else
                [desinence + "юн", desinence_transliterated[0..-2] + "iún"]
              end
            else
              if neoacute?
                [neoacute(desinence_mutated) + "ун", neoacute_transliterated(desinence_transliterated_mutated) + "ún"]
              else
                [desinence_mutated + "ун", desinence_transliterated_mutated + "ún"]
              end
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
            if palatal_stem?
              if neoacute?
                [neoacute(stem) + "ят", neoacute_transliterated(stem_transliterated[0..-2]) + "iat"]
              else
                [stem + "ят", stem_transliterated[0..-2] + "iat"]
              end
            else
              if neoacute?
                [neoacute(stem) + "ат", neoacute_transliterated(stem_transliterated) + "at"]
              else
                [stem + "ат", stem_transliterated + "at"]
              end
            end
          end

          def _participle_passive_perfective
            if perfective?
              if past_participle_in_t?
                [desinence + "ите", desinence_transliterated + "íte"]
              elsif palatal_stem?
                [desinence + "ене", desinence_transliterated[0..-2] + "iéne"]
              else
                [desinence_mutated(labial_only: true) + "ене", desinence_transliterated_mutated(labial_only: true) + "éne"]
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
