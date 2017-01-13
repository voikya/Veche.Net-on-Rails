require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Nistuktab
        module InitialAspirate
          include Nistuktab::Regular

          def subtype
            "C1 = PH/TH/KH/TSH/ČH"
          end

          def _passive_participle
            [template("μουστα", :c1, :c2, "α", :c3), template("mūstə", :tc1, :tc2, "a", :tc3)]
          end

          private

          def stem(lenition: false, long_vowel: true)
            v = long_vowel ? "ω" : "α"
            c3 = lenition ? :c3_lenited : :c3
            template("στα", :c1, :c2, v, c3)
          end

          def stem_transliterated(lenition: false, long_vowel: true)
            tv = long_vowel ? "ā" : "a"
            tc3 = lenition ? :tc3_lenited : :tc3
            template("stə", :tc1, :tc2, tv, tc3)
          end

          def imperfect_stem(lenition: false)
            c3 = lenition ? :c3_lenited : :c3
            template("στα", :c1, :c2, "υω", c3)
          end

          def imperfect_stem_transliterated(lenition: false)
            tc3 = lenition ? :tc3_lenited : :tc3
            template("stə", :tc1, :tc2, "uo", tc3)
          end
        end
      end
    end
  end
end
