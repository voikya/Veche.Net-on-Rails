require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Ennuktab
        module InitialN
          include Ennuktab::Regular

          def subtype
            "C1 = N"
          end

          def _passive_participle
            prefix = root.medial_aspiratable? ? "munnə" : "muuna"
            [template("μυννα", :c2_geminated_or_aspirated, "α", :c3), template(prefix, :tc2_geminated_or_aspirated, "a", :tc3)]
          end

          private

          def stem(long_vowel: true, lenition: false)
            v = long_vowel ? "ω" : "α"
            c3 = lenition ? :c3_lenited : :c3
            prefix = root.medial_aspiratable? ? "ννα" : "ννυ"

            template(prefix, :c2_geminated_or_aspirated, v, c3)
          end

          def stem_transliterated(long_vowel: true, lenition: false)
            v = long_vowel ? "ā" : "a"
            c3 = lenition ? :tc3_lenited : :tc3
            prefix = root.medial_aspiratable? ? "nnə" : "nnu"

            template(prefix, :tc2_geminated_or_aspirated, v, c3)
          end

          def imperfect_stem(lenition: false)
            c3 = lenition ? :c3_lenited : :c3
            prefix = root.medial_aspiratable? ? "ννα" : "ννυ"

            template(prefix, :c2_geminated_or_aspirated, "υω", c3)
          end

          def imperfect_stem_transliterated(lenition: false)
            c3 = lenition ? :tc3_lenited : :tc3
            prefix = root.medial_aspiratable? ? "nnə" : "nnu"

            template(prefix, :tc2_geminated_or_aspirated, "uo", c3)
          end
        end
      end
    end
  end
end
