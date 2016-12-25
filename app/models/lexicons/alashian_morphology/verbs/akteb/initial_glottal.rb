require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Akteb
        module InitialGlottal
          include Akteb::Regular

          def subtype
            "C1 = '/H"
          end

          def _active_participle
            [template("μωηα", :c2, "ι", :c3), template("māha", :tc2, "i", :tc3)]
          end

          private

          def stem(long_vowel: true, lenition: false)
            v = long_vowel ? "η" : "ε"
            c3 = lenition ? :c3_lenited : :c3

            template("ηα", :c2, v, c3)
          end

          def stem_transliterated(long_vowel: true, lenition: false)
            v = long_vowel ? "ē" : "e"
            c3 = lenition ? :tc3_lenited : :tc3

            template("ha", :tc2, v, c3)
          end

          def imperfect_stem(lenition: false)
            c3 = lenition ? :c3_lenited : :c3

            template("ηα", :c2, "ιη", c3)
          end

          def imperfect_stem_transliterated(lenition: false)
            c3 = lenition ? :tc3_lenited : :tc3

            template("ha", :tc2, "ie", c3)
          end
        end
      end
    end
  end
end
