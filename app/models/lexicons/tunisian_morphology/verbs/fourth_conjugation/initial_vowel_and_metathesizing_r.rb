require_relative 'initial_vowel'
require_relative 'metathesizing_r'

module Morphology
  module Tunisian
    module Verbs
      module FourthConjugation
        module InitialVowelAndMetathesizingR
          include FourthConjugation::InitialVowel
          include FourthConjugation::MetathesizingR

          def subtype
            "Initial Vowel and Metathesizing R"
          end
        end
      end
    end
  end
end
