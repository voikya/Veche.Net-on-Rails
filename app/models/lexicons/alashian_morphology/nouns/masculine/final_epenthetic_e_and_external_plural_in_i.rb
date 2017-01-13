require_relative 'final_epenthetic_e'

module Morphology
  module Alashian
    module Nouns
      module Masculine
        module FinalEpentheticEAndExternalPluralInI
          include Masculine::FinalEpentheticE

          def subtype
            "Final Epenthetic -e and External Plural in -ī"
          end

          def _absolute_plural
            [stem + "ει", stem_transliterated + "ī"]
          end

          def _construct_plural
            [stem + "ει", stem_transliterated + "ī"]
          end
        end
      end
    end
  end
end
