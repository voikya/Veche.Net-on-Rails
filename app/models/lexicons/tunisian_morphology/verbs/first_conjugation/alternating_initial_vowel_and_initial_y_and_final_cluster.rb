require_relative 'alternating_initial_vowel_and_initial_y'
require_relative 'final_cluster'

module Morphology
  module Tunisian
    module Verbs
      module FirstConjugation
        module AlternatingInitialVowelAndInitialYAndFinalCluster
          include FirstConjugation::AlternatingInitialVowelAndInitialY
          include FirstConjugation::FinalCluster

          def subtype
            "Alternating Initial Vowel and Initial Y and Final Cluster"
          end
        end
      end
    end
  end
end
