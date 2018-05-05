require_relative 'regular'

module Morphology
  module Tunisian
    module Nouns
      module Masculine
        module PluralInNes
          include Masculine::Regular

          def subtype
            "Plural in -nes"
          end

          private

          def plural
            base = strong[0...-1]
            base = base[0...-1] if base =~ /(cc|gg|ħ)$/

            base + "nes"
          end
        end
      end
    end
  end
end
