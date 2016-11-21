require_relative 'unmarked_singular'

module Morphology
  module Alashian
    module Nouns
      module Feminine
        module UnmarkedSingularAndExternalPluralWithGemination
          include Feminine::UnmarkedSingular

          def subtype
            "Unmarked Singular and External Plural with Gemination"
          end

          def _absolute_plural
            [plural_stem + "ους̄", plural_stem_transliterated + "ūš"]
          end

          def _construct_plural
            [plural_stem + "ουτ", plural_stem_transliterated + "ūt"]
          end

          private

          def plural_stem
            stem.gsub(/(ω|η|ει|ου|ιη|υω)([^αωεηιου]+)$/) do |match|
              case $1
                when 'ω'  then 'α'
                when 'η'  then 'ε'
                when 'ει' then 'ι'
                when 'ου' then 'υ'
                when 'ιη' then 'ι'
                when 'υω' then 'υ'
              end + $2 + ($2 == "τζ" ? "ζ" : $2)
            end
          end

          def plural_stem_transliterated
            stem_transliterated.gsub(/(ā|ē|ī|ū|ie|uo)([^aāeēiīuūə]+)$/) do |match|
              case $1
                when 'ā'  then 'a'
                when 'ē'  then 'e'
                when 'ī'  then 'i'
                when 'ū'  then 'u'
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
