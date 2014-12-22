require_relative 'stem_stressed'

module Morphology
  module Novegradian
    module Adjectives
      module Comparative
        module EndingStressed
          include Comparative::StemStressed

          def subtype
            "Ending-Stressed"
          end

          def _definite_nominative_neuter
            [desinence + "ее", desinence_transliterated + "éie"]
          end

          def _definite_nominative_feminine
            [desinence + "ая", desinence_transliterated + "áia"]
          end

          def _definite_nominative_plural
            [desinence + "ие", desinence_transliterated + "íje"]
          end

          def _definite_genitive_masculine
            [desinence + "аево", desinence_transliterated + "áievo"]
          end

          def _definite_genitive_feminine
            [desinence + "ѣе", desinence_transliterated + "ě́ie"]
          end

          def _definite_genitive_plural
            [desinence + "их", desinence_transliterated + "íh"]
          end

          def _definite_accusative_neuter
            [desinence + "ее", desinence_transliterated + "éie"]
          end

          def _definite_accusative_feminine
            [desinence + "аю", desinence_transliterated + "áiu"]
          end

          def _definite_accusative_plural
            [desinence + "ие", desinence_transliterated + "íje"]
          end

          def _definite_dative_masculine
            [desinence + "ием", desinence_transliterated + "íjem"]
          end

          def _definite_dative_feminine
            [desinence + "еюн", desinence_transliterated + "éiun"]
          end

          def _definite_dative_plural
            [desinence + "иеми", desinence_transliterated + "íjemi"]
          end

          def _definite_partitive_singular
            [desinence + "аево", desinence_transliterated + "áievo"]
          end

          def _definite_partitive_plural
            [desinence + "евево", desinence_transliterated + "évevo"]
          end

          def _definite_locative_singular
            [desinence + "ѣѣм", desinence_transliterated + "ě́iěm"]
          end

          def _definite_locative_plural
            [desinence + "иех", desinence_transliterated + "íjeh"]
          end

          def _definite_lative_singular
            [desinence + "уюн", desinence_transliterated + "úiun"]
          end

          def _definite_lative_plural
            [desinence + "ѣѣ", desinence_transliterated + "ě́iě"]
          end
        end
      end
    end
  end
end
