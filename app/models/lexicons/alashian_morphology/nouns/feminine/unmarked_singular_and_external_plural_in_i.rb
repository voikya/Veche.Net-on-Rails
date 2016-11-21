require_relative 'unmarked_singular'

module Morphology
  module Alashian
    module Nouns
      module Feminine
        module UnmarkedSingularAndExternalPluralInI
          include Feminine::UnmarkedSingular

          def subtype
            "Unmarked Singular and External Plural in -ī"
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
