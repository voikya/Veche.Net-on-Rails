require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Nistuktab
        module MedialGlottal
          include Nistuktab::Regular

          def subtype
            "C2 = '/H"
          end

          def _passive_participle
            if root.initial_aspiratable?
              [template("μουστα", :c1_geminated_or_aspirated, "α", :c3), template("mūstə", :tc1_geminated_or_aspirated, "a", :tc3)]
            else
              [template("μουστα", :c1_geminated_or_aspirated, "α", :c3), template("mūsta", :tc1_geminated_or_aspirated, "a", :tc3)]
            end
          end

          private

          def stem(lenition: false, long_vowel: true)
            prefix = root.initial_aspiratable? ? "στα" : "στυ"
            v = long_vowel ? "ω" : "α"
            c3 = lenition ? :c3_lenited : :c3
            template(prefix, :c1_geminated_or_aspirated, v, c3)
          end

          def stem_transliterated(lenition: false, long_vowel: true)
            prefix = root.initial_aspiratable? ? "stə" : "sta"
            tv = long_vowel ? "ā" : "a"
            tc3 = lenition ? :tc3_lenited : :tc3
            template(prefix, :tc1_geminated_or_aspirated, tv, tc3)
          end

          def imperfect_stem(lenition: false)
            prefix = root.initial_aspiratable? ? "στα" : "στυ"
            c3 = lenition ? :c3_lenited : :c3
            template(prefix, :c1_geminated_or_aspirated, "υω", c3)
          end

          def imperfect_stem_transliterated(lenition: false)
            prefix = root.initial_aspiratable? ? "stə" : "sta"
            tc3 = lenition ? :tc3_lenited : :tc3
            template(prefix, :tc1_geminated_or_aspirated, "uo", tc3)
          end
        end
      end
    end
  end
end
