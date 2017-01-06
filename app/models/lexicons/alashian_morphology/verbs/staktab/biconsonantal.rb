require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Staktab
        module Biconsonantal
          include Staktab::Regular

          def subtype
            "Biconsonantal Root"
          end

          def _active_participle
            [template("μυστα", :c1, "ου", :c2), template("musta", :tc1, "ū", :tc2)]
          end

          private

          def stem(lenition: false)
            template("στα", :c1, :v, (lenition ? :c2_lenited : :c2))
          end

          def stem_transliterated(lenition: false)
            template("sta", :tc1, :tv, (lenition ? :tc2_lenited : :tc2))
          end

          def imperfect_stem(lenition: false)
            template("στα", :c1, "ιη", (lenition ? :c2_lenited : :c2))
          end

          def imperfect_stem_transliterated(lenition: false)
            template("sta", :tc1, "ie", (lenition ? :tc2_lenited : :tc2))
          end
        end
      end
    end
  end
end
