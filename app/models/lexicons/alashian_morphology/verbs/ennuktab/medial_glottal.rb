require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Ennuktab
        module MedialGlottal
          include Ennuktab::Regular

          def subtype
            "C2 = '/H"
          end

          def _passive_participle
            if root.initial_aspiratable?
              [template("μυννα", :c1_geminated_or_aspirated, "α", :c3), template("munnə", :tc1_geminated_or_aspirated, "a", :tc3)]
            else
              [template("μυννα", :c1_geminated_or_aspirated, "α", :c3), template("munna", :tc1_geminated_or_aspirated, "a", :tc3)]
            end
          end

          private

          def stem(long_vowel: true, lenition: false)
            v = long_vowel ? "ω" : "α"
            c3 = lenition ? :c3_lenited : :c3
            prefix = root.initial_aspiratable? ? "ννα" : "ννυ"

            template(prefix, :c1_geminated_or_aspirated, v, c3)
          end

          def stem_transliterated(long_vowel: true, lenition: false)
            v = long_vowel ? "ā" : "a"
            c3 = lenition ? :tc3_lenited : :tc3
            prefix = root.initial_aspiratable? ? "nnə" : "nnu"

            template(prefix, :tc1_geminated_or_aspirated, v, c3)
          end

          def imperfect_stem(lenition: false)
            c3 = lenition ? :c3_lenited : :c3
            prefix = root.initial_aspiratable? ? "ννα" : "ννυ"

            template(prefix, :c1_geminated_or_aspirated, "υω", c3)
          end

          def imperfect_stem_transliterated(lenition: false)
            c3 = lenition ? :tc3_lenited : :tc3
            prefix = root.initial_aspiratable? ? "nnə" : "nnu"

            template(prefix, :tc1_geminated_or_aspirated, "uo", c3)
          end
        end
      end
    end
  end
end
