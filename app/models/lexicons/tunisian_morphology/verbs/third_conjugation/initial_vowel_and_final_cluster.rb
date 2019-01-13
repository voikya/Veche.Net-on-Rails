require_relative 'initial_vowel'
require_relative 'final_cluster'

module Morphology
  module Tunisian
    module Verbs
      module ThirdConjugation
        module InitialVowelAndFinalCluster
          include ThirdConjugation::InitialVowel
          include ThirdConjugation::FinalCluster

          def subtype
            "Initial Vowel and Final Consonant Cluster"
          end
        end
      end
    end
  end
end
