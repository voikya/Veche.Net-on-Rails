require_relative 'regular'

module Morphology
  module Alashian
    module Nouns
      module Feminine
        module ExternalPluralUType
          include Feminine::Regular

          def subtype
            "Ū-Type External Plural"
          end

          def _absolute_plural
            [stem + "ους̄", stem_transliterated + "ūš"]
          end
        end
      end
    end
  end
end
