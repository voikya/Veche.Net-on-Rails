require_relative 'external_plural_with_gemination'

module Morphology
  module Alashian
    module Nouns
      module Masculine
        module ExternalPluralInUsWithGemination
          include Masculine::ExternalPluralWithGemination

          def subtype
            "External Plural in -ūš with Gemination"
          end

          def _absolute_plural
            [plural_stem + "ους̄", plural_stem_transliterated + "ūš"]
          end

          def _construct_plural
            [plural_stem + "ουτ", plural_stem_transliterated + "ūt"]
          end
        end
      end
    end
  end
end
