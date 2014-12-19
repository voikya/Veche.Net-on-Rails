require_relative 'masculine_with_intrusive_j_in_plural'
require_relative 'masculine_with_animate_dative'

module Morphology
  module Novegradian
    module Nouns
      module EStem
        module MasculineWithIntrusiveJInPluralAndAnimateDative
          include EStem::MasculineWithIntrusiveJInPlural
          include EStem::MasculineWithAnimateDative

          def subtype
            "Masculine with Intrusive *-j- in Plural and Animate Dative"
          end
        end
      end
    end
  end
end
