require_relative 'regular_masculine'

module Morphology
  module Novegradian
    module Nouns
      module EStem
        module MasculineWithIntrusiveJInPlural
          include EStem::RegularMasculine

          def subtype
            "Masculine with Intrusive *-j- in Plural"
          end

          def _nominative_plural
            [stem + "я", remove_stress(stem_transliterated) + "iá"]
          end
        end
      end
    end
  end
end
