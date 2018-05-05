require_relative 'regular'

module Morphology
  module Tunisian
    module Nouns
      module Masculine
        module LongVowelVnAlternation
          include Masculine::Regular

          def subtype
            "Long Vowel ~ Vn Alternation"
          end

          private

          def plural
            strong.sub(/[áéíóú]$/, {
              'á' => 'anes',
              'é' => 'ènes',
              'í' => 'ines',
              'ó' => 'ones',
              'ú' => 'unes'
            })
          end
        end
      end
    end
  end
end
