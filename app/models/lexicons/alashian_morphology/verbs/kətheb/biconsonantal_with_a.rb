require_relative 'medial_glottal'

module Morphology
  module Alashian
    module Verbs
      module Ketheb
        module BiconsonantalWithA
          include Ketheb::MedialGlottal

          def subtype
            "Biconsonantal Root with V = A"
          end

          def root
            @root ||= alashian.parsed_root.force_triconsonantal!("'")
          end
        end
      end
    end
  end
end
