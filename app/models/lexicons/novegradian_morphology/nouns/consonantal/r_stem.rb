module Morphology
  module Novegradian
    module Nouns
      module Consonantal
        module RStem
          def declension
            "Consonantal (Sixth) Declension"
          end

          def subtype
            "R-Stem"
          end

          def _nominative_singular
            [stem + "и", stem_transliterated + "i"]
          end

          def _nominative_plural
            [stem + "ери", stem_transliterated + "eri"]
          end

          def _genitive_singular
            [stem + "ера", stem_transliterated + "era"]
          end

          def _genitive_plural
            [tertiary, tertiary_transliterated]
          end

          def _accusative_singular
            _genitive_singular
          end

          def _accusative_plural
            _genitive_plural
          end

          def _dative_singular
            [stem + "ерем", stem_transliterated + "erem"]
          end

          def _dative_plural
            [stem + "ерми", stem_transliterated + "ermi"]
          end

          def _partitive_singular
            [stem + "ерек", remove_stress(stem_transliterated) + "erék"]
          end

          def _partitive_plural
            [stem + "ероу", stem_transliterated + "erou"]
          end

          def _locative_singular
            [stem + "ере", stem_transliterated + "ere"]
          end

          def _locative_plural
            [stem + "ерѣх", stem_transliterated + "erěh"]
          end

          def _lative_singular
            [stem + "ерин", stem_transliterated + "erin"]
          end

          def _lative_plural
            [desinence + "ери", desinence_transliterated + "éri"]
          end
        end
      end
    end
  end
end
