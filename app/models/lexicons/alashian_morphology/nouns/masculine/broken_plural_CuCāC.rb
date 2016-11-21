require_relative 'regular'

module Morphology
  module Alashian
    module Nouns
      module Masculine
        module BrokenPluralCuCaC
          include Masculine::Regular

          def subtype
            "Broken Plural in CuCāC"
          end

          def _absolute_plural
            [template(:c1, "υ", :c2, "ω", :c3), template(:tc1, "u", :tc2, "ā", :tc3)]
          end

          def _construct_plural
            _absolute_plural
          end
        end
      end
    end
  end
end
