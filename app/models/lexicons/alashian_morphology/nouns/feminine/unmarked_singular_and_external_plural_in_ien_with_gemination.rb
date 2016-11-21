require_relative 'unmarked_singular_and_external_plural_with_gemination'

module Morphology
  module Alashian
    module Nouns
      module Feminine
        module UnmarkedSingularAndExternalPluralInIenWithGemination
          include Feminine::UnmarkedSingularAndExternalPluralWithGemination

          def subtype
            "Unmarked Singular and External Plural in -ien with Gemination"
          end

          def _absolute_plural
            [plural_stem + "ιην", plural_stem_transliterated + "ien"]
          end

          def _construct_plural
            [plural_stem + "η", plural_stem_transliterated + "ē"]
          end
        end
      end
    end
  end
end
