require_relative 'unmarked'

module Morphology
  module Tunisian
    module Nouns
      module Feminine
        module LongVowelVnAlternation
          include Feminine::Unmarked

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
