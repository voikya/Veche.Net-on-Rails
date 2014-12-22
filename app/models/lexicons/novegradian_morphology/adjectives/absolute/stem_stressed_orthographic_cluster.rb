require_relative 'stem_stressed'

module Morphology
  module Novegradian
    module Adjectives
      module Absolute
        module StemStressedOrthographicCluster
          include Absolute::StemStressed

          def subtype
            "Stem-Stressed with Orthographic Cluster"
          end

          def _indefinite_genitive_plural
            [stem, stem_transliterated]
          end

          def _indefinite_accusative_masculine
            [stem, stem_transliterated]
          end
        end
      end
    end
  end
end
