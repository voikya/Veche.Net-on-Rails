require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Ennuktab
        module InitialGlide
          include Ennuktab::Regular

          def subtype
            "C1 = Y/W"
          end

          def _passive_participle
            if root.tc1 == "y"
              [template("μυννἠ", :c2, "α", :c3), template("munnē", :tc2, "a", :tc3)]
            else
              [template("μυννοὐ", :c2, "α", :c3), template("munnū", :tc2, "a", :tc3)]
            end
          end

          private

          def stem(long_vowel: true, lenition: false)
            v = long_vowel ? "ω" : "α"
            c3 = lenition ? :c3_lenited : :c3

            template("ννου", :c2, v, c3)
          end

          def stem_transliterated(long_vowel: true, lenition: false)
            v = long_vowel ? "ā" : "a"
            c3 = lenition ? :tc3_lenited : :tc3

            template("nnū", :tc2, v, c3)
          end

          def imperfect_stem(lenition: false)
            c3 = lenition ? :c3_lenited : :c3

            template("ννου", :c2, "υω", c3)
          end

          def imperfect_stem_transliterated(lenition: false)
            c3 = lenition ? :tc3_lenited : :tc3

            template("nnū", :tc2, "uo", c3)
          end
        end
      end
    end
  end
end
