require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Ennuktab
        module Quadriconsonantal
          include Ennuktab::Regular

          def subtype
            "Quadriconsonantal"
          end

          def _passive_participle
            [template("μυννα", :c1, "α", :c2, :c3, "α", :c4), template("munna", :tc1, "a", :tc2, :tc3, "a", :tc4)]
          end

          private

          def stem(long_vowel: true, lenition: false)
            v = long_vowel ? "ω" : "α"
            c4 = lenition ? :c4_lenited : :c4

            template("ννυ", :c1, "α", :c2, :c3, v, c4)
          end

          def stem_transliterated(long_vowel: true, lenition: false)
            v = long_vowel ? "ā" : "a"
            c4 = lenition ? :tc4_lenited : :tc4

            template("nnu", :tc1, "a", :tc2, :tc3, v, c4)
          end

          def imperfect_stem(lenition: false)
            c4 = lenition ? :c4_lenited : :c4

            template("ννυ", :c1, "α", :c2, :c3, "υω", c4)
          end

          def imperfect_stem_transliterated(lenition: false)
            c4 = lenition ? :tc4_lenited : :tc4

            template("nnu", :tc1, "a", :tc2, :tc3, "uo", c4)
          end
        end
      end
    end
  end
end
