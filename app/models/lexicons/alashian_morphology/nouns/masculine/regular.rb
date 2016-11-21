module Morphology
  module Alashian
    module Nouns
      module Masculine
        module Regular
          def declension
            if epicene?
              "Epicene Noun"
            else
              "Masculine Noun"
            end
          end

          def subtype
            "Regular"
          end

          def _absolute_singular
            [stem, stem_transliterated]
          end

          def _absolute_plural
            [stem + "ιην", stem_transliterated + "ien"]
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
            _absolute_singular
          end

          def _construct_plural
            [stem + "η", stem_transliterated + "ē"]
          end
        end
      end
    end
  end
end
