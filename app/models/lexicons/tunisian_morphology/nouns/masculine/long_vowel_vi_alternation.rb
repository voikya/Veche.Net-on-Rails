require_relative 'regular'

module Morphology
  module Tunisian
    module Nouns
      module Masculine
        module LongVowelViAlternation
          include Masculine::Regular

          def subtype
            "Long Vowel ~ Vi Alternation"
          end

          private

          def plural
            strong.sub(/[áéíóú]$/, {
              'á' => 'ais',
              'é' => 'eis',
              'í' => 'ís',
              'ó' => 'ois',
              'ú' => 'uis'
            })
          end
        end
      end
    end
  end
end
