require_relative 'regular'

module Morphology
  module Alashian
    module Nouns
      module Masculine
        module HAugment
          include Masculine::Regular

          def subtype
            "H-Augment"
          end

          def _absolute_plural
            [stem + "αηυως̄", stem_transliterated + "ahuoš"]
          end

          def _construct_singular
            [stem + stem[-1] + "η", stem_transliterated + stem_transliterated[-1] + "ē"]
          end

          def _construct_plural
            [stem + "αηουτ", stem_transliterated + "ahūt"]
          end
        end
      end
    end
  end
end
