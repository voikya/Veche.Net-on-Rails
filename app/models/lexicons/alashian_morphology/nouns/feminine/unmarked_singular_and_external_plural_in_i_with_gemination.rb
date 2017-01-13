require_relative 'unmarked_singular_and_external_plural_with_gemination'

module Morphology
  module Alashian
    module Nouns
      module Feminine
        module UnmarkedSingularAndExternalPluralInIWithGemination
          include Feminine::UnmarkedSingularAndExternalPluralWithGemination

          def subtype
            "Unmarked Singular and External Plural in -ī with Gemination"
          end

          def _absolute_plural
            [plural_stem + "ει", plural_stem_transliterated + "ī"]
          end

          def _construct_plural
            _absolute_plural
          end
        end
      end
    end
  end
end
