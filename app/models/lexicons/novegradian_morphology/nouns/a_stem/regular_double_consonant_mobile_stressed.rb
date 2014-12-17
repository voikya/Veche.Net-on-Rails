module Morphology
  module Novegradian
    module Nouns
      module AStem
        module RegularDoubleConsonantMobileStressed
          def declension
            "A (First) Declension"
          end

          def subtype
            "Regular Double-Consonant Mobile-Stressed"
          end

          def _nominative_singular
            [stem + "а", stem_transliterated + "a"]
          end

          def _nominative_plural
            [stem + "и", stem_transliterated + "i"]
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
            animate? ? _genitive_plural : [stem + "и", stem_transliterated + "i"]
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
            [stem + "и", stem_transliterated + "i"]
          end
        end
      end
    end
  end
end
