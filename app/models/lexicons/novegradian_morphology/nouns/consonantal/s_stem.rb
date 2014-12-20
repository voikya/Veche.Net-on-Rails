module Morphology
  module Novegradian
    module Nouns
      module Consonantal
        module SStem
          def declension
            "Consonantal (Sixth) Declension"
          end

          def subtype
            "S-Stem"
          end

          def _nominative_singular
            [stem + "о", stem_transliterated + "o"]
          end

          def _nominative_plural
            [stem + "еси", stem_transliterated + "esi"]
          end

          def _genitive_singular
            [stem + "еса", stem_transliterated + "esa"]
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
            [stem + "есем", stem_transliterated + "esem"]
          end

          def _dative_plural
            [stem + "есми", stem_transliterated + "esmi"]
          end

          def _partitive_singular
            [stem + "езек", remove_stress(stem_transliterated) + "ezék"]
          end

          def _partitive_plural
            [stem + "есоу", stem_transliterated + "esou"]
          end

          def _locative_singular
            [stem + "есе", stem_transliterated + "ese"]
          end

          def _locative_plural
            [stem + "есѣх", stem_transliterated + "esěh"]
          end

          def _lative_singular
            [stem + "есин", stem_transliterated + "esin"]
          end

          def _lative_plural
            [desinence + "еси", desinence_transliterated + "ési"]
          end
        end
      end
    end
  end
end
