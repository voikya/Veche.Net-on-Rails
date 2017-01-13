require_relative 'medial_ř'

module Morphology
  module Alashian
    module Verbs
      module Kethab
        module MedialGlottal
          include Kethab::MedialR

          def subtype
            "C2 = '/H"
          end
        end
      end
    end
  end
end
