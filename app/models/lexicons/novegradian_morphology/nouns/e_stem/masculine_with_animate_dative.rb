require_relative 'regular_masculine'

module Morphology
  module Novegradian
    module Nouns
      module EStem
        module MasculineWithAnimateDative
          include EStem::RegularMasculine

          def subtype
            "Masculine with Animate Dative"
          end

          def _dative_singular
            [stem + "ой", stem_transliterated + "oi"]
          end
        end
      end
    end
  end
end
