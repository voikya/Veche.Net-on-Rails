module Morphology
  module Novegradian
    module Nouns
      module IStem
        module FeminineInanimate
          def declension
            "I (Fifth) Declension"
          end

          def subtype
            "Regular Feminine Inanimate"
          end

          def _nominative_singular
            [stem + "и", stem_transliterated + "i"]
          end

          def _nominative_dual
            [stem + "и", stem_transliterated + "i"]
          end

          def _nominative_plural
            [stem + "ие", stem_transliterated + "ie"]
          end

          def _genitive_singular
            [desinence + "и", desinence_transliterated + "í"]
          end

          def _genitive_dual
            [stem + "ю", stem_transliterated + "iu"]
          end

          def _genitive_plural
            [tertiary, tertiary_transliterated]
          end

          def _accusative_singular
            _nominative_singular
          end

          def _accusative_dual
            _nominative_dual
          end

          def _accusative_plural
            _nominative_plural
          end

          def _dative_singular
            [desinence + "юм", desinence_transliterated + "iúm"]
          end

          def _dative_dual
            [stem + "има", stem_transliterated + "ima"]
          end

          def _dative_plural
            [desinence + "ям", desinence_transliterated + "iám"]
          end

          def _partitive_singular
            [stem + "ек", stem_transliterated + "ek"]
          end

          def _partitive_dual
            [stem + "ю", stem_transliterated + "iu"]
          end

          def _partitive_plural
            [stem + "еу", stem_transliterated + "eu"]
          end

          def _locative_singular
            [desinence + "и", desinence_transliterated + "í"]
          end

          def _locative_dual
            [stem + "ю", stem_transliterated + "iu"]
          end

          def _locative_plural
            [stem + "их", stem_transliterated + "ih"]
          end

          def _lative_singular
            [stem + "ин", stem_transliterated + "in"]
          end

          def _lative_dual
            [stem + "и", stem_transliterated + "i"]
          end

          def _lative_plural
            [stem + "и", stem_transliterated + "i"]
          end
        end
      end
    end
  end
end
