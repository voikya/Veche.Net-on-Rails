require_relative 'animate'
require_relative '../palatalization'

module Morphology
  module Novegradian
    module Nouns
      module IStem
        module AnimateWithPalatalization
          include IStem::Animate
          include Nouns::Palatalization

          def subtype
            "Animate with Palatalization"
          end

          def _nominative_plural
            [stem_mutated + "ие", stem_transliterated_mutated + "ie"]
          end

          def _dative_plural
            [desinence_mutated + "ям", desinence_transliterated_mutated + "iám"]
          end

          def _partitive_plural
            [stem_mutated + "еу", stem_transliterated_mutated + "eu"]
          end

          def _locative_plural
            [stem_mutated + "их", stem_transliterated_mutated + "ih"]
          end

          def _lative_plural
            [stem_mutated + "и", stem_transliterated_mutated + "i"]
          end
        end
      end
    end
  end
end
