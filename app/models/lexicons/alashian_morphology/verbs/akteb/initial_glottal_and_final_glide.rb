require_relative 'final_glide'

module Morphology
  module Alashian
    module Verbs
      module Akteb
        module InitialGlottalAndFinalGlide
          include Akteb::FinalGlide

          def subtype
            "C1 = '/H, C3 = Y/W"
          end

          def _active_participle
            [template("μωηα", :c2, "εἰ"), template("māha", :tc2, "ī")]
          end

          private

          def stem(long_vowel: true, lenition: false)
            v = long_vowel ? "η" : "ε"
            if root.tc3 == "y"
              # The long_vowel attribute marks the presence/absence of a suffix,
              # which serves as an effective proxy for the need for diaeresis.
              c3 = long_vowel ? "ι" : "ϊ"
            else
              c3 = "υ"
            end

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
