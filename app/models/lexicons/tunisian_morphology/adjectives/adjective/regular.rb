module Morphology
  module Tunisian
    module Adjectives
      module Adjective
        module Regular
          def declension
            "Adjective"
          end

          def subtype
            "Regular"
          end

          def _masculine_singular
            strong
          end

          def _feminine_singular
            strong + "e"
          end

          def _plural
            strong + "s"
          end

          def _preposed_singular
            weak.partition(";").first.split(",").join(", ")
          end

          def _preposed_plural
            weak.rpartition(";").last.split(",").join(", ")
          end
        end
      end
    end
  end
end
