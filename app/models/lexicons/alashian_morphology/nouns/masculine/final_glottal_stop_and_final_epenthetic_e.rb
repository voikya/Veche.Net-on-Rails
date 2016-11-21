require_relative 'final_glottal_stop'

module Morphology
  module Alashian
    module Nouns
      module Masculine
        module FinalGlottalStopAndFinalEpentheticE
          include Masculine::FinalGlottalStop

          def subtype
            "Final Glottal Stop and Final Epenthetic -e"
          end

          def _absolute_singular
            [stem + "ε", stem_transliterated + "'e"]
          end

          def _construct_singular
            _absolute_singular
          end
        end
      end
    end
  end
end
