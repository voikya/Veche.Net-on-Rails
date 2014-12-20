module Morphology
  module Novegradian
    module Nouns
      module IStem
        module Animate
          def declension
            "I (Fifth) Declension"
          end

          def subtype
            "Regular Animate"
          end

          def _nominative_singular
            [stem + "и", stem_transliterated + "i"]
          end

          def _nominative_plural
            [stem + "ие", stem_transliterated + "ie"]
          end

          def _genitive_singular
            [stem + "я", stem_transliterated + "ia"]
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
            [desinence + "ем", desinence_transliterated + "ém"]
          end

          def _dative_plural
            [desinence + "ям", desinence_transliterated + "iám"]
          end

          def _partitive_singular
            [stem + "ек", stem_transliterated + "ek"]
          end

          def _partitive_plural
            [stem + "еу", stem_transliterated + "eu"]
          end

          def _locative_singular
            [desinence + "и", desinence_transliterated + "í"]
          end

          def _locative_plural
            [stem + "их", stem_transliterated + "ih"]
          end

          def _lative_singular
            [stem + "ин", stem_transliterated + "in"]
          end

          def _lative_plural
            [stem + "и", stem_transliterated + "i"]
          end
        end
      end
    end
  end
end
