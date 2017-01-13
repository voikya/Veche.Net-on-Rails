require_relative 'singulative'

module Morphology
  module Alashian
    module Nouns
      module Feminine
        module SingulativeWithVowelLengtheningInPlural
          include Feminine::Singulative

          def subtype
            "Singulative with Vowel Lenghtening in Plural"
          end

          def _absolute_plural
            [plural_stem, plural_stem_transliterated]
          end

          def _construct_plural
            [plural_stem, plural_stem_transliterated]
          end

          private

          def plural_stem
            stem.gsub(/(α|ε|ι|υ)([^αωεηιου])\2?$/) do
              if raised_vowel?
                case $1
                  when "α" then "η"
                  when "ε" then "ει"
                end + $2
              elsif lowered_vowel?
                case $1
                  when "ι" then "η"
                  when "ε" then "ω"
                end + $2
              else
                case $1
                  when "α" then "ω"
                  when "ε" then "η"
                  when "ι" then "ει"
                  when "υ" then "ου"
                end + $2
              end
            end
          end

          def plural_stem_transliterated
            stem_transliterated.gsub(/(a|e|i|u)([^aāeēiīuūə])\2?$/) do
              if raised_vowel?
                case $1
                  when "a" then "ē"
                  when "e" then "ī"
                end + $2
              elsif lowered_vowel?
                case $1
                  when "i" then "ē"
                  when "e" then "ā"
                end + $2
              else
                case $1
                  when "a" then "ā"
                  when "e" then "ē"
                  when "i" then "ī"
                  when "u" then "ū"
                end + $2
              end
            end
          end
        end
      end
    end
  end
end
