require_relative 'regular'

module Morphology
  module Alashian
    module Nouns
      module Masculine
        module ExternalPluralInI
          include Masculine::Regular

          def subtype
            "External Plural in -ī"
          end

          def _absolute_plural
            [stem + "ει", stem_transliterated + "ī"]
          end

          def _construct_plural
            [stem + "ει", stem_transliterated + "ī"]
          end
        end
      end
    end
  end
end
