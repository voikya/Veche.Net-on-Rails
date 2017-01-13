require_relative 'unmarked_singular'

module Morphology
  module Alashian
    module Nouns
      module Feminine
        module UnmarkedSingularAndBrokenPluralCeCaC
          include Feminine::UnmarkedSingular

          def subtype
            "Unmarked Singular and Broken Plural in CeCāC"
          end

          def _absolute_plural
            if root.medial_aspirate?
              [template(:c1, "α", :c2, "ω", :c3), template(:tc1, "ə", :tc2, "ā", :tc3)]
            else
              [template(:c1, "ε", :c2, "ω", :c3), template(:tc1, "e", :tc2, "ā", :tc3)]
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
