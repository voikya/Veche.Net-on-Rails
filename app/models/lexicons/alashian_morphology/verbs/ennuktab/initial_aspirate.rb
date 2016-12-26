require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Ennuktab
        module InitialAspirate
          include Ennuktab::Regular

          def subtype
            "C1 = PH/TH/KH/TSH/ČH"
          end

          def _passive_participle
            [template("μυννα", :c1, :c2, "α", :c3), template("munnə", :tc1, :tc2, "a", :tc3)]
          end

          private

          def stem(long_vowel: true, lenition: false)
            c1 = root.medial_plosive? ? :c1_lenited : :c1
            v = long_vowel ? "ω" : "α"
            c3 = lenition ? :c3_lenited : :c3

            template("ννα", c1, :c2, v, c3)
          end

          def stem_transliterated(long_vowel: true, lenition: false)
            c1 = root.medial_plosive? ? :tc1_lenited : :tc1
            v = long_vowel ? "ā" : "a"
            c3 = lenition ? :tc3_lenited : :tc3

            template("nnə", c1, :tc2, v, c3)
          end

          def imperfect_stem(lenition: false)
            c1 = root.medial_plosive? ? :c1_lenited : :c1
            c3 = lenition ? :c3_lenited : :c3

            template("ννα", c1, :c2, "υω", c3)
          end

          def imperfect_stem_transliterated(lenition: false)
            c1 = root.medial_plosive? ? :tc1_lenited : :tc1
            c3 = lenition ? :tc3_lenited : :tc3

            template("nnə", c1, :tc2, "uo", c3)
          end
        end
      end
    end
  end
end
