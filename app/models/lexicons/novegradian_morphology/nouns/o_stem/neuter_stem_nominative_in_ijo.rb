module Morphology
  module Novegradian
    module Nouns
      module OStem
        module NeuterStemNominativeInIjo
          def declension
            "O (Third) Declension"
          end

          def subtype
            "Neuter Stem-Nominative in *-ijo"
          end

          def _nominative_singular
            [stem + "ё", stem_transliterated + "jo"]
          end

          def _nominative_plural
            [desinence + "я", desinence_transliterated + "já"]
          end

          def _genitive_singular
            [stem + "ю", stem_transliterated + "ju"]
          end

          def _genitive_plural
            [tertiary, tertiary_transliterated]
          end

          def _accusative_singular
            [stem + "ё", stem_transliterated + "jo"]
          end

          def _accusative_plural
            [desinence + "я", desinence_transliterated + "já"]
          end

          def _dative_singular
            [stem + "ём", stem_transliterated + "jom"]
          end

          def _dative_plural
            [desinence + "ям", desinence_transliterated + "jám"]
          end

          def _partitive_singular
            if stem =~ /к[^ь]?$/
              _genitive_singular
            else
              [desinence + "ёк", desinence_transliterated + "jók"]
            end
          end

          def _partitive_plural
            [stem + "ёу", stem_transliterated + "jou"]
          end

          def _locative_singular
            [stem + "ѣ", stem_transliterated + "jě"]
          end

          def _locative_plural
            [desinence + "ѣх", desinence_transliterated + "ijě́h"]
          end

          def _lative_singular
            [desinence + "ён", desinence_transliterated + "jón"]
          end

          def _lative_plural
            [stem + "и", stem_transliterated + "ji"]
          end
        end
      end
    end
  end
end
