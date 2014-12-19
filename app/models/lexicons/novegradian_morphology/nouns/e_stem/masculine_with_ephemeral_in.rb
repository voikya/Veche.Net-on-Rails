require_relative 'regular_masculine'

module Morphology
  module Novegradian
    module Nouns
      module EStem
        module MasculineWithEphemeralIn
          include EStem::RegularMasculine

          def subtype
            "Masculine with Ephemeral *-in-"
          end

          def _nominative_singular
            [desinence + "ин", desinence_transliterated + "ín"]
          end

          def _nominative_singular_topicalized
            [desinence + "ин-от", desinence_transliterated + "in-ót"]
          end
        end
      end
    end
  end
end
