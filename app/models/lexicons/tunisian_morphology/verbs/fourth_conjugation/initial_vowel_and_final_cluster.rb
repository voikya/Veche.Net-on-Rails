require_relative 'initial_vowel'
require_relative 'final_cluster'

module Morphology
  module Tunisian
    module Verbs
      module FourthConjugation
        module InitialVowelAndFinalCluster
          include FourthConjugation::InitialVowel
          include FourthConjugation::FinalCluster

          def subtype
            "Initial Vowel and Final Cluster"
          end
        end
      end
    end
  end
end
