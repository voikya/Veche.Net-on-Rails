require_relative 'regular'

module Morphology
  module Alashian
    module Nouns
      module Feminine
        module BrokenPluralCaCaC
          include Feminine::Regular

          def subtype
            "Broken Plural in CaCaC"
          end

          def _absolute_plural
            if root.medial_aspirate?
              [template(:c1, "α", :c2, "α", :c3), template(:tc1, "ə", :tc2, "a", :tc3)]
            else
              [template(:c1, "α", :c2, "α", :c3), template(:tc1, "a", :tc2, "a", :tc3)]
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
