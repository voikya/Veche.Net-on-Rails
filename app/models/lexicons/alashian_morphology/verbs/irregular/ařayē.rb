require_relative '../akteb/final_glide'

module Morphology
  module Alashian
    module Verbs
      module Irregular
        module Araye
          include Akteb::FinalGlide

          def subtype
            "Irregular"
          end

          def _active_participle
            ["μωρ̄αιεἰ", "māřayī"]
          end

          private

          def stem(long_vowel: true, lenition: nil)
            v = long_vowel ? "η'" : "ε'"

            template(:c1, "α'", :c2, v, :c3)
          end

          def stem_transliterated(long_vowel: true, lenition: nil)
            v = long_vowel ? "ē" : "e"

            template(:tc1, "a", :tc2, v, :tc3)
          end

          def imperfect_stem(lenition: false)
            template(:c1, "α'", :c2, "η'", :c3)
          end

          def imperfect_stem_transliterated(lenition: false)
            template(:tc1, "a", :tc2, "ē", :tc3)
          end
        end
      end
    end
  end
end
