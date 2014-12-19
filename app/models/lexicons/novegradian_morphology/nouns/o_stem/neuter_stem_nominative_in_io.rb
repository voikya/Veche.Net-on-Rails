module Morphology
  module Novegradian
    module Nouns
      module OStem
        module NeuterStemNominativeInIo
          def declension
            "O (Third) Declension"
          end

          def subtype
            "Neuter Stem-Nominative in *-io"
          end

          def _nominative_singular
            [stem + "ё", stem_transliterated + "io"]
          end

          def _nominative_plural
            [desinence + "я", desinence_transliterated + "iá"]
          end

          def _genitive_singular
            [stem + "ю", stem_transliterated + "iu"]
          end

          def _genitive_plural
            [tertiary, tertiary_transliterated]
          end

          def _accusative_singular
            [stem + "ё", stem_transliterated + "io"]
          end

          def _accusative_plural
            [desinence + "я", desinence_transliterated + "iá"]
          end

          def _dative_singular
            [stem + "ём", stem_transliterated + "iom"]
          end

          def _dative_plural
            [desinence + "ям", desinence_transliterated + "iám"]
          end

          def _partitive_singular
            if stem =~ /к[^ь]?$/
              _genitive_singular
            else
              [desinence + "ёк", desinence_transliterated + "iók"]
            end
          end

          def _partitive_plural
            [stem + "ёу", stem_transliterated + "iou"]
          end

          def _locative_singular
            [stem + "иѣ", stem_transliterated + "iě"]
          end

          def _locative_plural
            [desinence + "иѣх", desinence_transliterated + "iě́h"]
          end

          def _lative_singular
            [desinence + "ён", desinence_transliterated + "ión"]
          end

          def _lative_plural
            [stem + "еи", stem_transliterated + "ji"]
          end
        end
      end
    end
  end
end
