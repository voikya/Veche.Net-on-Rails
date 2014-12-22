module Morphology
  module Novegradian
    module Adjectives
      module Absolute
        module StemStressedInJ
          def subtype
            "Stem Stressed in *-j"
          end

          def _indefinite_nominative_masculine
            [stem + "ие", stem_transliterated + "ie"]
          end

          def _indefinite_nominative_neuter
            [stem + "ё", stem_transliterated + "io"]
          end

          def _indefinite_nominative_feminine
            [stem + "я", stem_transliterated + "ia"]
          end

          def _indefinite_nominative_plural
            [stem + "еи", stem_transliterated + "ji"]
          end

          def _indefinite_genitive_masculine
            [stem + "я", stem_transliterated + "ia"]
          end

          def _indefinite_genitive_feminine
            [stem + "иѣ", stem_transliterated + "iě"]
          end

          def _indefinite_genitive_plural
            [stem + "ой", stem_transliterated + "oi"]
          end

          def _indefinite_accusative_masculine
            _indefinite_nominative_masculine
          end

          def _indefinite_accusative_neuter
            [stem + "ё", stem_transliterated + "io"]
          end

          def _indefinite_accusative_feminine
            [stem + "ю", stem_transliterated + "iu"]
          end

          def _indefinite_accusative_plural
            [stem + "еи", stem_transliterated + "ji"]
          end

          def _indefinite_dative_masculine
            [stem + "ём", stem_transliterated + "iom"]
          end

          def _indefinite_dative_feminine
            [stem + "ёй", stem_transliterated + "ioi"]
          end

          def _indefinite_dative_plural
            [stem + "ями", stem_transliterated + "iami"]
          end

          def _indefinite_partitive_singular
            [stem + "я", stem_transliterated + "ia"]
          end

          def _indefinite_partitive_plural
            [stem + "ёу", stem_transliterated + "iou"]
          end

          def _indefinite_locative_singular
            [stem + "иѣ", stem_transliterated + "iě"]
          end

          def _indefinite_locative_plural
            [stem + "иѣх", stem_transliterated + "iěh"]
          end

          def _indefinite_lative_singular
            [stem + "юн", stem_transliterated + "iun"]
          end

          def _indefinite_lative_plural
            [stem + "еи", stem_transliterated + "ji"]
          end

          def _definite_nominative_masculine
            [stem + "ией", stem_transliterated + "iei"]
          end

          def _definite_nominative_neuter
            [desinence + "ёе", desinence_transliterated + "ioie"]
          end

          def _definite_nominative_feminine
            [desinence + "яя", desinence_transliterated + "iaia"]
          end

          def _definite_nominative_plural
            [desinence + "еие", desinence_transliterated + "jije"]
          end

          def _definite_genitive_masculine
            [tertiary + "яево", tertiary_transliterated + "iáievo"]
          end

          def _definite_genitive_feminine
            [desinence + "иѣе", desinence_transliterated + "iěie"]
          end

          def _definite_genitive_plural
            [desinence + "еих", desinence_transliterated + "jih"]
          end

          def _definite_accusative_masculine
            [stem + "еий", stem_transliterated + "jij"]
          end

          def _definite_accusative_neuter
            [desinence + "ёе", desinence_transliterated + "ioie"]
          end

          def _definite_accusative_feminine
            [desinence + "яю", desinence_transliterated + "iaiu"]
          end

          def _definite_accusative_plural
            [desinence + "еие", desinence_transliterated + "jije"]
          end

          def _definite_dative_masculine
            [desinence + "еием", desinence_transliterated + "jijem"]
          end

          def _definite_dative_feminine
            [desinence + "ёюн", desinence_transliterated + "ioiun"]
          end

          def _definite_dative_plural
            [tertiary + "еиеми", tertiary_transliterated + "jíjemi"]
          end

          def _definite_partitive_singular
            [tertiary + "яево", tertiary_transliterated + "iáievo"]
          end

          def _definite_partitive_plural
            [tertiary + "ёвево", tertiary_transliterated + "ióvevo"]
          end

          def _definite_locative_singular
            [desinence + "иѣѣм", desinence_transliterated + "iěiěm"]
          end

          def _definite_locative_plural
            [desinence + "еиех", desinence_transliterated + "jijeh"]
          end

          def _definite_lative_singular
            [desinence + "ююн", desinence_transliterated + "iuiun"]
          end

          def _definite_lative_plural
            [desinence + "иѣѣ", desinence_transliterated + "iěiě"]
          end
        end
      end
    end
  end
end
