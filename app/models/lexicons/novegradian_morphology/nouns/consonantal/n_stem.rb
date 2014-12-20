module Morphology
  module Novegradian
    module Nouns
      module Consonantal
        module NStem
          def declension
            "Consonantal (Sixth) Declension"
          end

          def subtype
            "N-Stem"
          end

          def _nominative_singular
            [stem + "е", stem_transliterated + "e"]
          end

          def _nominative_plural
            [stem + "ени", stem_transliterated + "eni"]
          end

          def _genitive_singular
            [stem + "ена", stem_transliterated + "ena"]
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
            [stem + "енем", stem_transliterated + "enem"]
          end

          def _dative_plural
            [stem + "енми", stem_transliterated + "enmi"]
          end

          def _partitive_singular
            [stem + "енек", remove_stress(stem_transliterated) + "enék"]
          end

          def _partitive_plural
            [stem + "еноу", stem_transliterated + "enou"]
          end

          def _locative_singular
            [stem + "ене", stem_transliterated + "ene"]
          end

          def _locative_plural
            [stem + "енѣх", stem_transliterated + "eněh"]
          end

          def _lative_singular
            [stem + "енин", stem_transliterated + "enin"]
          end

          def _lative_plural
            [desinence + "ени", desinence_transliterated + "éni"]
          end
        end
      end
    end
  end
end
