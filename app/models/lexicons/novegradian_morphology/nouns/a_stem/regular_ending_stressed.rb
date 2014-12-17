module Morphology
  module Novegradian
    module Nouns
      module AStem
        module RegularEndingStressed
          def declension
            "A (First) Declension"
          end

          def subtype
            "Regular Ending-Stressed"
          end

          def _nominative_singular
            [desinence + "а", desinence_transliterated + "á"]
          end

          def _nominative_plural
            [desinence + "и", desinence_transliterated + "í"]
          end

          def _genitive_singular
            [desinence + "ѣ", desinence_transliterated + "ě́"]
          end

          def _genitive_plural
            [tertiary, tertiary_transliterated]
          end

          def _accusative_singular
            animate? ? _genitive_singular : [desinence + "у", desinence_transliterated + "ú"]
          end

          def _accusative_plural
            animate? ? _genitive_plural : [desinence + "и", desinence_transliterated + "í"]
          end

          def _dative_singular
            [desinence + "ой", desinence_transliterated + "ói"]
          end

          def _dative_plural
            [desinence + "ам", desinence_transliterated + "ám"]
          end

          def _partitive_singular
            [desinence + "ок", desinence_transliterated + "ók"]
          end

          def _partitive_plural
            [desinence + "оу", desinence_transliterated + "óu"]
          end

          def _locative_singular
            [desinence + "ѣ", desinence_transliterated + "ě́"]
          end

          def _locative_plural
            [desinence + "ѣх", desinence_transliterated + "ě́h"]
          end

          def _lative_singular
            [desinence + "ун", desinence_transliterated + "ún"]
          end

          def _lative_plural
            [desinence + "и", desinence_transliterated + "í"]
          end
        end
      end
    end
  end
end
