require_relative 'initial_vowel'
require_relative 'final_cluster'

module Morphology
  module Tunisian
    module Verbs
      module FirstConjugation
        module InitialVowelAndFinalCluster
          include FirstConjugation::InitialVowel
          include FirstConjugation::FinalCluster

          def subtype
            "Initial Vowel and Final Cluster"
          end
        end
      end
    end
  end
end
