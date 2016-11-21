require_relative 'regular'

module Morphology
  module Alashian
    module Nouns
      module Feminine
        module IntrusiveK
          include Feminine::Regular

          def subtype
            "Intrusive K"
          end

          def _absolute_singular
            [stem[0..-2] + "κιω", stem_transliterated[0..-2] + "kyā"]
          end

          def _absolute_plural
            [stem[0..-2] + "κιους̄", stem_transliterated[0..-2] + "kyūš"]
          end

          def _construct_plural
            [stem[0..-2] + "κιουτ", stem_transliterated[0..-2] + "kyūt"]
          end
        end
      end
    end
  end
end
