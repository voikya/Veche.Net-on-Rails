require_relative 'initial_y'
require_relative 'plural_in_es'

module Morphology
  module Tunisian
    module Nouns
      module Masculine
        module InitialYWithPluralInEs
          include Masculine::InitialY
          include Masculine::PluralInEs

          def subtype
            "Initial Y with Plural in -es"
          end
        end
      end
    end
  end
end
