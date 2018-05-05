require_relative 'regular'

module Morphology
  module Tunisian
    module Nouns
      module Masculine
        module MetathesizingI
          include Masculine::Regular

          def subtype
            "Metathesizing I"
          end

          private

          def plural
            strong.sub(/i(?=.$)/, '') + "is"
          end
        end
      end
    end
  end
end
