require_relative 'masculine_with_consonant_mutation'

module Morphology
  module Novegradian
    module Nouns
      module EStem
        module MasculineWithConsonantMutationAndIntrusiveJ
          include EStem::MasculineWithConsonantMutation

          def subtype
            "Masculine with Consonant Mutation and Intrusive *-j- in Plural"
          end

          def _nominative_plural
            [desinence_mutated + "я", desinence_transliterated_mutated + "iá"]
          end
        end
      end
    end
  end
end
