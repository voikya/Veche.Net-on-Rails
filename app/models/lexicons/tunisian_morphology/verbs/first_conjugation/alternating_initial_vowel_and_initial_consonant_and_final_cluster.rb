require_relative 'final_cluster'

module Morphology
  module Tunisian
    module Verbs
      module FirstConjugation
        module AlternatingInitialVowelAndInitialConsonantAndFinalCluster
          include FirstConjugation::FinalCluster

          def subtype
            "Alternating Initial Vowel and Initial Consonant and Final Cluster"
          end

          def _future_complex_first_plural
            "vucms l-" + _infinitive_plural
          end

          def _future_complex_second_plural
            "vucts l-" + _infinitive_plural
          end

          def _future_complex_third_plural
            "vuccé l-" + _infinitive_plural
          end
        end
      end
    end
  end
end
