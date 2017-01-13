require_relative 'unmarked_singular'

module Morphology
  module Alashian
    module Nouns
      module Feminine
        module UnmarkedSingularAndExternalPluralInIen
          include Feminine::UnmarkedSingular

          def subtype
            "Unmarked Singular and External Plural in -ien"
          end

          def _absolute_plural
            [stem + "ιην", stem_transliterated + "ien"]
          end

          def _construct_plural
            [stem + "η", stem_transliterated + "ē"]
          end
        end
      end
    end
  end
end
