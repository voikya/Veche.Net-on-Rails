require_relative 'regular'

module Morphology
  module Alashian
    module Nouns
      module Feminine
        module BrokenPluralCeCaC
          include Feminine::Regular

          def subtype
            "Broken Plural in CeCāC"
          end

          def _absolute_plural
            [template(:c1, "ε", :c2, "ω", :c3), template(:tc1, "e", :tc2, "ā", :tc3)]
          end

          def _construct_plural
            _absolute_plural
          end
        end
      end
    end
  end
end
