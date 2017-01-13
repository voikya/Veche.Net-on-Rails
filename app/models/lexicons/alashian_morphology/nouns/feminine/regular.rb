module Morphology
  module Alashian
    module Nouns
      module Feminine
        module Regular
          def declension
            "Feminine Noun"
          end

          def subtype
            "Regular"
          end

          def _absolute_singular
            [stem + "ω", stem_transliterated + "ā"]
          end

          def _absolute_plural
            [stem + "υως̄", stem_transliterated + "uoš"]
          end

          def _determinate_singular
            determinate(_absolute_singular)
          end

          def _determinate_plural
            determinate(_absolute_plural)
          end

          def _partitive_singular
            partitive(_absolute_singular)
          end

          def _partitive_plural
            partitive(_absolute_plural)
          end

          def _construct_singular
            [stem + "ετ", stem_transliterated + "et"]
          end

          def _construct_plural
            [stem + "ουτ", stem_transliterated + "ūt"]
          end
        end
      end
    end
  end
end
