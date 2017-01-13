require_relative 'regular'

module Morphology
  module Alashian
    module Nouns
      module Feminine
        module UnmarkedSingular
          include Feminine::Regular

          def subtype
            "Unmarked Singular"
          end

          def _absolute_singular
            [stem, stem_transliterated]
          end

          def _construct_singular
            [stem, stem_transliterated]
          end
        end
      end
    end
  end
end
