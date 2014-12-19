require_relative 'fleeting_l'
require_relative 'masculine_with_intrusive_j_in_plural'

module Morphology
  module Novegradian
    module Nouns
      module EStem
        module FleetingLWithIntrusiveJ
          include EStem::MasculineWithIntrusiveJInPlural
          include EStem::FleetingL

          def subtype
            "Fleeting *-l- with Intrusive *-j- in Plural"
          end

          def _nominative_plural
            [desinence + "ля", desinence_transliterated + "liá"]
          end
        end
      end
    end
  end
end
