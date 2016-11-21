require_relative 'regular'

module Morphology
  module Alashian
    module Nouns
      module Masculine
        module FinalGlottalStop
          include Masculine::Regular

          def subtype
            "Final Glottal Stop"
          end

          def _absolute_plural
            [plural_stem + "ιην", plural_stem_transliterated + "yēn"]
          end

          def _construct_plural
            [plural_stem + "ιη", plural_stem_transliterated + "yē"]
          end

          private

          def plural_stem
            stem.gsub(/(ω|η|ει|ου)$/, {
              'ω'  => 'α',
              'η'  => 'ε',
              'ει' => 'ι',
              'ου' => 'υ'
            }) + 'ι'
          end

          def plural_stem_transliterated
            stem_transliterated.gsub(/[āēīū]$/, {
              'ā' => 'a',
              'ē' => 'e',
              'ī' => 'i',
              'ū' => 'u'
            }) + 'y'
          end
        end
      end
    end
  end
end
