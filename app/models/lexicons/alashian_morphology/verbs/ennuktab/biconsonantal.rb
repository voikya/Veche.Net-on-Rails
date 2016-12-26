require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Ennuktab
        module Biconsonantal
          include Ennuktab::Regular

          def subtype
            "Biconsonantal Root"
          end

          def _passive_participle
            [template("μυννα", :c1, "ου", :c2), template("munna", :tc1, "ū", :tc2)]
          end

          private

          def stem(long_vowel: nil, lenition: false)
            c2 = lenition ? :c2_lenited : :c2

            template("ννυ", :c1, "ω", c2)
          end

          def stem_transliterated(long_vowel: nil, lenition: false)
            c2 = lenition ? :tc2_lenited : :tc2

            template("nnu", :tc1, "ā", c2)
          end

          def imperfect_stem(lenition: false)
            c2 = lenition ? :c2_lenited : :c2

            template("ννυ", :c1, "υω", c2)
          end

          def imperfect_stem_transliterated(lenition: false)
            c2 = lenition ? :tc2_lenited : :tc2

            template("nnu", :tc1, "uo", c2)
          end
        end
      end
    end
  end
end
