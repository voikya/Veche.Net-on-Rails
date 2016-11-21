require_relative 'regular'

module Morphology
  module Alashian
    module Nouns
      module Masculine
        module ExternalPluralInUs
          include Masculine::Regular

          def subtype
            "External Plural in -ūš"
          end

          def _absolute_singular
            [
              stem,
              stem_transliterated.gsub(/[ywh]$/, '')
            ]
          end

          def _absolute_plural
            [stem + "ους̄", stem_transliterated + "ūš"]
          end

          def _construct_singular
            _absolute_singular
          end

          def _construct_plural
            [stem + "ουτ", stem_transliterated + "ūt"]
          end
        end
      end
    end
  end
end
