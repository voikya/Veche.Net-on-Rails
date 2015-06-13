require_relative './regular_stem_stressed'

module Morphology
  module Novegradian
    module Verbs
      module IConjugation
        module RegularProterodynamic
          include IConjugation::RegularStemStressed

          def conjugation
            "I Conjugation"
          end

          def subtype
            "Regular with Proterodynamic Stress"
          end

          def _present_first_singular
            if neoacute?
              [neoacute(desinence_mutated) + "ун", neoacute_transliterated(desinence_transliterated_mutated) + "ún"]
            else
              [desinence_mutated + "ун", desinence_transliterated_mutated + "ún"]
            end
          end
        end
      end
    end
  end
end
