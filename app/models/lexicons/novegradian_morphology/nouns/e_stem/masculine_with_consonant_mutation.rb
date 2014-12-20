require_relative 'regular_masculine'
require_relative '../palatalization'

module Morphology
  module Novegradian
    module Nouns
      module EStem
        module MasculineWithConsonantMutation
          include EStem::RegularMasculine
          include Nouns::Palatalization

          def subtype
            "Masculine with Consonant Mutation in Plural"
          end

          def _nominative_plural
            [stem_mutated + "и", stem_transliterated_mutated + "i"]
          end

          def _accusative_plural
            _genitive_plural
          end

          def _dative_plural
            [desinence_mutated + "ам", desinence_transliterated_mutated + "ám"]
          end

          def _partitive_plural
            [stem_mutated + "еу", stem_transliterated_mutated + "eu"]
          end

          def _locative_plural
            [stem_mutated + "ѣх", stem_transliterated_mutated + "ěh"]
          end

          def _lative_plural
            [stem_mutated + "ѣ", stem_transliterated_mutated + "ě"]
          end
        end
      end
    end
  end
end
