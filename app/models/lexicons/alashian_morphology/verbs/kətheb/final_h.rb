require_relative 'medial_glottal'

module Morphology
  module Alashian
    module Verbs
      module Ketheb
        module FinalH
          include Ketheb::MedialGlottal

          def subtype
            "C3 = H"
          end

          def root
            unless @root
              @root = alashian.parsed_root
              @root.c3 = @root.tc2
              @root.c2 = "h"
            end

            @root
          end
        end
      end
    end
  end
end
