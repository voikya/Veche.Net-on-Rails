require_relative 'external_plural_with_gemination'

module Morphology
  module Alashian
    module Nouns
      module Masculine
        module ExternalPluralWithAblautCeC
          include Masculine::ExternalPluralWithGemination

          def subtype
            "External Plural with Ablaut (CeC type)"
          end

          private

          def plural_stem
            stem.gsub(/ε([^αωεηιου]+)$/, 'ι\1\1')
          end

          def plural_stem_transliterated
            stem_transliterated.gsub(/e([^aāeēiīuūə]+)$/, 'i\1\1')
          end
        end
      end
    end
  end
end
