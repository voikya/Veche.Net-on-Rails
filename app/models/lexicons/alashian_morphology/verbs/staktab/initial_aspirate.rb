require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Staktab
        module InitialAspirate
          include Staktab::Regular

          def subtype
            "C1 = PH/TH/KH/TSH/ČH"
          end

          def _active_participle
            [template("μυστα", :c1, :c2, "ι", :c3), template("mustə", :tc1, :tc2, "i", :tc3)]
          end

          private

          def stem(lenition: false)
            c3 = lenition ? :c3_lenited : :c3
            template("στα", :c1, :c2, "α", c3)
          end

          def stem_transliterated(lenition: false)
            tc3 = lenition ? :tc3_lenited : :tc3
            template("stə", :tc1, :tc2, "a", tc3)
          end

          def imperfect_stem(lenition: false)
            c3 = lenition ? :c3_lenited : :c3
            template("στα", :c1, :c2, "ιη", c3)
          end

          def imperfect_stem_transliterated(lenition: false)
            tc3 = lenition ? :tc3_lenited : :tc3
            template("stə", :tc1, :tc2, "ie", tc3)
          end
        end
      end
    end
  end
end
