module Morphology
  module Novegradian
    module Nouns
      module OStem
        module NeuterStemNominativeInU
          def declension
            "O (Third) Declension"
          end

          def subtype
            "Neuter Stem-Nominative in *-u"
          end

          def _nominative_singular
            [stem + "у", stem_transliterated + "u"]
          end

          def _nominative_dual
            [stem + "и", stem_transliterated + "i"]
          end

          def _nominative_plural
            [desinence + "а", desinence_transliterated + "á"]
          end

          def _genitive_singular
            [stem + "у", stem_transliterated + "u"]
          end

          def _genitive_dual
            [stem + "у", stem_transliterated + "u"]
          end

          def _genitive_plural
            [tertiary, tertiary_transliterated]
          end

          def _accusative_singular
            [stem + "у", stem_transliterated + "u"]
          end

          def _accusative_dual
            [stem + "и", stem_transliterated + "i"]
          end

          def _accusative_plural
            [desinence + "а", desinence_transliterated + "á"]
          end

          def _dative_singular
            [stem + "ом", stem_transliterated + "om"]
          end

          def _dative_dual
            [desinence + "ома", desinence_transliterated + "óma"]
          end

          def _dative_plural
            [desinence + "ам", desinence_transliterated + "ám"]
          end

          def _partitive_singular
            if stem =~ /к[^ь]?$/
              _genitive_singular
            else
              [desinence + "ок", desinence_transliterated + "ók"]
            end
          end

          def _partitive_dual
            [stem + "у", stem_transliterated + "u"]
          end

          def _partitive_plural
            [stem + "оу", stem_transliterated + "ou"]
          end

          def _locative_singular
            [stem + "ѣ", stem_transliterated + "ě"]
          end

          def _locative_dual
            [stem + "у", stem_transliterated + "u"]
          end

          def _locative_plural
            [desinence + "ѣх", desinence_transliterated + "ě́h"]
          end

          def _lative_singular
            [desinence + "он", desinence_transliterated + "ón"]
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
