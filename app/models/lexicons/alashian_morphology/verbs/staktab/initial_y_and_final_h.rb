require_relative 'biconsonantal'

module Morphology
  module Alashian
    module Verbs
      module Staktab
        module InitialYAndFinalH
          include Staktab::Biconsonantal

          def subtype
            "C1 = Y, C3 = H"
          end

          private

          def imperfect_stem(lenition: false)
            template("στα", :c1, "η", (lenition ? :c2_lenited : :c2))
          end

          def imperfect_stem_transliterated(lenition: false)
            template("sta", :tc1, "ē", (lenition ? :tc2_lenited : :tc2))
          end
        end
      end
    end
  end
end
