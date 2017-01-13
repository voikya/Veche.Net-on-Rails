require_relative 'regular'

module Morphology
  module Alashian
    module Nouns
      module Masculine
        module BrokenPluralCaCiC
          include Masculine::Regular

          def subtype
            "Broken Plural in CaCīC"
          end

          def _absolute_plural
            [template(:c1, "α", :c2, "ει", :c3), template(:tc1, "a", :tc2, "ī", :tc3)]
          end

          def _construct_plural
            _absolute_plural
          end
        end
      end
    end
  end
end
