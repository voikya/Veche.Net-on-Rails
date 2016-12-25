require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Akteb
        module Biconsonantal
          include Akteb::Regular

          def subtype
            "Biconsonantal Root"
          end

          def _active_participle
            [template("μω", :c1, "ου", :c2), template("mā", :tc1, "ū", :tc2)]
          end

          private

          def stem(long_vowel: nil, lenition: false)
            c2 = lenition ? :c2_lenited : :c2

            template(:c1, "η", c2)
          end

          def stem_transliterated(long_vowel: nil, lenition: false)
            c2 = lenition ? :tc2_lenited : :tc2

            template(:tc1, "ē", c2)
          end

          def imperfect_stem(lenition: false)
            c2 = lenition ? :c2_lenited : :c2

            template(:c1, "ιη", c2)
          end

          def imperfect_stem_transliterated(lenition: false)
            c2 = lenition ? :tc2_lenited : :tc2

            template(:tc1, "ie", c2)
          end
        end
      end
    end
  end
end
