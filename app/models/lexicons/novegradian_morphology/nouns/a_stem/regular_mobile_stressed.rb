module Morphology
  module Novegradian
    module Nouns
      module AStem
        module RegularMobileStressed
          def declension
            "A (First) Declension"
          end

          def subtype
            "Regular Mobile-Stressed"
          end

          def _nominative_singular
            [desinence + "а", desinence_transliterated + "á"]
          end

          def _nominative_dual
            [desinence + "ѣ", desinence_transliterated + "ě́"]
          end

          def _nominative_plural
            [stem + "и", stem_transliterated + "i"]
          end

          def _genitive_singular
            [desinence + "ѣ", desinence_transliterated + "ě́"]
          end

          def _genitive_dual
            [desinence + "у", desinence_transliterated + "ú"]
          end

          def _genitive_plural
            [tertiary, tertiary_transliterated]
          end

          def _accusative_singular
            animate? ? _genitive_singular : [stem + "у", stem_transliterated + "u"]
          end

          def _accusative_dual
            animate? ? _genitive_dual : [desinence + "ѣ", desinence_transliterated + "ě́"]
          end

          def _accusative_plural
            animate? ? _genitive_plural : [stem + "и", stem_transliterated + "i"]
          end

          def _dative_singular
            [desinence + "ой", desinence_transliterated + "ói"]
          end

          def _dative_dual
            [stem + "ома", stem_transliterated + "oma"]
          end

          def _dative_plural
            [desinence + "ам", desinence_transliterated + "ám"]
          end

          def _partitive_singular
            [stem + "ок", stem_transliterated + "ok"]
          end

          def _partitive_dual
            [desinence + "у", desinence_transliterated + "ú"]
          end

          def _partitive_plural
            [desinence + "оу", desinence_transliterated + "óu"]
          end

          def _locative_singular
            [desinence + "ѣ", desinence_transliterated + "ě́"]
          end

          def _locative_dual
            [desinence + "у", desinence_transliterated + "ú"]
          end

          def _locative_plural
            [desinence + "ѣх", desinence_transliterated + "ě́h"]
          end

          def _lative_singular
            [stem + "ун", stem_transliterated + "un"]
          end

          def _lative_dual
            [desinence + "ѣ", desinence_transliterated + "ě́"]
          end

          def _lative_plural
            [stem + "и", stem_transliterated + "i"]
          end
        end
      end
    end
  end
end
