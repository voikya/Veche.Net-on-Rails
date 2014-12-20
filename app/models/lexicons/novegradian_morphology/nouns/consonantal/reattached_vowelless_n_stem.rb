module Morphology
  module Novegradian
    module Nouns
      module Consonantal
        module ReattachedVowellessNStem
          def declension
            "Consonantal (Sixth) Declension"
          end

          def subtype
            "Reattached Vowelless N-Stem"
          end

          def _nominative_singular
            [stem + "ѣно", stem_transliterated + "ě́no"]
          end

          def _nominative_plural
            [stem + "ѣни", stem_transliterated + "ě́ni"]
          end

          def _genitive_singular
            [stem + "ѣна", stem_transliterated + "ě́na"]
          end

          def _genitive_plural
            [tertiary, tertiary_transliterated]
          end

          def _accusative_singular
            animate? ? _genitive_singular : _nominative_singular
          end

          def _accusative_plural
            animate? ? _genitive_plural : _nominative_plural
          end

          def _dative_singular
            [stem + "ѣнем", stem_transliterated + "ě́nem"]
          end

          def _dative_plural
            [stem + "ѣнми", stem_transliterated + "ě́nmi"]
          end

          def _partitive_singular
            [stem + "ѣнек", stem_transliterated + "ěnék"]
          end

          def _partitive_plural
            [stem + "ѣноу", stem_transliterated + "ě́nou"]
          end

          def _locative_singular
            [stem + "ѣне", stem_transliterated + "ě́ne"]
          end

          def _locative_plural
            [stem + "ѣнѣх", stem_transliterated + "ě́něh"]
          end

          def _lative_singular
            [stem + "ѣнин", stem_transliterated + "ě́nin"]
          end

          def _lative_plural
            [stem + "ѣни", stem_transliterated + "ě́ni"]
          end
        end
      end
    end
  end
end
