require_relative 'unmarked_singular'

module Morphology
  module Alashian
    module Nouns
      module Feminine
        module UnmarkedSingularWithFleetingVowelAndExternalPluralInIen
          include Feminine::UnmarkedSingular

          def subtype
            "Unmarked Singular with Fleeting Vowel and External Plural in -ien"
          end

          def _absolute_plural
            [plural_stem + "ιην", plural_stem_transliterated + "ien"]
          end

          def _construct_plural
            [plural_stem + "η", plural_stem_transliterated + "ē"]
          end

          private

          def plural_stem
            if root.medial_aspirate?
              stem.gsub(/(π|τ|κ)\1([αειυ])(?=[^αωεηιου]$)/, '\1')
            else
              stem.gsub(/([αειυ])(?=[^αωεηιου]$)/, '')
            end
          end

          def plural_stem_transliterated
            if root.medial_aspirate?
              stem_transliterated.gsub(/h([aeiuə])(?=[^aāeēiīuūə]$)/, '')
            else
              stem_transliterated.gsub(/([aeiuə])(?=[^aāeēiīuūə]$)/, '')
            end
          end
        end
      end
    end
  end
end
