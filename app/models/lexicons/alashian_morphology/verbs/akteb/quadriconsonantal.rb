require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Akteb
        module Quadriconsonantal
          include Akteb::Regular

          def subtype
            "Quadriconsonantal"
          end

          def _active_participle
            [template("μω", :c1, "α", :c2, :c3, "ι", :c4), template("mā", :tc1, "a", :tc2, :tc3, "i", :tc4)]
          end

          private

          def stem(long_vowel: true, lenition: false)
            v = long_vowel ? "η" : "ε"
            c4 = lenition ? :c4_lenited : :c4

            template(:c1, "ε", :c2, :c3, v, c4)
          end

          def stem_transliterated(long_vowel: true, lenition: false)
            v = long_vowel ? "ē" : "e"
            c4 = lenition ? :tc4_lenited : :tc4

            template(:tc1, "e", :tc2, :tc3, v, c4)
          end

          def imperfect_stem(lenition: false)
            c4 = lenition ? :c4_lenited : :c4

            template(:c1, "ε", :c2, :c3, "ιη", c4)
          end

          def imperfect_stem_transliterated(lenition: false)
            c4 = lenition ? :tc4_lenited : :tc4

            template(:tc1, "e", :tc2, :tc3, "ie", c4)
          end
        end
      end
    end
  end
end
