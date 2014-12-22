module Morphology
  module Novegradian
    module Adjectives
      module Absolute
        module StemStressedInW
          def subtype
            "Stem Stressed in *-w"
          end

          def _indefinite_nominative_masculine
            [stem + "ўе", stem_transliterated + "we"]
          end

          def _indefinite_nominative_neuter
            [stem + "уо", stem_transliterated + "uo"]
          end

          def _indefinite_nominative_feminine
            [stem + "уа", stem_transliterated + "ua"]
          end

          def _indefinite_nominative_plural
            [stem + "ўи", stem_transliterated + "wi"]
          end

          def _indefinite_genitive_masculine
            [stem + "уа", stem_transliterated + "ua"]
          end

          def _indefinite_genitive_feminine
            [stem + "ўѣ", stem_transliterated + "wě"]
          end

          def _indefinite_genitive_plural
            [stem + "оў", stem_transliterated + "ow"]
          end

          def _indefinite_accusative_masculine
            _indefinite_nominative_masculine
          end

          def _indefinite_accusative_neuter
            [stem + "уо", stem_transliterated + "uo"]
          end

          def _indefinite_accusative_feminine
            [stem + "ўу", stem_transliterated + "wu"]
          end

          def _indefinite_accusative_plural
            [stem + "ўи", stem_transliterated + "wi"]
          end

          def _indefinite_dative_masculine
            [stem + "уом", stem_transliterated + "uom"]
          end

          def _indefinite_dative_feminine
            [stem + "уой", stem_transliterated + "uoi"]
          end

          def _indefinite_dative_plural
            [stem + "уами", stem_transliterated + "uami"]
          end

          def _indefinite_partitive_singular
            [stem + "уа", stem_transliterated + "ua"]
          end

          def _indefinite_partitive_plural
            [stem + "уоу", stem_transliterated + "uou"]
          end

          def _indefinite_locative_singular
            [stem + "ўѣ", stem_transliterated + "wě"]
          end

          def _indefinite_locative_plural
            [stem + "ўѣх", stem_transliterated + "wěh"]
          end

          def _indefinite_lative_singular
            [stem + "ўун", stem_transliterated + "wun"]
          end

          def _indefinite_lative_plural
            [stem + "ўи", stem_transliterated + "wi"]
          end

          def _definite_nominative_masculine
            [stem + "ўей", stem_transliterated + "wei"]
          end

          def _definite_nominative_neuter
            [desinence + "уое", desinence_transliterated + "uoie"]
          end

          def _definite_nominative_feminine
            [desinence + "уая", desinence_transliterated + "uaia"]
          end

          def _definite_nominative_plural
            [desinence + "ўие", desinence_transliterated + "wije"]
          end

          def _definite_genitive_masculine
            [tertiary + "уаево", tertiary_transliterated + "uáievo"]
          end

          def _definite_genitive_feminine
            [desinence + "ўѣе", desinence_transliterated + "wěie"]
          end

          def _definite_genitive_plural
            [desinence + "ўих", desinence_transliterated + "wih"]
          end

          def _definite_accusative_masculine
            [stem + "ўий", stem_transliterated + "wij"]
          end

          def _definite_accusative_neuter
            [desinence + "уое", desinence_transliterated + "uoie"]
          end

          def _definite_accusative_feminine
            [desinence + "уаю", desinence_transliterated + "uaiu"]
          end

          def _definite_accusative_plural
            [desinence + "ўие", desinence_transliterated + "wije"]
          end

          def _definite_dative_masculine
            [desinence + "ўием", desinence_transliterated + "wijem"]
          end

          def _definite_dative_feminine
            [desinence + "уоюн", desinence_transliterated + "uoiun"]
          end

          def _definite_dative_plural
            [tertiary + "ўиеми", tertiary_transliterated + "wíjemi"]
          end

          def _definite_partitive_singular
            [tertiary + "уаево", tertiary_transliterated + "uáievo"]
          end

          def _definite_partitive_plural
            [tertiary + "уовево", tertiary_transliterated + "uóvevo"]
          end

          def _definite_locative_singular
            [desinence + "ўѣѣм", desinence_transliterated + "wěiěm"]
          end

          def _definite_locative_plural
            [desinence + "ўиех", desinence_transliterated + "wijeh"]
          end

          def _definite_lative_singular
            [desinence + "ўуюн", desinence_transliterated + "wuiun"]
          end

          def _definite_lative_plural
            [desinence + "ўѣѣ", desinence_transliterated + "wěiě"]
          end
        end
      end
    end
  end
end
