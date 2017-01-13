require_relative 'singulative'

module Morphology
  module Alashian
    module Nouns
      module Feminine
        module SingulativeWithDiphthongInPlural
          include Feminine::Singulative

          def subtype
            "Singulative with Diphthong in Plural"
          end

          def _absolute_plural
            [plural_stem, plural_stem_transliterated]
          end

          def _construct_plural
            [plural_stem, plural_stem_transliterated]
          end

          private

          def plural_stem
            stem.gsub(/(ι|υ)([^αωεηιου])\2$/) do
              case $1
                when "ι" then "ιη"
                when "υ" then "υω"
              end + $2
            end
          end

          def plural_stem_transliterated
            stem_transliterated.gsub(/(i|u)([^aāeēiīuūə])\2$/) do
              case $1
                when "i" then "ie"
                when "u" then "uo"
              end + $2
            end
          end
        end
      end
    end
  end
end
