require_relative 'regular'

module Morphology
  module Alashian
    module Nouns
      module Masculine
        module FleetingVowel
          include Masculine::Regular

          def subtype
            "Fleeting Vowel"
          end

          def _absolute_plural
            [plural_stem + "ιην", plural_stem_transliterated + "ien"]
          end

          def _construct_plural
            [plural_stem + "η", plural_stem_transliterated + "ē"]
          end

          private

          def plural_stem
            stem.gsub(/([αειυ])(?=[^αωεηιου]$)/, '')
                .gsub(/μρ/, 'μβρ')
          end

          def plural_stem_transliterated
            stem_transliterated.gsub(/([aeiuə])(?=[^aāeēiīuūə]$)/, '')
                               .gsub(/mr/, 'mbr')
          end
        end
      end
    end
  end
end
