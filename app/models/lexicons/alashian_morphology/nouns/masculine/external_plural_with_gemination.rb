require_relative 'regular'

module Morphology
  module Alashian
    module Nouns
      module Masculine
        module ExternalPluralWithGemination
          include Masculine::Regular

          def subtype
            "External Plural with Gemination"
          end

          def _absolute_plural
            [plural_stem + "ιην", plural_stem_transliterated + "ien"]
          end

          def _determinate_plural
            determinate(_absolute_plural)
          end

          def _partitive_plural
            partitive(_absolute_plural)
          end

          def _construct_plural
            [plural_stem + "η", plural_stem_transliterated + "ē"]
          end

          private

          def plural_stem
            stem.gsub(/(ω|η|ει|ου|υω)([^αωεηιου]+)$/) do |match|
              if raised_vowel?
                case $1
                  when 'ω' then 'ε'
                  when 'η' then 'ι'
                end
              elsif lowered_vowel?
                case $1
                  when 'ει' then 'ε'
                  when 'η'  then 'α'
                end
              else
                case $1
                  when 'ω'  then 'α'
                  when 'η'  then 'ε'
                  when 'ει' then 'ι'
                  when 'ου' then 'υ'
                  when 'υω' then 'υ'
                end
              end + $2 + ($2 == "τζ" ? "ζ" : $2)
            end
          end

          def plural_stem_transliterated
            stem_transliterated.gsub(/(ā|ē|ī|ū|uo)([^aāeēiīuūə]+)$/) do |match|
              if raised_vowel?
                case $1
                  when 'ā' then 'e'
                  when 'ē' then 'i'
                end
              elsif lowered_vowel?
                case $1
                  when 'ī' then 'e'
                  when 'ē' then 'a'
                end
              else
                case $1
                  when 'ā'  then 'a'
                  when 'ē'  then 'e'
                  when 'ī'  then 'i'
                  when 'ū'  then 'u'
                  when 'uo' then 'u'
                end
              end + $2 + $2
            end
          end
        end
      end
    end
  end
end
