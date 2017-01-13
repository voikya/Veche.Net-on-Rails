require_relative 'regular'

module Morphology
  module Alashian
    module Nouns
      module Feminine
        module ExternalPluralWithGemination
          include Feminine::Regular

          def subtype
            "External Plural with Gemination"
          end

          def _absolute_plural
            [plural_stem + "ους̄", plural_stem_transliterated + "ūš"]
          end

          def _construct_plural
            [plural_stem + "ουτ", plural_stem_transliterated + "ūt"]
          end

          private

          def plural_stem
            stem.gsub(/(ω|η|ει|ου)([^αωεηιου]+)$/) do |match|
              case $1
                when 'ω'  then 'α'
                when 'η'  then 'ε'
                when 'ει' then 'ι'
                when 'ου' then 'υ'
              end + $2 + ($2 == "τζ" ? "ζ" : $2)
            end
          end

          def plural_stem_transliterated
            stem_transliterated.gsub(/([āēīū])([^aāeēiīuūə]+)$/) do |match|
              case $1
                when 'ā' then 'a'
                when 'ē' then 'e'
                when 'ī' then 'i'
                when 'ū' then 'u'
              end + $2 + $2
            end
          end
        end
      end
    end
  end
end
