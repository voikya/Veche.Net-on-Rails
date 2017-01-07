require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Nistuktab
        module Biconsonantal
          include Nistuktab::Regular

          def subtype
            "Biconsonantal Root"
          end

          def _passive_participle
            [template("μουστα", :c1, "ου", :c2), template("mūsta", :tc1, "ū", :tc2)]
          end

          private

          def stem(lenition: false, long_vowel: nil)
            template("στυ", :c1, "ω", (lenition ? :c2_lenited : :c2))
          end

          def stem_transliterated(lenition: false, long_vowel: nil)
            template("stu", :tc1, "ā", (lenition ? :tc2_lenited : :tc2))
          end

          def imperfect_stem(lenition: false)
            template("στυ", :c1, "υω", (lenition ? :c2_lenited : :c2))
          end

          def imperfect_stem_transliterated(lenition: false)
            template("stu", :tc1, "uo", (lenition ? :tc2_lenited : :tc2))
          end
        end
      end
    end
  end
end
