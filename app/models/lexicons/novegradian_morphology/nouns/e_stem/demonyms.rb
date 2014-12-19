module Morphology
  module Novegradian
    module Nouns
      module EStem
        module Demonyms
          def declension
            "E (Fourth) Declension"
          end

          def subtype
            "Demonyms"
          end

          def _nominative_singular
            [stem + "ине", stem_transliterated + "ine"]
          end

          def _nominative_plural
            [stem + "ье", stem_transliterated + "je"]
          end

          def _genitive_singular
            [stem + "ина", stem_transliterated + "ina"]
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
            [stem + "инем", stem_transliterated + "inem"]
          end

          def _dative_plural
            [desinence + "ьам", desinence_transliterated + "jám"]
          end

          def _partitive_singular
            [desinence + "инек", desinence_transliterated + "inék"]
          end

          def _partitive_plural
            [stem + "ьеу", stem_transliterated + "jeu"]
          end

          def _locative_singular
            [stem + "инѣ", stem_transliterated + "ině"]
          end

          def _locative_plural
            [stem + "ьѣх", stem_transliterated + "jěh"]
          end

          def _lative_singular
            [stem + "инен", stem_transliterated + "inen"]
          end

          def _lative_plural
            [stem + "ьѣ", stem_transliterated + "jě"]
          end
        end
      end
    end
  end
end
