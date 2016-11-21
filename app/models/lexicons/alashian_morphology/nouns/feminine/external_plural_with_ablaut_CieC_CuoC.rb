require_relative 'external_plural_with_gemination'

module Morphology
  module Alashian
    module Nouns
      module Feminine
        module ExternalPluralWithAblautCieCCuoC
          include Feminine::ExternalPluralWithGemination

          def subtype
            "External Plural with Ablaut (CieC/CuoC type)"
          end

          def _absolute_singular
            [stem, stem_transliterated]
          end

          def _construct_singular
            _absolute_singular
          end

          private

          def plural_stem
            stem.gsub(/(ιη|υω)([^αωεηιου]+)$/) do |match|
              case $1
                when 'ιη' then 'ι'
                when 'υω' then 'υ'
              end + $2 + $2
            end
          end

          def plural_stem_transliterated
            stem_transliterated.gsub(/(ie|uo)([^aāeēiīuūə]+)$/) do |match|
              case $1
                when 'ie' then 'i'
                when 'uo' then 'u'
              end + $2 + $2
            end
          end
        end
      end
    end
  end
end
