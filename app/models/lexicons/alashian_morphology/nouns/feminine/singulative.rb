require_relative 'regular'

module Morphology
  module Alashian
    module Nouns
      module Feminine
        module Singulative
          include Feminine::Regular

          def subtype
            "Singulative"
          end

          def _absolute_plural
            if root.final_aspirate?
              [stem[0..-2], stem_transliterated[0..-2]]
            else
              [stem, stem_transliterated]
            end
          end

          def _construct_plural
            _absolute_plural
          end
        end
      end
    end
  end
end
